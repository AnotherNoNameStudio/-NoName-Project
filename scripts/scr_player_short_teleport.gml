///scr_player_short_teleport()
scr_Input();

if(steleport)
{
    if(st_value == 0)
    {
        instance_create(x, y, obj_marker);
    }
    if(st_value < st_max)
    {
        st_value += (1/room_speed)*50;  // bar will be fullfilled in 2 seconds
        // moving marker in suitable direction
        scr_get_face()
        if(face == 0) // up
        {
            with(obj_marker)
            {
                obj_marker.y -= 1;
            }
        }
        else if(face == 1) // right
        {
            with(obj_marker)
            {
                obj_marker.x += 1;
            }
        }
        else if(face == 2) // down
        {
            with(obj_marker)
            {
                obj_marker.y += 1;
            }
        }
        else if(face == 3) // left
        {
            with(obj_marker)
            {
                obj_marker.x -= 1;
            }
        }
    }
}
else
{
    st_value = 0;
    with(obj_marker)
    {
        instance_destroy();
    }
}
