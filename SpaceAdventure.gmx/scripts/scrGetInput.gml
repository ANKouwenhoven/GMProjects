///scrGetInput

// Check for keyboard input
rightKey = keyboard_check(d);
leftKey = keyboard_check(a);
upKey = keyboard_check(w);
downKey = keyboard_check(s);

dashKey = keyboard_check_pressed(vk_shift);
attackKey = keyboard_check_pressed(ord('F'));

// Get the axis
xaxis = (rightKey - leftKey)
yaxis = (downKey - upKey)

// Check for gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dashKey = gamepad_button_check_pressed(0, gp_face1);
    attackKey = gamepad_button_check_pressed(0, gp_face3);
}