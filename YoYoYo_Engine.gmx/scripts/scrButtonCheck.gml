///scrButtonCheck(button)
///checks whether a button is currently being pressed

var buttonIn = argument0;

var keyboardKey;
var controllerButton;

switch (buttonIn)
{
    case LEFT_BUTTON:
        keyboardKey = global.leftbutton;
        controllerButton = global.leftgp;
        break;
    case RIGHT_BUTTON:
        keyboardKey = global.rightbutton;
        controllerButton = global.rightgp;
        break;
    case UP_BUTTON:
        keyboardKey = global.upbutton;
        controllerButton = global.upgp;
        break;
    case DOWN_BUTTON:
        keyboardKey = global.downbutton;
        controllerButton = global.downgp;
        break;
    default:    //invalid button
        return false;
        break;
}

var keyCheck = keyboard_check(keyboardKey);
var controllerCheck = gamepad_button_check(global.controllerIndex,controllerButton);

if (global.controllerMode)
{
    return controllerCheck;
}
else
{
    return keyCheck;
}
