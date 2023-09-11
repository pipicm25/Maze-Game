if (hp <= 0) {
	instance_change(obj_enemy_death, true);	
}

timer += 1;
if (timer >= 120) {
	target_x = x + GenerateRandomDirection();
	target_y = y + GenerateRandomDirection();
	if (!WillHitBrick(target_x, target_y) && point_distance(x, y, target_x, target_y) < 150) { // randomly generated location will NOT hit a brick
		x = target_x;
		y = target_y; 
		timer = 0;
	}	
}