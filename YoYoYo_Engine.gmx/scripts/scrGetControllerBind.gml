///scrGetControllerBind(buttonIndex)
///gets a string representation of the button for a controller
///argument0 - button constant (i.e. gp_face1, gp_start)

var buttonIn = argument0;

switch (buttonIn)
{
    case gp_face1: return "A/Cross"; break;
    case gp_face2: return "B/Circle"; break;
    case gp_face3: return "X/Square"; break;
    case gp_face4: return "Y/Triangle"; break;
    case gp_shoulderl: return "Left Bumper"; break;
    case gp_shoulderlb: return "Left Trigger"; break;
    case gp_shoulderr: return "Right Bumper"; break;
    case gp_shoulderrb: return "Right Trigger"; break;
    case gp_select: return "Select/Touch-Pad"; break;
    case gp_start: return "Start/Options"; break;
    case gp_stickl: return "Left Stick (pressed)"; break;
    case gp_stickr: return "Right Stick (pressed)"; break;
    case gp_padu: return "D-Pad Up"; break;
    case gp_padd: return "D-Pad Down"; break;
    case gp_padl: return "D-Pad Left"; break;
    case gp_padr: return "D-Pad Right"; break;
    default: return "Unknown"; break;
}
