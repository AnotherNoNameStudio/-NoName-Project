switch (mpos)
{
    case 0:
    {
        global.pause = 0;
        instance_activate_object(obj_dayCycle);
        //audio_pause_sound(sn_pause);
        break;
    }
     case 1:
    {
        global.pause = 0;
        instance_activate_object(obj_dayCycle);
        //audio_pause_sound(sn_pause);
        break;
    }
     case 2:
    {
        global.pause = 0;
        instance_deactivate_object(obj_pause);
        audio_pause_all();
        instance_deactivate_object(obj_player);
       // room_goto(room_menu);
        game_end();
        break;
    }
    default: break;
}
