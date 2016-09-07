///toggles the music on and off

global.muteMusic = !global.muteMusic;

if (!global.muteMusic)  //start playing music if the game is getting unmuted
{
    if (instance_exists(objPlayer) || !global.gameStarted)
    {
        scrGetMusic();  //find and play the proper music for the current room
    }
}
else                    //mute music
{
    scrStopMusic();
    audio_stop_sound(global.gameOverMusic);
}
