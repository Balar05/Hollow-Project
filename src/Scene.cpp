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

#define NUM_FIRES 11

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
	fire2->position = Vector2D(734, 352);

	Fire* fire3 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire3->SetParameters(configParameters.child("entities").child("fire"));
	fire3->position = Vector2D(1216, 576);
	
	Fire* fire4 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire4->SetParameters(configParameters.child("entities").child("fire"));
	fire4->position = Vector2D(896, 736);

	Fire* fire5 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire5->SetParameters(configParameters.child("entities").child("fire"));
	fire5->position = Vector2D(1312, 1216);

	Fire* fire6 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire6->SetParameters(configParameters.child("entities").child("fire"));
	fire6->position = Vector2D(704, 1248);

	Fire* fire7 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire7->SetParameters(configParameters.child("entities").child("fire"));
	fire7->position = Vector2D(800, 1056);

	Fire* fire8 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire8->SetParameters(configParameters.child("entities").child("fire"));
	fire8->position = Vector2D(384, 896);

	Fire* fire9 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire9->SetParameters(configParameters.child("entities").child("fire"));
	fire9->position = Vector2D(1536, 1312);

	Fire* fire10 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire10->SetParameters(configParameters.child("entities").child("fire"));
	fire10->position = Vector2D(2080, 1344);

	Fire* fire11 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire11->SetParameters(configParameters.child("entities").child("fire"));
	fire11->position = Vector2D(2272, 704);

	Fire* fire12 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire12->SetParameters(configParameters.child("entities").child("fire"));
	fire12->position = Vector2D(2528, 1088);

	Fire* fire13 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire13->SetParameters(configParameters.child("entities").child("fire"));
	fire13->position = Vector2D(2656, 1088);

	Fire* fire14 = (Fire*)Engine::GetInstance().entityManager->CreateEntity(EntityType::FIRE);
	fire14->SetParameters(configParameters.child("entities").child("fire"));
	fire14->position = Vector2D(3328, 1184);


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
