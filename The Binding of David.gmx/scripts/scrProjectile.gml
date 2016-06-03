if ds_list_find_index(objGeneralProjectile.currentStatus,'homing') != -1
    {
    if not instance_exists(target){
    target = noone;    
    }
    if instance_exists(objEnemybase)
    {
        target = instance_nearest(x,y,objEnemybase)
        if point_distance(x,y,target.x,target.y) > 70
        {
            target = noone;
        }    
        if instance_exists(target)
        {
        homingincrease += 0.1
        motion_add(point_direction(x,y,target.x,target.y), 0.4*homingincrease*(objPlayer.shotspeed));
        if speed>objPlayer.shotspeed{ speed=objPlayer.shotspeed;}
        image_angle = point_direction(x,y,target.x,target.y);}
        }
        
}

if ds_list_find_index(objGeneralProjectile.currentStatus,'gravity') != -1 && target == noone
    {
    motion_add(point_direction(x,y,objPlayer.x,objPlayer.y), 0.5*(objPlayer.shotspeed/20));
    if speed>objPlayer.shotspeed{ speed=objPlayer.shotspeed;}
    image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
    }
    
if ds_list_find_index(objProjectile.currentStatus,'iceStorm') != -1 && target == noone
    {
    dir_now := point_direction(objPlayer.x,objPlayer.y,x,y);
    dir_new := (dir_now + sqrt((60-orbitRange)) + 360)mod(360);
    x := lengthdir_x(orbitRange,dir_new) + objPlayer.x;
    y := lengthdir_y(orbitRange,dir_new) + objPlayer.y;
    }
