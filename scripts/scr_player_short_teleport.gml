///scr_player_short_teleport(teleport, teleport_x, teleport_y)

scr_Input();

// start of aiming a point to teleport
if(steleport_pressed)
{
    if(st_value == 0)
    {
        instance_create(x, y + sprite_height/2, obj_marker);
    }
}
if(steleport)
{
    if(st_value < st_max)
    {
        st_value += (1/room_speed)*50;  // bar will be fullfilled in 2 seconds
        // moving marker in suitable direction
        switch (last_face)
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
var inst;
if(steleport_released)
{
    st_value = 0;
    // check whether there is a space to shift
    inst = collision_rectangle(x, y - sprite_height, x + sprite_width, y, obj_solid, false, true);
    with(obj_marker)
    {
        // shift player to position pointed by marker
        if(inst == noone)
        {
            obj_player.x = x;
            obj_player.y = y;
        }
        instance_destroy();
    }
}
