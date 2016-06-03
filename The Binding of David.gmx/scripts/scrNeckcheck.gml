if neckSlotID != -1
    {
    if neckSlotID == 0
        {
        //Nothing, starting pendant
        }
    if neckSlotID == 1
        {
        shotspeed -= 0.5;
        firingrate += 0.8;
        luck += 2
        }
    if neckSlotID == 2
        {
        if random(5) > 4
            {
            damage *= 2
            bulletblend = make_color_rgb(59,47,13)
            }
        //Double damage shots
        }
    if neckSlotID == 3
        {
        firingrate += 0.5
        damage += 2
        range -= 10
        }    
    }
