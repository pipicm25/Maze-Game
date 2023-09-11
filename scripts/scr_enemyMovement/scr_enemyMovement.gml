function EnemyMovement() {
	if (image_xscale >= 0) { // Facing right
		if (WillHitBrick(x+(spd*5), y)) { // If next frame the enemy will touch a wall
			// NOTE: spd is multiplied by 5 to make the flipping look smoother.
			image_xscale *= -1; // Flip the enemy around
			x -= spd;
		} else { // Move normally
			x += spd;
		}
	} else if (image_xscale <= 0) { // Facing left
		if (WillHitBrick(x-(spd*5), y)) { // If next frame the enemy will hit a wall 
			image_xscale *= -1; // Flip enemy
			x += spd;
		} else { // Move normally
			x -= spd;
		}
	}
}

function WillHitBrick(x, y) {
	return position_meeting(x, y, obj_brick);	
}

function GenerateRandomDirection() {
	return irandom_range(-32, 32);
}