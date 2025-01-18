#include "Item.h"
#include "Engine.h"
#include "Textures.h"
#include "Audio.h"
#include "Input.h"
#include "Render.h"
#include "Scene.h"
#include "Log.h"
#include "Physics.h"

Item::Item() : Entity(EntityType::ITEM)
{
	name = "item";
}

Item::~Item() {}

bool Item::Awake() {
	return true;
}

bool Item::Start() {

	texture = Engine::GetInstance().textures.get()->Load(parameters.attribute("texture").as_string());

	texW = parameters.attribute("w").as_int();
	texH = parameters.attribute("h").as_int();

	key.LoadAnimations(parameters.child("animations").child("key"));
	currentAnimation = &key;

	return true;
}

bool Item::Update(float dt)
{
	Engine::GetInstance().render.get()->DrawTexture(texture, (int)position.getX(), (int)position.getY(), &currentAnimation->GetCurrentFrame());
	currentAnimation->Update();

	return true;
}

bool Item::CleanUp()
{
	LOG("Cleanup fire");
	Engine::GetInstance().textures.get()->UnLoad(texture);
	return true;
}