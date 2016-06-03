if headSlotID != -1
    {
    if headSlotID == 0
        {
        //Evil Mask - Damage per health missing
        }
    if headSlotID == 1
        {
        //Tiki Mask
        }
    if headSlotID == 2
        {
        //Celestial Mask
        ds_list_add(projectileStatus,'gravity')
        range += 55;
        }
    if headSlotID == 3
        {
        //Meteor Crown
        }
    if headSlotID == 4
        {
        //Icestorm Crown
        ds_list_add(projectileStatus,'iceStorm')
        range += 100;
        bulletblend = make_color_rgb(140,244,255);
        finalrecoil = 0
        }
    if headSlotID == 5
        {
        //Crown of Thorns
        }
    if headSlotID == 6
        {
        //Psychic Headband
        ds_list_add(projectileStatus,'homing')
        shotspeed -= 1;
        }
    if headSlotID == 7
        {
        //Pirate Hat
        if instance_exists(objEnemybase)
            {
            if ds_list_find_index(objEnemybase.dropStatus,'coin') == -1 ds_list_add(objEnemybase.dropStatus,'coin')
            }
        }
    }
