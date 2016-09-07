///saves current config settings

ini_open("config.ini");

//settings
ini_write_real("Settings","Mute_music",global.muteMusic);
ini_write_real("Settings","Volume_level",global.volumeLevel);
ini_write_real("Settings","Fullscreen_mode",global.fullscreenMode);

//keyboard controls
ini_write_real("Controls","Left",global.leftButton);
ini_write_real("Controls","Right",global.rightButton);
ini_write_real("Controls","Up",global.upButton);
ini_write_real("Controls","Down",global.downButton);
ini_write_real("Controls","Jump",global.jumpButton);
ini_write_real("Controls","Shoot",global.shootButton);
ini_write_real("Controls","Restart",global.restartButton);
ini_write_real("Controls","Skip",global.skipButton);
ini_write_real("Controls","Suicide",global.suicideButton);
ini_write_real("Controls","Pause",global.pauseButton);

ini_close();
