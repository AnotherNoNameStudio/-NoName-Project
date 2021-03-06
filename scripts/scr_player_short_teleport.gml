///scr_player_short_teleport()

//scr_Input();

// start of aiming a point to teleport
if(steleport_pressed)
{
    image_speed = 0;
    image_index = 0;
    if(st_value == 0)
    {
        instance_create(x, y, obj_marker);
    }
}
if(steleport)
{
    scr_Input();
    if(st_value < st_max)
    {
        st_value += (1/room_speed)*50;  // bar will be fullfilled in 2 seconds
        // moving marker in suitable direction
        switch (face)
        {
            case RIGHT:
                with(obj_marker)
                {
                    obj_marker.x += 1;
                }
                break;
                
            case LEFT:
                with(obj_marker)
                {
                    obj_marker.x -= 1;
                }
                break;
                
            case UP:
                with(obj_marker)
                {
                    obj_marker.y -= 1;
                }
                break;
                
            case DOWN:
                with(obj_marker)
                {
                    obj_marker.y += 1;
                }
                break;
        }
    }
}
if(steleport_released)
{
    st_value = 0;
    // check whether there is a space to shift
    with(obj_marker)
    {
        // shift player to position pointed by marker
        if(obj_marker.isCollision == noone)
        {
            obj_player.phy_position_x = x;
            obj_player.phy_position_y = y;
        }
        instance_destroy();
    }
    state = scr_player_move_state;
}