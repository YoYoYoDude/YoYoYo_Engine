///loads config settings, sets default config if it doesn't exist

ini_open("config.ini");

//settings
global.muteMusic = ini_read_real("Settings","Mute_music",false);

global.volumeLevel = clamp(floor(ini_read_real("Settings","Volume_level",100)),0,100);
audio_master_gain(global.volumeLevel/100);

global.fullscreenMode = ini_read_real("Settings","Fullscreen_mode",false);
scrSetFullscreen();

global.smoothingMode = ini_read_real("Settings","Smoothing_mode",false);

global.vsyncMode = ini_read_real("Settings","Vsync_mode",false);
if (global.vsyncMode)   //only need to set vsync mode if it's on since it's off by default
    scrSetVsync();

//keyboard controls
global.leftbutton = ini_read_real("Controls","Left",vk_left);
global.rightbutton = ini_read_real("Controls","Right",vk_right);
global.upbutton = ini_read_real("Controls","Up",vk_up);
global.downbutton = ini_read_real("Controls","Down",vk_down);
global.jumpbutton = ini_read_real("Controls","Jump",vk_shift);
global.shootbutton = ini_read_real("Controls","Shoot",ord("Z"));
global.restartbutton = ini_read_real("Controls","Restart",ord("R"));
global.skipbutton = ini_read_real("Controls","Skip",ord("S"));
global.suicidebutton = ini_read_real("Controls","Suicide",ord("Q"));
global.pausebutton = ini_read_real("Controls","Pause",ord("P"));
global.aAlignButton = ini_read_real("Controls","Align_left",ord("A"));
global.dAlignButton = ini_read_real("Controls","Align_right",ord("D"));

//controller options
global.controllerEnabled = ini_read_real("Controller","Enabled",true);

global.controllerIndex = ini_read_real("Controller", "Index", 0); // -1 means no controller
global.controllerThreshhold = ini_read_real("Controller", "Threshhold", 0.3); //how far, between 0 and 1, the move stick needs to be moved to count as pressing the direction
global.leftgp = ini_read_real("Controller","Left",gp_padl);
global.rightgp = ini_read_real("Controller","Right",gp_padr);
global.upgp = ini_read_real("Controller","Up",gp_padu);
global.downgp = ini_read_real("Controller","Down",gp_padd);
global.jumpgp = ini_read_real("Controller","Jump",gp_face1);
global.shootgp = ini_read_real("Controller","Shoot",gp_face3);
global.restartgp = ini_read_real("Controller","Restart",gp_face4);
global.skipgp = ini_read_real("Controller","Skip",gp_face2);
global.suicidegp = ini_read_real("Controller","Suicide",gp_select);
global.pausegp = ini_read_real("Controller","Pause",gp_start);
global.aAligngp = ini_read_real("Controller","Align_left",gp_shoulderl);
global.dAligngp = ini_read_real("Controller","Align_right",gp_shoulderr);

ini_close();

scrSaveConfig();    //save config in case something changed
