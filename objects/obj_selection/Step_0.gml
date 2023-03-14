objects = [obj_select_lion, obj_select_gorilla, obj_select_elephant];
objects_length = array_length(objects);

if(keyboard_check_pressed(vk_right))
{
	selection_index = (selection_index + 1) % objects_length;
}

if(keyboard_check_pressed(vk_left))
{
	selection_index--;
	if(selection_index < 0)
		selection_index = objects_length - 1;
}

for(i = 0; i < objects_length; i++)
{
	if(i != selection_index)
	{
		objects[i].image_speed = 0;
		objects[i].image_index = 0;
	}
	else
	{
		objects[i].image_speed = 1;	
	}
}

if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
{
	global.player_sprite = objects[selection_index].sprite_index;
	room_goto(room_main);
}
