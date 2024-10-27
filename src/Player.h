#pragma once

#include "Entity.h"
#include "SDL2/SDL.h"
#include "Box2D/Box2D.h"
#include "Animation.h"

struct SDL_Texture;

class Player : public Entity
{
public:

	Player();
	
	virtual ~Player();

	bool Awake();

	bool Start();

	bool Update(float dt);

	bool CleanUp();

	// L08 TODO 6: Define OnCollision function for the player. 
	void OnCollision(PhysBody* physA, PhysBody* physB);

	void OnCollisionEnd(PhysBody* physA, PhysBody* physB);

	void SetParameters(pugi::xml_node parameters) {
		this->parameters = parameters;
	}

public:

	//Declare player parameters
	float speed = 3.0f;
	SDL_Texture* texture = NULL;
	int texW, texH;

	int lives;
	bool dead;
	bool godMode;

	//Audio fx
	int pickCoinFxId;

	// L08 TODO 5: Add physics to the player - declare a Physics body
	PhysBody* pbody;
	float jumpForce = 1.8; // The force to apply when jumping
	bool isJumping = false; // Flag to check if the player is currently jumping
	bool isDashing = false;

	pugi::xml_node parameters;
	Animation* currentAnimation = nullptr;
	Animation idleRight;
	Animation idleLeft;
	Animation runRight;
	Animation runLeft;
	Animation jumpRight;
	Animation jumpLeft;
	Animation dieRight;
	Animation dieLeft;
	Animation dashRight;
	Animation dashLeft;

	bool isLookingRight;
};