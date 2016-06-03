if ds_list_find_index(itemlist,'homing') != -1
    {
    if ds_list_find_index(bulletstatus,'homing') == -1
        {
        ds_list_add(bulletstatus,'homing')
        }
    bulletindex = 2
    }
if ds_list_find_index(itemlist,'gravity') != -1
    {
    if ds_list_find_index(bulletstatus,'gravity') == -1
        {
        ds_list_add(bulletstatus,'gravity')
        }
    }
if ds_list_find_index(itemlist,'piercing') != -1
    {
    if ds_list_find_index(bulletstatus,'piercing') == -1
        {
        ds_list_add(bulletstatus,'piercing')
        }
    bulletindex = 4
    }
if ds_list_find_index(itemlist,'freezing') != -1
    {
    if ds_list_find_index(bulletstatus,'freezing') != -1 {ds_list_delete(bulletstatus,'freezing')}
    if random(10) > 7
        {
        if ds_list_find_index(bulletstatus,'freezing') == -1
            {
            ds_list_add(bulletstatus,'freezing')
            }
        bulletindex = 3
        }   
    }    
