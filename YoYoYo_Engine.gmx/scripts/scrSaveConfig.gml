///saves current config settings

ini_open("config.ini");

//settings
ini_write_real("Settings","Mute_music",global.muteMusic);
ini_write_real("Settings","Volume_level",global.volumeLevel);
ini_write_real("Settings","Fullscreen_mode",global.fullscreenMode);
ini_write_real("Settings","Smoothing_mode",global.smoothingMode);

//controls
ini_write_real("Controls","Left",global.leftbutton);
ini_write_real("Controls","Right",global.rightbutton);
ini_write_real("Controls","Up",global.upbutton);
ini_write_real("Controls","Down",global.downbutton);
ini_write_real("Controls","Jump",global.jumpbutton);
ini_write_real("Controls","Shoot",global.shotbutton);
ini_write_real("Controls","Restart",global.restartbutton);
ini_write_real("Controls","Skip",global.skipbutton);
ini_write_real("Controls","Suicide",global.suicidebutton);
ini_write_real("Controls","Pause",global.pausebutton);
ini_write_real("Controls","Align_left",global.aAlignButton);
ini_write_real("Controls","Align_right",global.dAlignButton);

ini_close();
