///scrAttackState
image_speed = .25;

// Select proper attacking sprite
switch(sprite_index) {
    case sprPlayerDown:
        sprite_index = sprPlayerAttackDown;
        break;
    
    case sprPlayerUp:
        sprite_index = sprPlayerAttackUp;
        break;
        
    case sprPlayerLeft:
        sprite_index = sprPlayerAttackLeft;
        break;
        
    case sprPlayerRight:
        sprite_index = sprPlayerAttackRight;
        break;
    }

// Create damage object
if (image_index >= 3 && !attacked) {
    var xx = 0;
    var yy = 0;
    
    switch(sprite_index) {
        case sprPlayerAttackDown:
            xx = x;
            yy = y + 12;
            break;
        
        case sprPlayerAttackUp:
            xx = x;
            yy = y - 10;
            break;
            
        case sprPlayerAttackLeft:
            xx = x - 10;
            yy = y + 2;
            break;
            
        case sprPlayerAttackRight:
            xx = x + 10;
            yy = y + 2
            break;
        }

    var damage = instance_create(xx, yy, objDamage);
    damage.creator = id;
    damage.damage = objPlayerStats.attack;
    attacked = true;
    }