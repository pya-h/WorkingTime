function Animate() 
{
	// update facing
	if(v_x != 0) // ths is preventing to switch sprite facing on wall collision (vx -> 0)
		facing = v_x > 0 ? 1 : -1;
		
	switch(state)
	{
		case character_states.RUNNING:
			image_speed = v_y == 0 ? abs(v_x / 2) : 0;
			break;
			
		case character_states.STEADY:
			image_index = 0;
			image_speed = 0;
			break;
			
		case character_states.JUMPING:
			image_index = 4;
			image_speed = 0;
			break;
	}
}
