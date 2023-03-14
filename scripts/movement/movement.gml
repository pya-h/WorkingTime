function ControlMovements() 
{
	v_x *= drag_coef;
	if(abs(v_x) <= 0.3)
		v_x = 0;
	v_y += global.gravity_coef;
}