///scrButtonCheckPressed(button)
///checks whether a button is being pressed this frame

var buttonIn = argument0;

if (!global.controllerMode)
{
    return (keyboard_check_pressed(scrGetKeyboardButton(buttonIn)));
}
else
{
    return (gamepad_button_check_pressed(global.controllerIndex,scrGetControllerButton(buttonIn)));
}
