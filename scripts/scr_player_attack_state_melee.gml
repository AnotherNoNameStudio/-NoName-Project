///scr_attack_state

// trzeba tu podmienic na animacje ataku
switch (sprite_index)
{
    case spr_player_down:
        sprite_index = spr_player_attack_down; 
        break;
        
    case spr_player_up:
        sprite_index = spr_player_up; 
        break;
        
    case spr_player_left:
        sprite_index = spr_player_attack_left; 
        break;
        
    case spr_player_right:
        sprite_index = spr_player_attack_right; 
        break;
}

// wybor klatki podczas ktorej powstanie obj_damage
if (image_index >= 4 && attacked == false)
{
    image_speed = .4
    var xx = 0;
    var yy = 0;

    switch (sprite_index)
    { // tu powinny byc spritez atakiem
    
        case spr_player_attack_down:
            xx = x;
            yy = y + 16;
            break;
            
        case spr_player_up:
           xx = x;
           yy = y - 16;
            break;
            
        case spr_player_attack_left:
            xx = x - 16;
            yy = y + 4;
            break;
            
        case spr_player_attack_right:
            xx = x + 16;
            yy = y + 4;
            break;
    }
    var damage = instance_create(xx, yy, obj_damage);
    
    damage.creator = id;
    attacked = true;
}
