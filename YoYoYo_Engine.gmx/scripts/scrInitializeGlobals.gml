///initializes all global variables needed for the game

global.savenum = 1;
global.difficulty = 0;  //0 = medium, 1 = hard, 2 = very hard, 3 = impossible
global.death = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = 0;
global.savePlayerX = 0;
global.savePlayerY = 0;
global.savePlayerXScale = 1;
global.grav = 1;
global.saveGrav = 1;

for (var i = 8; i >= 0; i--)
{
    global.secretItem[i] = 0;
    global.saveSecretItem[i] = 0;
    global.bossItem[i] = 0;
    global.saveBossItem[i] = 0;
}

global.gameClear = 0;
global.saveGameClear = 0;

global.md5StrIn = "";

for (var i = 100; i >= 0; i--)
{
    global.trigger[i] = 0;
}

global.player_djump = 1;
global.player_xscale = 1;

global.gameStarted = 0;     //determines whether the game is in progress (enables saving, restarting, etc.)
global.noPause = 0;         //sets whether or not to allow pausing (useful for bosses to prevent desync)
global.autosave = 0;        //keeps track of whether or not to autosave the next time the player is created
global.gamePaused = 0;      //keeps track of whether the game is paused or not
global.pauseSurf = -1;       //stores the screen surface when the game is paused
global.pauseDelay = 0;      //sets pause delay so that the player can't quickly pause buffer

global.currentMusicID = -1;  //keeps track of what song the current music is
global.currentMusic = -1;    //keeps track of current main music instance
global.deathSound = -1;     //keeps track of death sound when the player dies
global.gameOverMusic = -1;   //keeps track of game over music instance
global.musicFading = 0;     //keeps track of whether the music is being currently faded out
global.currentGain = 0;     //keeps track of current track gain when a song is being faded out

//get the default window size
global.windowWidth = view_wview[0];
global.windowHeight = view_hview[0];

display_set_gui_size(view_wview[0],view_hview[0]);  //set the correct gui size for the Draw GUI event

randomize();    //make sure the game starts with a random seed for RNG

scrSetGlobalOptions();       //initialize variables that can be changed
