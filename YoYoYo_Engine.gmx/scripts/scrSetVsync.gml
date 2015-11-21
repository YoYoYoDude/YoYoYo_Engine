///sets vsync mode depending on the current setting

global.windowXPrev = window_get_x();
global.windowYPrev = window_get_y();
global.windowWidthPrev = window_get_width();
global.windowHeightPrev = window_get_height();

display_reset(0,global.vsyncMode);

//set alarm for returning to the previous window position/size (using display_reset resets it)
with (objWorld)
    alarm[1] = 1;
