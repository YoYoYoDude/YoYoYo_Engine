///scrAnyControllerButton()
///returns a gamepad button if one is being pressed (if multiple are pressed at the same time, will return whichever has a lower value), and -1 if none are pressed

var list;
var length = 16;

list[0] = gp_face1;
list[1] = gp_face2;
list[2] = gp_face3;
list[3] = gp_face4;
list[4] = gp_padu;
list[5] = gp_padd;
list[6] = gp_padl;
list[7] = gp_padr;
list[8] = gp_stickr;
list[9] = gp_stickl; 
list[10] = gp_select;
list[11] = gp_start;
list[12] = gp_shoulderr;
list[13] = gp_shoulderrb;
list[14] = gp_shoulderl;
list[15] = gp_shoulderlb;

for (var i = 0; i < length; i++)
{
    if (gamepad_button_check_pressed(global.controllerIndex, list[i]))
        return list[i];
}

return -1;
