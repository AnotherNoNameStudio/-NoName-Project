///scr_player_move_state
// skrypt ze sterowaniem
scr_Input();

if (hide_key && hspd == 0  && vspd == 0 && canHide == true)
{
    visible = false
    state = scr_player_hidden_state;
}

// osie x i y
// klikanie right daje mu wartosc 1. tak samo jest z left. inaczej wartosc jest 0.
// gdy edziemy klikali left to wartosc xaxis bedzie -1 itd.
var xaxis = (right - left);
var yaxis = (down - up);

// ustwianie kierunku
// ta funkcja wybiera kierunek (jak od srodka kola do danego miejsca na okregu)
dir = point_direction(0, 0, xaxis, yaxis);

// ustwaianie dlugosci
if (xaxis == 0 && yaxis == 0)
{
    len = 0;
}
else
{
    len = spd;
}
// ustwanianie predkosci dla osi
// specjalne funkcje w gm do ustwaniania predkosci x i y 
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// test 
//physics_apply_local_force(0, 0, xaxis, yaxis);

phy_position_x += hspd;
phy_position_y += vspd;

// kontrola sprite
// sign zwraca albo 1 albo -1 
image_speed = .3;
if (len == 0)
{
    image_index = 0;
}

scr_get_face();
switch (face)
{
    case RIGHT:
        sprite_index = spr_player_right_concept;
        break;
        
    case LEFT:
        sprite_index = spr_player_left_concept;
        break;
        
    case UP:
        sprite_index = spr_player_up_concept;
        break;
        
    case DOWN:
        sprite_index = spr_player_down_concept;
        break;
}

if torch_key
{
    useTorch =! useTorch
}

