if(currentWeapon = 'scrapSpitter') {
    createdBullet = instance_create(x, y, objScrapSpitterBullet)
    createdBullet.direction = gunAngle - 5 + random(10)
    createdBullet.speed = 6
    createdBullet.height = 10
    canShoot = false
    alarm[0] = 30
}

if(currentWeapon = 'faceHunter') {
    laser = instance_create(x, y - 10, objLaser)
    canShoot = false
    alarm[0] = 5
}
