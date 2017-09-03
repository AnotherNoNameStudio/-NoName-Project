/// scr_check_for_player();
// przeciwnik musi wiedziec czy jest gracz na mapie
if (instance_exists(obj_player) && obj_player.isHidden == false)
{
    var dis = point_distance(x, y, obj_player.x, obj_player.y);
    
    if (dis < sight)
    {
        state = scr_enemy_chase_state;
        targetx = obj_player.x;
        targety = obj_player.y;
    }
    else
    {
        scr_enemy_choose_next_state();
    }
}
else
{
    scr_enemy_choose_next_state();
}
