/// scrMovement

scrGetInput();

if (dashKey && objPlayerStats.stamina >= 5) {
    state = scrDashState;
    alarm[1] = room_speed/8;
    objPlayerStats.stamina -= 5;
    objPlayerStats.alarm[0] = room_speed;
    }
    
if (attackKey) {
    image_index = 0;
    state = scrAttackState;
    }

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 && yaxis == 0) {
    length = 0;
    }
else {
    length = movementSpeed;
    scrGetFace();
    }

// Calculate speeds
hSpeed = lengthdir_x(length, dir);
vSpeed = lengthdir_y(length, dir);

// Move in physics
phy_position_x += hSpeed;
phy_position_y += vSpeed;

//Control the sprite
if (length == 0) image_index = 0;

switch(face) {

    case RIGHT:
        sprite_index = sprPlayerRight;
        break;
    
    case LEFT:
        sprite_index = sprPlayerLeft;
        break;
    
    case UP:
        sprite_index = sprPlayerUp;
        break;
    
    case DOWN:
        sprite_index = sprPlayerDown;
        break;
}