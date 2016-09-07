///initializes all global variables needed for the game


//set configurable global options

global.noDeath = false;         //enables god mode
global.infJump = false;         //enables infinite jump

global.roomCaptionDef = "I Wanna Be The Studio Engine YoYoYo Edition Lite";  //sets default window caption (only works with the Professional version of Studio)
global.roomCaptionLast = global.roomCaptionDef;
window_set_caption(global.roomCaptionDef);

global.md5StrAdd = "asjkdfhjoqwfhjko";  //sets what to add to the end of md5 input string to make the save harder to mess with, can be changed to anything, should be set to something unique and hard to predict (like setting a password)

global.startRoom = rSampleRoom;    //sets which room to begin with

global.menuSound = sndJump;     //sets what sound to use for navigating the main menu
global.deathMusicMode = 2;      //sets whether or not to play death music when the player dies (0 = no death music, 1 = instantly pause current music, 2 = fade out current music)
global.edgeDeath = true;           //sets whether to kill the player when he leaves the boundaries of the room
global.pauseDelayLength = 40;   //sets the delay in frames in which the player can pause/unpause the game (can be set to 0 to disable pause delay)

global.secretItemTotal = 8;     //sets how many secret items for the game to save/load
global.bossItemTotal = 8;       //sets how many boss items for the game to save/load


//initialize other globals

global.savenum = 1;
global.difficulty = 0;  //0 = medium, 1 = hard, 2 = very hard, 3 = impossible
global.death = 0;
global.time = 0;
global.timeMicro = 0;
global.saveRoom = 0;
global.savePlayerX = 0;
global.savePlayerY = 0;
global.grav = 1;
global.saveGrav = 1;

for (var i = global.secretItemTotal-1; i >= 0; i--)
{
    global.secretItem[i] = false;
    global.saveSecretItem[i] = false;
}

for (var i = global.bossItemTotal-1; i >= 0; i--)
{
    global.bossItem[i] = false;
    global.saveBossItem[i] = false;
}

global.gameClear = false;
global.saveGameClear = false;

global.gameStarted = false;     //determines whether the game is in progress (enables saving, restarting, etc.)
global.noPause = false;         //sets whether or not to allow pausing (useful for bosses to prevent desync)
global.autosave = false;        //keeps track of whether or not to autosave the next time the player is created
global.gamePaused = false;      //keeps track of whether the game is paused or not
global.pauseSurf = -1;       //stores the screen surface when the game is paused
global.pauseDelay = 0;      //sets pause delay so that the player can't quickly pause buffer

global.currentMusicID = -1;  //keeps track of what song the current music is
global.currentMusic = -1;    //keeps track of current main music instance
global.deathSound = -1;     //keeps track of death sound when the player dies
global.gameOverMusic = -1;   //keeps track of game over music instance
global.musicFading = false;     //keeps track of whether the music is being currently faded out
global.currentGain = 0;     //keeps track of current track gain when a song is being faded out

display_set_gui_size(view_wport[0],view_hport[0]);  //set the correct gui size for the Draw GUI event

randomize();    //make sure the game starts with a random seed for RNG
