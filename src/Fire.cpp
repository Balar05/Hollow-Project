#include "Fire.h"
#include "Engine.h"
#include "Textures.h"
#include "Audio.h"
#include "Input.h"
#include "Render.h"
#include "Scene.h"
#include "Log.h"
#include "Physics.h"

Fire::Fire() : Entity(EntityType::FIRE)
{
	name = "fire";
}

Fire::~Fire() {}

bool Fire::Awake() {
	return true;
}

bool Fire::Start() {

	texture = Engine::GetInstance().textures.get()->Load(parameters.attribute("texture").as_string());
	
	texW = parameters.attribute("w").as_int();
	texH = parameters.attribute("h").as_int();

	fire.LoadAnimations(parameters.child("animations").child("fire"));
	currentAnimation = &fire;

	//initilize textures
	

	// L08 TODO 4: Add a physics to an item - initialize the physics body
	//pbody = Engine::GetInstance().physics.get()->CreateRectangle((int)position.getX() + texH / 2, (int)position.getY() + texH / 2, 32, 32, bodyType::STATIC);

	// L08 TODO 7: Assign collider type
	//pbody->ctype = ColliderType::FIRE;

	

	return true;
}

bool Fire::Update(float dt)
{
	// L08 TODO 4: Add a physics to an item - update the position of the object from the physics.  

	//b2Transform pbodyPos = pbody->body->GetTransform();
	//position.setX(METERS_TO_PIXELS(pbodyPos.p.x) - texH / 2);
	//position.setY(METERS_TO_PIXELS(pbodyPos.p.y) - texH / 2);

	Engine::GetInstance().render.get()->DrawTexture(texture, (int)position.getX(), (int)position.getY(), &currentAnimation->GetCurrentFrame());
	currentAnimation->Update();

	return true;
}

bool Fire::CleanUp()
{
	LOG("Cleanup fire");
	Engine::GetInstance().textures.get()->UnLoad(texture);
	return true;
}