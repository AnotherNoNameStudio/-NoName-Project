///scr_PlayerMovement()
var playerSpeed = obj_player.spd;

// skrypt ze sterowaniem
scr_Input()

if((right || left) && (up || down))
{
    //poruszanie sie na skosy
    if(right && up)
    {
        physics_apply_local_force(0, 0, playerSpeed, -playerSpeed);
        //szybsze wychamowanie po zmianie zwrotu i kierunku
        if(phy_speed_y > 0)
        {
            phy_speed_y -= 1;
        }
        if(phy_speed_x < 0)
        {
            phy_speed_x += .5;
        }
    }
    else if(right && down)
    {
        physics_apply_local_force(0, 0, playerSpeed, playerSpeed);
        //szybsze wychamowanie po zmianie zwrotu i kierunku
        if(phy_speed_y < 0)
        {
            phy_speed_y += 1;
        }
        if(phy_speed_x < 0)
        {
            phy_speed_x += .5;
        }
    }
    else if(left && down)
    {
        physics_apply_local_force(0, 0, -playerSpeed, playerSpeed);
        //szybsze wychamowanie po zmianie zwrotu i kierunku
        if(phy_speed_y < 0)
        {
            phy_speed_y += 1;
        }
        if(phy_speed_x > 0)
        {
            phy_speed_x -= .5;
        }
    }
    else if(left && up)
    {
        physics_apply_local_force(0, 0, -playerSpeed, -playerSpeed);
        //szybsze wychamowanie po zmianie zwrotu i kierunku
        if(phy_speed_y > 0)
        {
            phy_speed_y -= 1;
        }
        if(phy_speed_x > 0)
        {
            phy_speed_x -= .5;
        }
    }
}
else if(left || right)
{
    //poruszanie sie horyzontalnie
    if(left)
    {
        //szybsze wychamowanie po zmianie zwrotu
        if(phy_speed_x > 0)
        {
            phy_speed_x -= .5;
        }
        physics_apply_local_force(0, 0, -playerSpeed, 0);
    }
    else if(right)
    {
        //szybsze wychamowanie po zmianie zwrotu
        if(phy_speed_x < 0)
        {
            phy_speed_x += .5;
        }
        physics_apply_local_force(0, 0, playerSpeed, 0);
    }
    //redukowanie predkosci wertykalnej po zmianie kierunku
    if(phy_speed_y != 0)
    {
        phy_speed_y *= .9;
        if(phy_speed_y > -2 && phy_speed_y < 2)
        {
            phy_speed_y = 0;
        }
    }
}
else if(up || down)
{
    //poruszanie sie wertykalnie
    if(up)
    {
        //szybsze wychamowanie po zmianie zwrotu
        if(phy_speed_y > 0)
        {
            phy_speed_y -= .5;
        }
        physics_apply_local_force(0, 0, 0, -playerSpeed);
    }
    else if(down)
    {
        //szybsze wychamowanie po zmianie zwrotu
        if(phy_speed_y < 0)
        {
            phy_speed_y += .5;
        }
        physics_apply_local_force(0, 0, 0, playerSpeed);
    }
    //redukowanie predkosci horyzontalnej po zmianie kierunku
    if(phy_speed_x != 0)
    {
        phy_speed_x *= .9;
        if(phy_speed_x > -2 && phy_speed_x < 2)
        {
            phy_speed_x = 0;
        }
    }
}
else
{
    //redukowanie predkosci horyzontalnej i wertykalnej po zmianie ruchu
    phy_speed_x *= .9;
    if(phy_speed_x > -1 && phy_speed_x < 1)
    {
        phy_speed_x = 0;
    }
    phy_speed_y *= .9;
    if(phy_speed_y > -1 && phy_speed_y < 1)
    {
        phy_speed_y = 0;
    }
}

//maksymalna predkosc
if(phy_speed_x > playerSpeed)
{
    phy_speed_x = playerSpeed;
}
if(phy_speed_x < -playerSpeed)
{
    phy_speed_x = -playerSpeed;
}
if(phy_speed_y > playerSpeed)
{
    phy_speed_y = playerSpeed;
}
if(phy_speed_y < -playerSpeed)
{
    phy_speed_y = -playerSpeed;
}

// niedlugo przedstawie troche inne rozwiazanie. 

// strerowanie sprite

// tzreba jeszcze ustawic jaka animacja gdy porusza sie po skosie
// do tego jest takie cos jak 'dir' -> ale musze sie tego jeszcze douczyc

if (up)
{
    sprite_index = spr_player_up_concept
    // predkosc powinna sie zmieniac wraz z przyspieszaiem ale zaimplementujemy to pozniej. potrzebna jest tez jakas animacja hamowania
    image_speed = .2
}
if (down)
{
    sprite_index = spr_player_down_concept
    image_speed = .2
}
if (left)
{
    sprite_index = spr_player_left_concept
    image_speed  = .2
}
if (right)
{
    sprite_index = spr_player_right_concept
    image_speed = .2
}

// zatrzymanie animacji
if (!down && !up && !right && !left && phy_speed == 0)
{
    image_speed = 0;
    
    // gdy postac sie zatrzyma bedzie w latce animacji gdzie postac sie nie rudsza
    image_index = 0;
    
}








