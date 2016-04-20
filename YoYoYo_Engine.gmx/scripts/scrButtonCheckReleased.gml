///scrButtonCheckReleased(button)
///checks whether a button is being released this frame

var buttonIn = argument0;

if (!global.controllerMode)
{
    return (keyboard_check_released(scrGetKeyboardButton(buttonIn)));
}
else
{
    return (gamepad_button_check_released(global.controllerIndex,scrGetControllerButton(buttonIn)));
}
