///scrButtonCheck(button)
///checks whether a button is currently being pressed

var buttonIn = argument0;

if (!global.controllerMode)
{
    return (keyboard_check(scrGetKeyboardButton(buttonIn)));
}
else
{
    return (gamepad_button_check(global.controllerIndex,scrGetControllerButton(buttonIn)));
}
