// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpdateState(){
	state = is_on_ground
				? (v_x != 0 ? character_states.RUNNING : character_states.STEADY)
				: character_states.JUMPING;
}