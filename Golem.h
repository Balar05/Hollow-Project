#pragma once

#include "Entity.h"
#include "SDL2/SDL.h"
#include "Animation.h"
#include "Pathfinding.h"

struct SDL_Texture;

enum State {
	CHASE,
	PATROL,
	DEAD
};

class Golem : public Entity
{
public:

	Golem();
	virtual ~Golem();

	bool Awake();

	bool Start();

	bool Update(float dt);

	bool CleanUp();

	void SetParameters(pugi::xml_node parameters) {
		this->parameters = parameters;
	}

	void SetPosition(Vector2D pos);

	Vector2D GetPosition();

	void ResetPath();

	Vector2D distanceVec;

	float distance;

	void Chase();

	void Patrol();

	State state;

	bool debug;

public:

private:

	SDL_Texture* texture;
	const char* texturePath;
	int texW, texH;
	pugi::xml_node parameters;
	Animation* currentAnimation = nullptr;
	Animation idleRight;
	PhysBody* pbody;
	Pathfinding* pathfinding;
};