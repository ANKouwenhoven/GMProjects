///scrDashState

if (length == 0) {
    dir = face*90;
}

length = movementSpeed*4;

// Calculate speeds
hSpeed = lengthdir_x(length, dir);
vSpeed = lengthdir_y(length, dir);

// Move in physics
phy_position_x += hSpeed;
phy_position_y += vSpeed;

// Create the Dash effect;
var dash = instance_create(x, y, objDashEffect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;