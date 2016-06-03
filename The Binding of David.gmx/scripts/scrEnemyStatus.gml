{
range = backuprange
finalMoveSpeed = moveSpeed
if ds_list_find_index(mobStatus,'slowed') != -1
    {
    finalMoveSpeed = moveSpeed/2
    image_blend = make_color_rgb(125,125,125)
    if random(10) > 9
        {
        instance_create(x,y,objClock)
        }
    if random(60) > 59
        {
        ds_list_delete(mobStatus,'slowed')
        scrRestore()
        }
    }
    
if instance_exists(objBall)
    {
    if ds_list_find_index(targetingStatus,'ballTarget') != -1 && objBall.status = 'circling'
        {
        finalMoveSpeed = 0
        }
    }
if ds_list_find_index(mobStatus,'frozen') != -1
    {
    finalMoveSpeed = 0
    range = 0
    image_blend = make_color_rgb(172,241,250)
    if random(15) > 14
        {
        instance_create(x,y,objIce)
        }
    if random(40) > 39
        {
        ds_list_clear(mobStatus)
        ds_list_copy(mobStatus,backupStatus)
        scrRestore()
        }
    }
    
if ds_list_find_index(mobStatus,'burning') != -1
    {
    image_blend = make_color_rgb(245,133,24)
    if random(5) > 4
        {
        hp -= 1
        image_blend = make_color_rgb(204,31,31)
        alarm[2] = 3
        instance_create(x,y,objFlame)
        }
    if random(50) > 49
        {
        ds_list_delete(mobStatus,'burning')
        scrRestore()
        }
    }
//spd and dir are calculated for the AI; the AI will predict where the target WILL be, and aim there instead
spd = point_distance(xprevious,yprevious,x,y);
dir = point_direction(xprevious,yprevious,x,y);
//Regenerate health or die where necessary
if (hp <= 0)
    {
    repeat (8)
        {
        i = instance_create(x,y,objSmoke);
        i.image_blend = image_blend;
        i.speed = random(8);
        i.direction = random(360);
        i.image_alpha = 0.5+random(0.5);
        i.image_angle = random(360);
        i.image_index = random(image_number);
        i.image_speed = 0.5;
        }
    hp = stdhp;
    i = scrNthNearest(x,y,objSpawner,2);
    x = i.x;
    y = i.y;
    }
//Keep inside the room bounds just in case
if (x > room_width || x < 0 || y > room_height || y < 0)
    {
    x = instance_nearest(x,y,objSpawner).x;
    y = instance_nearest(x,y,objSpawner).y;
    }
ds_list_destroy(targetingStatus)
targetingStatus = ds_list_create()
}
