///scr_player_short_teleport()
scr_Input();

var marker_id = 0;
var marker_dir = 0;
if(steleport)
{
    if(st_value == 0)
    {
        marker_id = instance_create(x+100, y, obj_marker);
    }
    if(st_value < st_max)
    {
        st_value += (1/room_speed)*50;  // bar will be fullfiled in 2 seconds
        // moving marker in suitable direction
        
    }
}
else
{
    st_value = 0;
    if(marker_id != 0)
    {
        with(marker_id)
        {
            instance_destroy();
        }
        marker_id = 0;
    }
}
