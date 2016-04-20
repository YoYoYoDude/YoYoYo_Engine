///scrGetKeyboardButton(button)
///returns which button should be getting checked for keyboard inputs

var buttonIn = argument0;

switch (buttonIn)
{
    case LEFT_BUTTON:
        return global.leftbutton;
        break;
    case RIGHT_BUTTON:
        return global.rightbutton;
        break;
    case UP_BUTTON:
        return global.upbutton;
        break;
    case DOWN_BUTTON:
        return global.downbutton;
        break;
    case JUMP_BUTTON:
        return global.jumpbutton;
        break;
    case SHOT_BUTTON:
        return global.shotbutton;
        break;
    case RESTART_BUTTON:
        return global.restartbutton;
        break;
    case SKIP_BUTTON:
        return global.skipbutton;
        break;
    case SUICIDE_BUTTON:
        return global.suicidebutton;
        break;
    case PAUSE_BUTTON:
        return global.pausebutton;
        break;
    case A_ALIGN_BUTTON:
        return global.aAlignButton;
        break;
    case D_ALIGN_BUTTON:
        return global.dAlignButton;
        break;
    default:    //invalid button
        return -1;
        break;
}
