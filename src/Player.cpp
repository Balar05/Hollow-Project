#include "Player.h"
#include "Engine.h"
#include "Textures.h"
#include "Audio.h"
#include "Input.h"
#include "Render.h"
#include "Scene.h"
#include "Log.h"
#include "Physics.h"

//			<Fire x="100" y="736" w="32" h ="32" texture="Assets/Textures/Fire.png">

Player::Player() : Entity(EntityType::PLAYER)
{
	name = "Player";
}

Player::~Player() {

}

bool Player::Awake() {

	//L03: TODO 2: Initialize Player parameters
	position = Vector2D(0, 0);
	return true;
}

bool Player::Start() {

	texture = Engine::GetInstance().textures.get()->Load(parameters.attribute("texture").as_string());
	position.setX(parameters.attribute("x").as_int());
	position.setY(parameters.attribute("y").as_int());
	texW = parameters.attribute("w").as_int();
	texH = parameters.attribute("h").as_int();
	lives = 5;
	dead = false;
	godMode = false;

	//Load animations
	idleRight.LoadAnimations(parameters.child("animations").child("idleRight"));
	idleLeft.LoadAnimations(parameters.child("animations").child("idleLeft"));
	runRight.LoadAnimations(parameters.child("animations").child("runRight"));
	runLeft.LoadAnimations(parameters.child("animations").child("runLeft"));
	jumpRight.LoadAnimations(parameters.child("animations").child("jumpRight"));
	jumpLeft.LoadAnimations(parameters.child("animations").child("jumpLeft"));
	dieRight.LoadAnimations(parameters.child("animations").child("dieRight"));
	dieLeft.LoadAnimations(parameters.child("animations").child("dieLeft"));
	dashRight.LoadAnimations(parameters.child("animations").child("dashRight"));
	dashLeft.LoadAnimations(parameters.child("animations").child("dashLeft"));
	currentAnimation = &idleRight;
	isLookingRight = true;

	// L08 TODO 5: Add physics to the player - initialize physics body
	pbody = Engine::GetInstance().physics.get()->CreateCircle((int)position.getX(), (int)position.getY(), texW / 2, bodyType::DYNAMIC);
	
	// L08 TODO 6: Assign player class (using "this") to the listener of the pbody. This makes the Physics module to call the OnCollision method
	pbody->listener = this;

	// L08 TODO 7: Assign collider type
	pbody->ctype = ColliderType::PLAYER;

	return true;
}

bool Player::Update(float dt)
{
	// L08 TODO 5: Add physics to the player - updated player position using physics
	b2Vec2 velocity;

	if (godMode) {
		lives = 5;
		dead = false;
		isJumping = false; 

		pbody->body->SetGravityScale(0);
		velocity = b2Vec2(0, 0);

		if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_W) == KEY_REPEAT) {
			velocity.y = -0.2 * 16;
		}
		if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_S) == KEY_REPEAT) {
			velocity.y = 0.2 * 16;
		}
	}
	else {
		pbody->body->SetGravityScale(1);
		velocity = b2Vec2(0, pbody->body->GetLinearVelocity().y);
	}

	// Move left
	if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_A) == KEY_REPEAT) {
		if (dead) {
			velocity.x = 0;

		}
		else {
			velocity.x = -0.2 * 16;
			currentAnimation = &runLeft;
			isLookingRight = false;
		}
	}

	// Move right
	if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_D) == KEY_REPEAT) {
		if (dead) {
			velocity.x = 0;

		}
		else {
			velocity.x = 0.2 * 16;
			currentAnimation = &runRight;
			isLookingRight = true;
		}

	}


	if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_F) == KEY_DOWN) {
		isDashing = true;
		dashTimer = dashDuration;
	}

	if (isDashing) {
		dashTimer -= 0.16;
		if (dashTimer <= 0) {
			isDashing = false;
		}
		if (isLookingRight && isDashing) {
			velocity.x = 0.4 * 16;
			currentAnimation = &dashRight;
		}
		else {
			velocity.x = -0.4 * 16;
			currentAnimation = &dashLeft;
		}
	}

	
	//Jump
	if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_SPACE) == KEY_DOWN && isJumping == false) {
		// Apply an initial upward force
		pbody->body->ApplyLinearImpulseToCenter(b2Vec2(0, -jumpForce), true);

		isJumping = true;
	}

	// If the player is jumpling, we don't want to apply gravity, we use the current velocity prduced by the jump
	if(isJumping == true)
	{
		if (dead) {
			velocity.x = 0;
			velocity.y = 0;
		}
		else {
			velocity.y = pbody->body->GetLinearVelocity().y;
			if (isLookingRight) {
				if (isDashing) {
					currentAnimation = &dashRight;
				}
				else {
					currentAnimation = &jumpRight;
				}
			}
			else {
				if (isDashing) {
					currentAnimation = &dashLeft;
				}
				else {
					currentAnimation = &jumpLeft;
				}
			}
		}
	}

	if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_F1) == KEY_DOWN) {
		lives = lives - 1;
		if (lives <= 0)
		{
			lives = 0;
			dead = true;
		}
		if (lives > 0) {
			dead = false;
		}
		if (lives >= 5) {
			lives = 5;
		}
	}

	if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_F2) == KEY_DOWN) {
		lives = lives + 1;
		if (lives <= 0)
		{
			lives = 0;
			dead = true;
		}
		if (lives > 0) {
			dead = false;
		}
		if (lives >= 5) {
			lives = 5;
		}
	}

	if (Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_F10) == KEY_DOWN) {
		godMode = !godMode;
	}

	// Apply the velocity to the player
	pbody->body->SetLinearVelocity(velocity);

	b2Transform pbodyPos = pbody->body->GetTransform();
	position.setX(METERS_TO_PIXELS(pbodyPos.p.x) - texH / 2);
	position.setY(METERS_TO_PIXELS(pbodyPos.p.y) - texH / 2);

	Engine::GetInstance().render.get()->DrawTexture(texture, (int)position.getX(), (int)position.getY(), &currentAnimation->GetCurrentFrame());
	currentAnimation->Update();
	if (isLookingRight) {
		if (dead == true) {
			currentAnimation = &dieRight;
		}
		else {
			currentAnimation = &idleRight;
		}
	}
	else {
		if (dead == true) {
			currentAnimation = &dieLeft;
		}
		else {
			currentAnimation = &idleLeft;
		}
	}

	//LOG("X: %f, Y = %f", position.getX(), position.getY());
return true;
}

bool Player::CleanUp()
{
	LOG("Cleanup player");
	Engine::GetInstance().textures.get()->UnLoad(texture);
	return true;
}

// L08 TODO 6: Define OnCollision function for the player. 
void Player::OnCollision(PhysBody* physA, PhysBody* physB) {
	switch (physB->ctype)
	{
	case ColliderType::PLATFORM:
		LOG("Collision PLATFORM");
		//reset the jump flag when touching the ground
		//isJumping = false;
		break;
	case ColliderType::ITEM:
		LOG("Collision ITEM");
		break;
	case ColliderType::UNKNOWN:
		LOG("Collision UNKNOWN");
		break;
	case ColliderType::GROUND:
		LOG("Collision GROUND");
		isJumping = false;
	case ColliderType::SPIKES:
		LOG("Collision SPIKES");
		lives--;
	default:
		break;
	}
	
}

void Player::OnCollisionEnd(PhysBody* physA, PhysBody* physB)
{
	switch (physB->ctype)
	{
	case ColliderType::PLATFORM:
		LOG("End Collision PLATFORM");
		break;
	case ColliderType::ITEM:
		LOG("End Collision ITEM");
		break;
	case ColliderType::UNKNOWN:
		LOG("End Collision UNKNOWN");
		break;
	default:
		break;
	}
}

void Player::takeDamage() {
	lives--;
	if (lives <= 0) {
		dead = true;
		pbody->body->SetLinearVelocity(b2Vec2(0, 0));
		if (isLookingRight) {
			currentAnimation = &dieRight;
		}
	}
	else {
		currentAnimation = &dieLeft;
	}
}