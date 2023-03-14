// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function HandleJumps() 
{
	if(is_jumping && is_on_ground)
	{
		v_y = -jump_speed;
		
		is_jumping = false;
	}
}