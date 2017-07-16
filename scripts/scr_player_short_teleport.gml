///scr_player_short_teleport()
scr_Input();

if(steleport)
{
    if(st_value == 0)
    {
        instance_create(x, y + sprite_height/2, obj_marker);
    }
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
else
{
    st_value = 0;
    with(obj_marker)
    {
        instance_destroy();
    }
}
