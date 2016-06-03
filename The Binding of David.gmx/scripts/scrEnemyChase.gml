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
    //Is target dead?
    if instance_exists(target) == 0
        {
        target = -1
        exit
        }
        //Move to the target
        if point_distance(x,y,target.x,target.y) > 18 || collision_line(x,y,target.x,target.y,objWall,0,0) > 0
            mp_potential_step_object(target.x,target.y,finalMoveSpeed,objWall)
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
