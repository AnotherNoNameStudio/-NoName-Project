///scr_player_short_teleport(st_value, st_max)
scr_Input();

if(steleport)
{
    if(st_value < st_max)
    {
        st_value += (1/room_speed)*50;  // bar will be fullfiled in 2 seconds
    }
    // 
    if(st_value == st_max)
    {
        
    }
}
else
{
    st_value = 0;
}
