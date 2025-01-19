#pragma once

#include "Module.h"
#include "Player.h"
#include "Bat.h"
#include "Golem.h"
#include "Slash.h"
#include "Boss.h"
#include "Item.h"

struct SDL_Texture;

class Scene : public Module
{
public:

	Scene();

	// Destructor
	virtual ~Scene();

	// Called before render is available
	bool Awake();

	// Called before the first frame
	bool Start();

	// Called before all Updates
	bool PreUpdate();

	// Called each loop iteration
	bool Update(float dt);

	// Called before all Updates
	bool PostUpdate();

	// Called before quitting
	bool CleanUp();

	//Music and FX

	int EnterHallownest;

	Vector2D GetPlayerPosition();

	void LoadState();
	void SaveState();

	bool isAttacking();
	bool isLookingRight();
	void takeDamagePlayer();
	void playerHeal();
	void takePoints();

private:
	SDL_Texture* img;

	Player* player;
	Bat* bat1;
	Bat* bat2;
	Golem* golem1;
	Golem* golem2;
	Slash* slash;
	Boss* boss;
	Item* key;
	
};