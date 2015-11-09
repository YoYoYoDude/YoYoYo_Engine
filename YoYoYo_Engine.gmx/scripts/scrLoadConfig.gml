///loads config settings, sets default config if it doesn't exist

ini_open("config.ini");

//settings
global.muteMusic = ini_read_real("Settings","Mute_music",false);

global.volumeLevel = clamp(floor(ini_read_real("Settings","Volume_level",100)),0,100);
audio_master_gain(global.volumeLevel/100);

global.fullscreenMode = ini_read_real("Settings","Fullscreen_mode",false);
scrSetFullscreen();

global.smoothingMode = ini_read_real("Settings","Smoothing_mode",false);

//controls
global.leftbutton = ini_read_real("Controls","Left",vk_left);
global.rightbutton = ini_read_real("Controls","Right",vk_right);
global.upbutton = ini_read_real("Controls","Up",vk_up);
global.downbutton = ini_read_real("Controls","Down",vk_down);
global.jumpbutton = ini_read_real("Controls","Jump",vk_shift);
global.shotbutton = ini_read_real("Controls","Shoot",ord("Z"));
global.restartbutton = ini_read_real("Controls","Restart",ord("R"));
global.skipbutton = ini_read_real("Controls","Skip",ord("S"));
global.suicidebutton = ini_read_real("Controls","Suicide",ord("Q"));
global.pausebutton = ini_read_real("Controls","Pause",ord("P"));
global.aAlignButton = ini_read_real("Controls","Align_left",ord("A"));
global.dAlignButton = ini_read_real("Controls","Align_right",ord("D"));

ini_close();

scrSaveConfig();    //save config in case something changed
