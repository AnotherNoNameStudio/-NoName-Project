///scr_PlayerMovement(playerSpeed)
var playerSpeed = argument0;
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

if(left || right)
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