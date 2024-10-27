#include "Engine.h"
#include "Input.h"
#include "Textures.h"
#include "Audio.h"
#include "Render.h"
#include "Window.h"
#include "Scene.h"
#include "Log.h"
#include "Entity.h"
#include "EntityManager.h"
#include "Player.h"
#include "Map.h"
#include "Item.h"
#include "Fire.h"

#define NUM_FIRES 5

Scene::Scene() : Module()
{
	name = "scene";
	img = nullptr;
}

// Destructor
Scene::~Scene()
{}

// Called before render is available
bool Scene::Awake()
{
	LOG("Loading Scene");
	bool ret = true;

	//L04: TODO 3b: Instantiate the player using the entity manager
	player = (Player*)Engine::GetInstance().entityManager->CreateEntity(EntityType::PLAYER);
	player->SetParameters(configParameters.child("entities").child("player"));

	//L08 Create a new item using the entity manager and set the position to (200, 672) to test
	/*Item* item = (Item*) Engine::GetInstance().entityManager->CreateEntity(EntityType::ITEM);
	item->position = Vector2D(200, 672);*/

	Fire* fire1 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire1->SetParameters(configParameters.child("entities").child("fire"));
	fire1->position = Vector2D(192, 640);

	Fire* fire2 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire2->SetParameters(configParameters.child("entities").child("fire"));
	fire2->position = Vector2D(23, 11);
	
	return ret;

}

// Called before the first frame
bool Scene::Start()
{
	//L06 TODO 3: Call the function to load the map. 
	//Engine::GetInstance().map->Load("Assets/Maps/", "Prova.tmx");
	Engine::GetInstance().map->Load(configParameters.child("map").attribute("path").as_string(), configParameters.child("map").attribute("name").as_string());

	Engine::GetInstance().audio.get()->PlayMusic("Assets/Audio/Music/EnterHallownest.ogg", 0);

	//Engine::GetInstance().audio.get()->PlayMusic("Assets/Audio/Music/Dirtmouth.ogg", 2.0f);


	return true;
}

// Called each loop iteration
bool Scene::PreUpdate()
{
	return true;
}

// Called each loop iteration
bool Scene::Update(float dt)
{
	//L03 TODO 3: Make the camera movement independent of framerate
	float camSpeed = 0;

	Engine::GetInstance().render.get()->camera.x =- player->position.getX()*2+450;
	Engine::GetInstance().render.get()->camera.y =- player->position.getY()*2+350;


	/*if (Engine::GetInstance().render.get()->camera.y < -760)
	{
		Engine::GetInstance().render.get()->camera.y = -760;
	}*/

	if (Engine::GetInstance().render.get()->camera.x > 0) {
		Engine::GetInstance().render.get()->camera.x = 0;
	}
	


	
	return true;
}

// Called each loop iteration
bool Scene::PostUpdate()
{
	bool ret = true;

	if(Engine::GetInstance().input.get()->GetKey(SDL_SCANCODE_ESCAPE) == KEY_DOWN)
		ret = false;

	return ret;
}

// Called before quitting
bool Scene::CleanUp()
{
	LOG("Freeing scene");

	SDL_DestroyTexture(img);

	return true;
}
