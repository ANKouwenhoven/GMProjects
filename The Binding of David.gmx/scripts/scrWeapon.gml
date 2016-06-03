if mouse_check_button(mb_left){
if canshoot=true{

bulletindex = 0
projectileSprite = sprProjectile
normalindex = bulletindex

finalrecoil = shotspeed/20
projectileType = objProjectile
bulletblend = make_color_rgb(158,73,201);
projectileOpacity = 1
damage = 10;
damageBoost = 1;
firingrate = 3;
firingratedecrease = 1;
shotspeed = 7;
range = 25;
luck = 1;
bulletdirection = point_direction(x,y,mouse_x,mouse_y)
shotsize = 1;
ds_list_destroy(projectileStatus)
projectileStatus = ds_list_create()

scrItems()
scrProjectileColor()

finalrecoil += 0.2*(damage/10)
scrRecoil(finalrecoil/2)

b1=instance_create(x,y,projectileType)
b1.team = team
b1.currentStatus = ds_list_create()
ds_list_copy(b1.currentStatus,projectileStatus)
b1.image_blend = bulletblend
b1.direction = bulletdirection + argument0
shotsize += (0.1*(damage-10))
b1.image_index = shotsize + 1
b1.sprite_index = projectileSprite
b1.image_alpha = projectileOpacity

canshoot=false
finalfiringrate = firingrate / firingratedecrease
alarm[0]=30 / finalfiringrate}}
