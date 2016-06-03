if place_meeting(x,y,objPlayer)
{
//objPlayer.homing = true
objPlayer.rangeup += 10
instance_destroy()
ds_list_add(objPlayer.itemlist,'homing')
}

if place_meeting(x,y,objPlayer)
{
with(objController) scrCleanse()
objController.item = 'gatler'
objController.itemcharge = 5
objPlayer.recoilamplifier -= 0.3
instance_destroy()
objController.collecteditems += "The Gatler, "
}

if place_meeting(x,y,objPlayer)
{
ds_list_add(objPlayer.itemlist,'piercing')
instance_destroy()
}

if place_meeting(x,y,objPlayer)
{
objPlayer.rangeup += 2000
instance_destroy()
objController.collecteditems += "Range Up, "
}

if place_meeting(x,y,objPlayer)
{
objPlayer.bulletspeed += 5
objPlayer.rangeup -=1
objPlayer.recoilamplifier += 0.2
instance_destroy()
}

if place_meeting(x,y,objPlayer)
{
objPlayer.speedup += 5
instance_destroy()
objController.collecteditems += "Speed Up, "
}

if place_meeting(x,y,objPlayer)
{
objPlayer.triple = true
if objPlayer.quad = false
{
objPlayer.firingratedecrease += 1
}
else{
objPlayer.firingratedecrease += 0.2
}
objPlayer.recoilamplifier += 0.3
instance_destroy()
objController.collecteditems += "Triple Shot, "
}

if place_meeting(x,y,objPlayer)
{
objPlayer.quad = true
if objPlayer.triple = false
{
objPlayer.firingratedecrease += 1
}
else{
objPlayer.firingratedecrease += 0.2
}
objPlayer.recoilamplifier += 0.4
instance_destroy()
objController.collecteditems += "Quad Shot, "
}

if place_meeting(x,y,objPlayer)
{
objPlayer.loki = true
instance_destroy()
objController.collecteditems += "4-Way, "
}

if place_meeting(x,y,objPlayer)
{
objPlayer.weaponSlot = 'gravityWand'
objPlayer.rangeup += 55
instance_destroy()
}

if place_meeting(x,y,objPlayer)
{
instance_destroy()
ds_list_add(objPlayer.itemlist,'freezing')
}

if place_meeting(x,y,objPlayer)
{
objPlayer.splitshot = true
instance_destroy()
objController.collecteditems += "Split Shot, "
}
