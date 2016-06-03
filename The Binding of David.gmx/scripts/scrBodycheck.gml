if bodySlotID != -1
    {
    if bodySlotID == 0
        {
        //Nothing, starting armor
        }
    if bodySlotID == 1
        {
        firingrate += 1.5
        damage -= 1
        }
    if bodySlotID == 2
        {
        //Enemies will burn
        }
    if bodySlotID == 3
        {
        damage += 5
        damage *= 1.3
        firingrate -= 1.5
        //Slow, damaging shots
        }
    }
