///toggles the music on and off

global.muteMusic = !global.muteMusic;

if (!global.muteMusic)  //start playing music if the game is getting unmuted
{
    if (instance_exists(objPlayer) || !global.gameStarted)
    {
        if (!instance_exists(objPlayMusic))  //make sure the play music object isn't in the current room
        {
            scrGetMusic();  //find and play the proper music for the current room
        }
        else    //objPlayMusic is in the room, use it to play music instead
        {
            with (objPlayMusic)
            {
                if (BGM != -2)
                    scrPlayMusic(BGM,true);
            }
        }
    }
}
else                    //mute music
{
    scrStopMusic();
    audio_stop_sound(global.gameOverMusic);
}
