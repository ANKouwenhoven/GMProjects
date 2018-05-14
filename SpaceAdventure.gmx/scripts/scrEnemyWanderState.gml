///scrEnemyWanderState();

scrCheckForPlayer();

var dir = point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(movementSpeed, dir);
var vspd = lengthdir_y(movementSpeed, dir);

image_xscale = sign(hspd);
phy_position_x += hspd;
phy_position_y += vspd;