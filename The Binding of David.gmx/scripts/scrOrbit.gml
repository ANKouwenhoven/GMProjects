if not instance_exists(objEnemybase)
    {
    target = objPlayer
    }
    
else target = instance_nearest(x,y,objEnemybase)
    
if instance_exists(target)
    {
    if distance_to_object(target) > orbitRange - (sprite_width) + 5
        {
        mp_potential_step(target.x,target.y,orbitSpeed,false)
        image_angle = direction
        status = 'traveling'
        }
    else
        {
        status = 'circling'
        dir_now := point_direction(target.x,target.y,x,y);
        dir_new := (dir_now + orbitSpeed + 360)mod(360);
        image_angle = dir_now + 90
        x := lengthdir_x(orbitRange,dir_new) + target.x;
        y := lengthdir_y(orbitRange,dir_new) + target.y;
        }
    }
