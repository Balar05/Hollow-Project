#pragma once

#include "Entity.h"
#include "SDL2/SDL.h"
#include "Box2D/Box2D.h"
#include "Animation.h"

struct SDL_Texture;

class Fire : public Entity
{
public:

	Fire();
	virtual ~Fire();

	bool Awake();

	bool Start();

	bool Update(float dt);

	bool CleanUp();
	
	void SetParameters(pugi::xml_node parameters) {
		this->parameters = parameters;
	}

public:

	//bool isPicked = false;
	pugi::xml_node parameters;

	Animation* currentAnimation = nullptr;
	Animation fire;

	SDL_Texture* texture = NULL;
	int texW, texH;

	//L08 TODO 4: Add a physics to an item
	PhysBody* pbody;
};