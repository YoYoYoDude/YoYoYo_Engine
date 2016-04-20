///scrButtonCheck(buttonArray)
///checks whether a button is currently being pressed
///argument0 - array containing the keyboard button in index 0 and the controller button in index 1

var buttonIn = argument0;

if (!global.controllerMode)
{
    return (keyboard_check(buttonIn[0]));
}
else
{
    return (gamepad_button_check(global.controllerIndex,buttonIn[1]));
}
