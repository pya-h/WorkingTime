// get current state
UpdateState();// do common functions
GetInput();
ControlMovements();
ManageCollisions();
CheckCharacterIsOnGround();
Animate();
// switch to run special functions for each state
switch(state)
{
	case character_states.STEADY:
		HandleJumps();
		// TODO
		break;
		
	case character_states.RUNNING:
		HandleJumps();
		// TODO
		break;
		
	case character_states.JUMPING:
		// TODO
		break;
}
