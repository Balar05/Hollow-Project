#include "Golem.h"
#include "Engine.h"
#include "Textures.h"
#include "Audio.h"
#include "Input.h"
#include "Render.h"
#include "Scene.h"
#include "Log.h"
#include "Physics.h"
#include "Map.h"

Golem::Golem() : Entity(EntityType::GOLEM)
{

}

Golem::~Golem() {
	delete pathfinding;
}

bool Golem::Awake() {
	return true;
}

bool Golem::Start() {

	//state = PATROL;
	//initilize textures
	texture = Engine::GetInstance().textures.get()->Load(parameters.attribute("texture").as_string());
	position.setX(parameters.attribute("x").as_int());
	position.setY(parameters.attribute("y").as_int());
	texW = parameters.attribute("w").as_int();
	texH = parameters.attribute("h").as_int();

	//Load animations
	idleRight.LoadAnimations(parameters.child("animations").child("idleRight"));
	currentAnimation = &idleRight;

	//Add a physics to an item - initialize the physics body
	pbody = Engine::GetInstance().physics.get()->CreateCircle((int)position.getX() + texH / 2, (int)position.getY() + texH / 2, texH / 4, bodyType::DYNAMIC);

	//Assign collider type
	pbody->ctype = ColliderType::ENEMY;

	// Set the gravity of the body
	if (!parameters.attribute("gravity").as_bool()) pbody->body->SetGravityScale(0);

	// Initialize pathfinding
	pathfinding = new Pathfinding();
	ResetPath();

	return true;
}

bool Golem::Update(float dt)
{

	Vector2D playerPos = Engine::GetInstance().scene.get()->GetPlayerPosition();

	Vector2D enemyPos = GetPosition();

	distanceVec = enemyPos - playerPos;
	distance = distanceVec.magnitude();
	LOG("Distancia: %f", distance);

	if (PIXEL_TO_METERS(distance) <= 5) {
		Chase();
	}
	else
	{
		Patrol();
	}

	//LOG("Enemy position: %f, %f", position.getX(), position.getY());

	// saber en que posision esta el enemigo y pintar la textura
	b2Transform pbodyPos = pbody->body->GetTransform();
	position.setX(METERS_TO_PIXELS(pbodyPos.p.x) - texH / 2);
	position.setY(METERS_TO_PIXELS(pbodyPos.p.y) - texH / 2);

	Engine::GetInstance().render.get()->DrawTexture(texture, (int)position.getX(), (int)position.getY(), &currentAnimation->GetCurrentFrame());
	currentAnimation->Update();

	// Draw pathfinding
	debug = Engine::GetInstance().physics.get()->returnDebug();
	if (debug) {
		pathfinding->DrawPath();
	}



	return true;
}

bool Golem::CleanUp()
{
	return true;
}

void Golem::SetPosition(Vector2D pos) {
	pos.setX(pos.getX() + texW / 2);
	pos.setY(pos.getY() + texH / 2);
	b2Vec2 bodyPos = b2Vec2(PIXEL_TO_METERS(pos.getX()), PIXEL_TO_METERS(pos.getY()));
	pbody->body->SetTransform(bodyPos, 0);
}

Vector2D Golem::GetPosition() {
	b2Vec2 bodyPos = pbody->body->GetTransform().p;
	Vector2D pos = Vector2D(METERS_TO_PIXELS(bodyPos.x), METERS_TO_PIXELS(bodyPos.y));
	return pos;
}

void Golem::ResetPath() {
	Vector2D pos = GetPosition();
	Vector2D tilePos = Engine::GetInstance().map.get()->WorldToMap(pos.getX(), pos.getY());
	pathfinding->ResetPath(tilePos);
}

void Golem::Chase() {

	state = CHASE;
	ResetPath();
	// propgara hasta encontrar el player
	while (pathfinding->pathTiles.empty()) {
		pathfinding->PropagateAStar(SQUARED);
	}

	if (pathfinding != nullptr && !pathfinding->pathTiles.empty()) {

		int posIndex = 0;
		Vector2D nextPosEnemy;


		for (const auto& enemyPos : pathfinding->pathTiles) {
			posIndex++;
			if (posIndex == pathfinding->pathTiles.size() - 1) {
				nextPosEnemy = enemyPos;
				break;
			}
		}



		Vector2D nextPosEnemyPixels = Engine::GetInstance().map.get()->MapToWorldCenter(nextPosEnemy.getX(), nextPosEnemy.getY());

		Vector2D enemyWorldPos = { (float)METERS_TO_PIXELS(pbody->body->GetPosition().x) , (float)METERS_TO_PIXELS(pbody->body->GetPosition().y) };

		Vector2D direction = { nextPosEnemyPixels.getX() - enemyWorldPos.getX(), nextPosEnemyPixels.getY() - enemyWorldPos.getY() };

		float distance = direction.magnitude();

		pbody->body->SetLinearVelocity({ direction.normalized().getX(), direction.normalized().getY() });
	}

}

void Golem::Patrol() {
	state = PATROL;
	pbody->body->SetLinearVelocity({ 0,0 });
	LOG("Patrol");
}