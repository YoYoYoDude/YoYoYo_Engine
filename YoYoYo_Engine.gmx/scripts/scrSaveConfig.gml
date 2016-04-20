///saves current config settings

ini_open("config.ini");

//settings
ini_write_real("Settings","Mute_music",global.muteMusic);
ini_write_real("Settings","Volume_level",global.volumeLevel);
ini_write_real("Settings","Fullscreen_mode",global.fullscreenMode);
ini_write_real("Settings","Smoothing_mode",global.smoothingMode);
ini_write_real("Settings","Vsync_mode",global.vsyncMode);

//controls
ini_write_real("Controls","Left",global.leftButton[0]);
ini_write_real("Controls","Right",global.rightButton[0]);
ini_write_real("Controls","Up",global.upButton[0]);
ini_write_real("Controls","Down",global.downButton[0]);
ini_write_real("Controls","Jump",global.jumpButton[0]);
ini_write_real("Controls","Shoot",global.shootButton[0]);
ini_write_real("Controls","Restart",global.restartButton[0]);
ini_write_real("Controls","Skip",global.skipButton[0]);
ini_write_real("Controls","Suicide",global.suicideButton[0]);
ini_write_real("Controls","Pause",global.pauseButton[0]);
ini_write_real("Controls","Align_left",global.alignLeftButton[0]);
ini_write_real("Controls","Align_right",global.alignRightButton[0]);

ini_close();
