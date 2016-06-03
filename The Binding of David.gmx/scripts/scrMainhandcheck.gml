if mainhandSlotID != -1
    {
    if mainhandSlotID == 0
        {
        if random(5) > 4
            {
            ds_list_add(projectileStatus,'slowing');
            damage += 3
            }
        //Timewarp shots
        }
    if mainhandSlotID == 1
        {
        if random(5) > 4
            {
            ds_list_add(projectileStatus,'freezing');
            bulletblend = make_color_rgb(72,247,250);
            }
        //Freezing shots
        }
    if mainhandSlotID == 2
        {
        if random(5) > 4
            {
            ds_list_add(projectileStatus,'burning');
            bulletblend = make_color_rgb(227,92,2);
            }
        //Burning shots
        }
    if mainhandSlotID == 3
        {
        firingrate *= 2.5
        damage /= 3
        bulletblend = make_color_rgb(121,148,184)
        bulletdirection += (-5+random(10))
        //Small, fast shots
        }   
    if mainhandSlotID == 4
        {
        ds_list_add(projectileStatus,'rocket')
        projectileType = objRocket
        firingrate /= 2.5
        range *= 1.5
        shotspeed *= 2
        }
    }
