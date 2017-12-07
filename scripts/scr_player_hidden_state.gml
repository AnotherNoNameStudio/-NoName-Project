///scr_player_hidden_state
scr_Input();
isHidden = true;
useTorch = false;

if (right || left || up || down)
{
    isHidden = false;
    visible = true
    state = scr_player_move_state;
}

/*
if torch_key
{
    useTorch =! useTorch
}*/
