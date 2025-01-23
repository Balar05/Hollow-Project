#include "Potion.h"
#include "Engine.h"
#include "Textures.h"
#include "Audio.h"
#include "Input.h"
#include "Render.h"
#include "Scene.h"
#include "Log.h"
#include "Physics.h"

Potion::Potion() : Entity(EntityType::POTION)
{
	name = "potion";
}

Potion::~Potion() {}

bool Potion::Awake() {
	return true;
}

bool Potion::Start() {

	texture = Engine::GetInstance().textures.get()->Load("Assets/Textures/HealthPotion.png");
	

	texW = parameters.attribute("w").as_int();
	texH = parameters.attribute("h").as_int();

	potion.LoadAnimations(parameters.child("animations").child("potion"));
	currentAnimation = &potion;

	pbody = Engine::GetInstance().physics.get()->CreateCircle((int)position.getX() + texH / 2, (int)position.getY() + texH / 2, texH / 2, bodyType::STATIC);
	pbody->listener = this;

	pbody->ctype = ColliderType::POTION;


	return true;
}

bool Potion::Update(float dt)
{
	if (!isPicked) {
		Engine::GetInstance().render.get()->DrawTexture(texture, (int)position.getX(), (int)position.getY(), &currentAnimation->GetCurrentFrame());
		currentAnimation->Update();
	}
	else {
		pbody->body->SetEnabled(false);
	}

	return true;
}

bool Potion::CleanUp()
{
	LOG("Cleanup fire");
	Engine::GetInstance().textures.get()->UnLoad(texture);
	return true;
}

void Potion::OnCollision(PhysBody* physA, PhysBody* physB) {
	switch (physB->ctype)
	{
	case ColliderType::PLAYER:
		LOG("Collision PLAYER");
		isPicked = true;
		break;
	default:
		break;
	}

}