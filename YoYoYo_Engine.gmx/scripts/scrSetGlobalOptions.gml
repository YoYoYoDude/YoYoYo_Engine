///sets configurable global options

global.debugMode = 0;       //enables debug keys (check objWorld step to see all of them), make sure to set this to 0 before releasing your game
global.debugVisuals = 1;    //enables changing the color/alpha of player when infjump/god mode are toggled, make sure to disable this if you want to change the player's image_alpha or image_blend
global.debugOverlay = 0;    //enables showing the debug text overlay (shows player location, align, etc.)
global.debugOverlayColor = c_black; //sets the color for the debug overlay text
global.noDeath = 0;         //enables god mode (toggle with Home)
global.infJump = 0;         //enables infinite jump (toggle with End)
global.showHitbox = 0;      //enables showing the player's hitbox (toggle with Del)

global.roomCaptionDef = "I Wanna Be The Studio Engine YoYoYo Edition";  //sets default room caption (only works with the Professional version of Studio)
global.roomCaptionLast = global.roomCaptionDef;
window_set_caption(global.roomCaptionDef);

global.md5StrAdd = "Put something here!";  //sets what to add to the end of md5 input string to make the save harder to mess with, can be changed to anything, should be set to something unique and hard to predict (like setting a password)

global.startRoom = rStage01;    //sets which room to begin with

global.menuMode = 1;            //sets whether to use a warp room or a menu for selecting difficulty (0 = warp room, 1 = menu)
global.menuSound = sndJump;     //sets what sound to use for navigating the main menu
global.deathMusicMode = 2;      //sets whether or not to play death music (0 = no death music, 1 = instantly pause current music, 2 = fade out current music)
global.adAlign = 0;             //sets whether or not to enable A/D align
global.timeWhenDead = 1;        //sets whether or not to count the timer when the player is dead
global.edgeDeath = 1;           //sets whether to kill the player when he leaves the room
global.pauseDelayLength = 40;   //sets the delay in frames in which the player can pause/unpause the game (can be set to 0 to disable pause delay)
global.delayBow = 0;            //sets whether to delay the player bow's movement by a frame or not (most engines have the bow lagging behind the player by a frame)
