scrHeadcheck()
scrNeckcheck()
scrBodycheck()
scrMainhandcheck()
scrOffhandcheck()
scrHandscheck()
scrFeetcheck()
scrCompanioncheck()

scrSoftcap()
finalrecoil += 0.2*(damage/10)
scrRecoil(finalrecoil/2)

b1=instance_create(x,y,projectileType)
b1.team = team
b1.currentStatus = ds_list_create()
ds_list_copy(b1.currentStatus,projectileStatus)
b1.image_blend = bulletblend
b1.direction = bulletdirection + argument0
shotsize += (0.1*(damage-10))
b1.image_index = shotsize + 1
b1.sprite_index = projectileSprite

//GENERALPROJECTILE
