if ds_list_find_index(projectileStatus,'spectral') != -1
    {
    projectileOpacity /= 5
    bulletblend = make_color_rgb(250,250,250)
    }
if ds_list_find_index(projectileStatus,'homing') != -1
    {
    bulletblend = make_color_rgb(127,12,138)
    }
if ds_list_find_index(projectileStatus,'slowing') != -1
    {
    bulletblend = make_color_rgb(196,194,177)
    }
if ds_list_find_index(projectileStatus,'freezing') != -1
    {
    bulletblend = make_color_rgb(72,247,250)
    }
if ds_list_find_index(projectileStatus,'burning') != -1
    {
    bulletblend = make_color_rgb(227,92,2)
    }
if ds_list_find_index(projectileStatus,'gravity') != -1
    {
    bulletblend = make_color_rgb(65,65,65)
    }
if ds_list_find_index(projectileStatus,'iceStorm') != -1
    {
    bulletblend = make_color_rgb(140,245,255)
    }
