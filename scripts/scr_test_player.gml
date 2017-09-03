///scr_test_player
//method is showing player's fields, like face, dir, speed, etc. 
var width = - 500;
var height = - 30;


draw_set_colour(c_white);
draw_text(view_wview[view_current] - width, view_hview[view_current] - height, "spd: " + string(spd));
draw_text(view_wview[view_current] - width, view_hview[view_current] - 2*height, "hspd: " + string(hspd));
draw_text(view_wview[view_current] - width, view_hview[view_current] - 3*height, "vspd: " + string(vspd));
draw_text(view_wview[view_current] - width, view_hview[view_current] - 4*height, "dir: " + string(dir));
draw_text(view_wview[view_current] - width, view_hview[view_current] - 5*height, "face: " + string(face));
draw_text(view_wview[view_current] - width, view_hview[view_current] - 6*height, "steleport" + string(steleport));
draw_text(view_wview[view_current] - width, view_hview[view_current] - 7*height, "steleport_pressed" + string(steleport_pressed));
