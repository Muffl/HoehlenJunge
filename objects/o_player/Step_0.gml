/// @description Controlling the player

#region Set up controls for the player
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up);

#endregion

#region State Machine
switch (state)
{
	#region Move State
	case player.moving:
	//Change direction of sprite
	if (xspeed != 0)
	{
		image_xscale = sign(xspeed);
	}
	// Check for moving left or right
	if (right or left)
	{
		xspeed += (right - left) * acceleration;
		//Gibt einen Wert zurück der zwischen einen Minimum und einen Maximum liegt
		xspeed = clamp(xspeed,-max_speed, max_speed);
	}
	else
	{
		apply_friction(acceleration);
		
	}
	move(o_solid);
	
	break;
	#endregion
	
	#region Ledge Garb State
	case player.ledge_grab:
	
	break;
	#endregion
	
	#region door state
	case player.door:
	
	break;
	#endregion
	
	#region Hurt State
	case player.hurt:
	
	break;
	#endregion
	
	#region Death state
	case player.death:
	
	break;
	#endregion
}	
#endregion

