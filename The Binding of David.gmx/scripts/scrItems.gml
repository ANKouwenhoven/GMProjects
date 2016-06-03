if ds_list_find_index(collectedItems,'Vial of Ectoplasm') != -1
    {
    shotspeed /= 2
    range *= 1.5
    ds_list_add(projectileStatus,'spectral')
    //Ghostly shots
    }
if ds_list_find_index(collectedItems,'Desperate Power') != -1
    {
    damage *= 2
    damage -= hp*0.1
    }
if ds_list_find_index(collectedItems,'Ascension') != -1
    {
    
    //Divine shots
    }
if ds_list_find_index(collectedItems,'Demonic Contract') != -1
    {
    damage += 2
    firingrate += 0.8
    }
if ds_list_find_index(collectedItems,'Mysterious Clockwork') != -1
    {
    if random(5) > 4
        {
        ds_list_add(projectileStatus,'slowing');
        damage += 3
        }
    //Timewarp shots
    }
if ds_list_find_index(collectedItems,'Shady Mushroom') != -1
    {
    scrTearEffects()
    ds_list_shuffle(tearEffects)
    ds_list_add(projectileStatus,ds_list_find_value(tearEffects,0))
    //Random shots
    }
if ds_list_find_index(collectedItems,'Telekinesis') != -1
    {
    ds_list_add(projectileStatus,'homing')
    }
if ds_list_find_index(collectedItems,'Shard of Ice') != -1
    {
    if random(5)>4{
    ds_list_add(projectileStatus,'freezing')}
    }
if ds_list_find_index(collectedItems,'Burning Gaze') != -1
    {
    if random(5)>4{
    ds_list_add(projectileStatus,'burning')}
    }
if ds_list_find_index(collectedItems,'The Red Potion') != -1
    {
    damage += 5
    }
if ds_list_find_index(collectedItems,'The Blue Potion') != -1
    {
    firingrate += 1
    }
if ds_list_find_index(collectedItems,'The Green Potion') != -1
    {
    range += 10
    }
