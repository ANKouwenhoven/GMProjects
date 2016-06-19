scrGetInput();

// Get direction

var dir = point_direction(0, 0, xaxis, yaxis);

// Get length
if (xaxis == 0 && yaxis == 0) {
    length = 0;
    }
else {
    length = movementSpeed;
    }

// Calculate speeds
hSpeed = lengthdir_x(length, dir);
vSpeed = lengthdir_y(length, dir);

// Move in physics
phy_position_x += hSpeed;
phy_position_y += vSpeed;

//Control the sprite
if (length == 0) image_index = 0;

if (vSpeed > 0) {
    sprite_index = sprPlayerDown;
    }
else if (vSpeed < 0) {
    sprite_index = sprPlayerUp;
    }

if (hSpeed > 0) {
    sprite_index = sprPlayerRight;
    }
else if (hSpeed < 0) {
    sprite_index = sprPlayerLeft;
    }
