/// skrypt odpowiedzialny za przechowywanie sterowania
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
hide_key = keyboard_check(ord('Q'))
torch_key = keyboard_check_pressed(ord('T'))
steleport_released = keyboard_check_released(vk_space);
steleport_pressed = keyboard_check_pressed(vk_space);

exitgame = keyboard_check_pressed(vk_escape);
if(exitgame)
{
    game_end();
}
