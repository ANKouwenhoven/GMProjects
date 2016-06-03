var var1, var2, var3
{
//Find a target
if instance_exists(target) == 0
    target = -1
if instance_number(objUnitParent) == 0
    exit
if random(1) < 0.1
    {
    if target == -1
        {
        var1 = 0
        var2 = instance_number(objUnitParent)
        while var1 < var2
            {
            var1 += 1
            var3 = scrNthNearest(x,y,objUnitParent,var1)
            if var3.team != team
                {
                if point_distance(x,y,var3.x,var3.y) > 480
                    break
                else
                    target = var3
                break
                }
            }
        }
    else
        {
        if collision_line(x,y,target.x,target.y,objWall,0,0) > 0
            {
            var1 = 0
            var2 = instance_number(objUnitParent)
            while var1 < var2
                {
                var1 += 1
                var3 = scrNthNearest(x,y,objUnitParent,var1)
                if var3.team != team && collision_line(x,y,var3.x,var3.y,objWall,0,0) < 0
                    {
                    if point_distance(x,y,var3.x,var3.y) > view_wview[0]
                        break
                    else
                        target = var3
                    break
                    }
                }
            }
        }
    }
if target != -1
    {
    //Shoot; replace this code with whatever you need for to create bullets and mayhem and stuff
    //This code uses spd and dir variables within to target so as to lead the target when shooting
    image_angle = (image_angle+(sin(degtorad((point_direction(x,y,target.x+lengthdir_x(target.spd*point_distance(x,y,target.x,target.y)*0.1,target.dir),target.y+lengthdir_y(target.spd*point_distance(x,y,target.x,target.y)*0.1,target.dir)))-image_angle))*12));
    if collision_line(x,y,target.x,target.y,objWall,0,0) <= 0 && alarm[0] == -1 && distance_to_object(objPlayer) < range
        {
        i = instance_create(x,y,objEnemyProjectile);
        i.direction = image_angle-3+random(6);
        i.image_angle = image_angle;
        i.image_blend = make_color_rgb(b1,b2,b3)
        i.speed = shotspeed
        i.damage = damage
        i.speed += -1+random(2);
        i.range = range
        i.team = team;
        i.alarm[0] = shotrange
        if ds_list_find_index(mobStatus,'slowed') != -1
            {
            alarm[0] = 10;
            i.speed /= 2
            }
        else
            {
            alarm[0] = 5;
            }
        }
    //Is target dead?
    if instance_exists(target) == 0
        {
        target = -1
        exit
        }
    //Dodge bullets
    var1 = 0
    var2 = instance_number(objProjectile)
    while var1 < var2
        {
        var1 += 1
        var3 = scrNthNearest(x,y,objProjectile,var1)
        if point_distance(x,y,var3.x,var3.y) > 48
            var1 = var2+1;
        else if var3.team != team
            {
            mp_potential_step_object(x+lengthdir_x(16*sign(scrAngleDifference(point_direction(var3.x,var3.y,x,y),var3.direction)),point_direction(var3.x,var3.y,x,y)+90),y+lengthdir_y(16*sign(scrAngleDifference(point_direction(var3.x,var3.y,x,y),var3.direction)),point_direction(var3.x,var3.y,x,y)+90),finalMoveSpeed,objWall)
            exit;
            }
        }
    if hp >= target.hp/2 || hp > 50
        {
        //Move to the target, and stay within a certain distance whilst maintaining a buffer
        if point_distance(x,y,target.x,target.y) > 128 || collision_line(x,y,target.x,target.y,objWall,0,0) > 0
            mp_potential_step_object(target.x,target.y,finalMoveSpeed,objWall)
        if point_distance(x,y,target.x,target.y) < 64 && collision_line(x,y,target.x,target.y,objWall,0,0) < 0
            mp_potential_step_object(target.x,target.y,-finalMoveSpeed,objWall)
        }
    else
        {
        //Move away from the target, and try and get behind some cover
        var1 = instance_nearest(x,y,objWall)
        var2 = point_direction(target.x,target.y,var1.x+16,var1.y+16)
        mp_potential_step_object(var1.x+lengthdir_x(32,var2),var1.y+lengthdir_y(32,var2),finalMoveSpeed,objWall)
        }
    }
else
    {
    //Search around the world if bored and lonely to find a new target
    mp_potential_step_object(searchx,searchy,finalMoveSpeed,objWall)
    image_angle = (image_angle+(sin(degtorad(point_direction(xprevious,yprevious,x,y)-image_angle))*12))
    if point_distance(x,y,searchx,searchy) < 64 && random(120) < 1
        {
        searchx = random(room_width)
        searchy = random(room_height)
        }
    }
}
