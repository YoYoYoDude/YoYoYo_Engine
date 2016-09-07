///loads config settings, sets default config if it doesn't exist

ini_open("config.ini");

//settings
global.muteMusic = ini_read_real("Settings","Mute_music",false);

global.volumeLevel = clamp(floor(ini_read_real("Settings","Volume_level",100)),0,100);
audio_master_gain(global.volumeLevel/100);

global.fullscreenMode = ini_read_real("Settings","Fullscreen_mode",false);
window_set_fullscreen(global.fullscreenMode);

//keyboard controls
global.leftButton = ini_read_real("Controls","Left",vk_left);
global.rightButton = ini_read_real("Controls","Right",vk_right);
global.upButton = ini_read_real("Controls","Up",vk_up);
global.downButton = ini_read_real("Controls","Down",vk_down);
global.jumpButton = ini_read_real("Controls","Jump",vk_shift);
global.shootButton = ini_read_real("Controls","Shoot",ord("Z"));
global.restartButton = ini_read_real("Controls","Restart",ord("R"));
global.skipButton = ini_read_real("Controls","Skip",ord("S"));
global.suicideButton = ini_read_real("Controls","Suicide",ord("Q"));
global.pauseButton = ini_read_real("Controls","Pause",ord("P"));

//menu keys (not rebindable)
global.menuLeftButton = vk_left;
global.menuRightButton = vk_right;
global.menuUpButton = vk_up;
global.menuDownButton = vk_down;
global.menuAcceptButton = vk_shift;
global.menuBackButton = ord("Z");
global.menuOptionsButton = vk_enter;

ini_close();

scrSaveConfig();    //save config in case something changed
