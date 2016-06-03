if item != 'none' and keyboard_check_pressed(vk_space) and itemcharge = 5
    {
    if item = 'gatler'
        {
        itemeffect = 'gatler'
        alarm[0] = 100
        itemcharge = 0
        normalrate = objPlayer.firingrate
        }
    if item = 'cannonball'
        {
        itemeffect = 'cannonball'
        alarm[0] = 100
        itemcharge = 0
        normalindex = bulletindex
        bulletindex=1
        objPlayer.damage += 10
        }
    }
