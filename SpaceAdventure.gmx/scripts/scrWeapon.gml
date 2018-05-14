/*if(currentWeapon = 'scrapSpitter') {
    createdBullet = instance_create(x, y, objScrapSpitterBullet)
    createdBullet.direction = gunAngle - 5 + random(10)
    createdBullet.speed = 6
    createdBullet.height = 10
    canShoot = false
    alarm[0] = 30
}*/

/*if(currentWeapon = 'faceHunter') {
    laser = instance_create(x, y, objLaser)
    canShoot = false
    alarm[0] = 15
}*/

var ldx = lengthdir_x(15, mouse_x);
var ldy = lengthdir_y(15, mouse_y);
with(instance_create(x+ldx, y+ldy, objScrapSpitterBullet))
{
    phy_bullet = true;
    physics_apply_impulse(x+ldx,y+ldy, (mouse_x - x) * 200,-(y - mouse_y) * 200);
}