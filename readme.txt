Thank you for downloading IWBT Studio Engine YoYoYo Edition v1.20!
If you want to report bugs, request features, ask any questions, or check to make sure this is the most recent version, you can check my post on the I Wanna Community forums here: bit.ly/StudioEngineYoYoYo
If you want to contact me more directly, you can add me on Skype at "smgplayer" or find me on Twitter @YoYoYoDude2

About
-This is an engine specifically made for GameMaker Studio with (hopefully) all of the weird physics bugs/changes Studio has fixed.
-It is based off of the Yuuutu engine and has most of its features and structure.
-This engine assumes you have a reasonable amount of experience with GameMaker and requires some GML knowledge for things like playing music.

Features
-Works mostly the same as the Yuuutu engine, with cleaner code and annoying bugs like dying through platforms fixed
-Includes a main menu system with options menu based off the KS engine
-Includes gravity flipping, vines, jump refreshers, and other frequently used gimmicky objects
-Built-in save verification system with MD5 hash checks to make saves harder to hack
-Mute/unmute music with Ctrl+M
-Toggle screen smoothing with F3
-Pause screen that shows deaths/time with volume controls
-Includes toggleable debug keys ("Tab" to drag player to mouse, "Backspace" to toggle debug overlay, "Ins" to save, "Del" to toggle showing the hitbox, "Home" to toggle god mode, "End" to toggle infinite jump, "Page Up" to go to next room, "Page Down" to go to previous room)
-Several options for many things you might want to change for your game (such as enabling/disabling death music) in the "scrSetGlobalOptions" script

Important notes
-To set what music you want a room to play, change the "scrGetMusic" script. You can also place an objPlayMusic object in the room and set the variable "BGM" in its creation code. If you want something to stop music, use "scrStopMusic()".
-A template room that has all of the correct view settings is included which can be duplicated and modified.
-Because of how GM Studio saves files, all game saves are stored in "%localappdata%\<GameName>" instead of inside the folder where the game is located. Because of this, it is very important to change your game/project name to something unique before releasing your game to ensure there aren't save conflicts with other games.
-Make sure to set the "global.debugMode" variable in the "scrSetGlobalOptions" script to 0 before releasing your game, otherwise debug keys will still work.
-Make sure to set the "global.md5StrAdd" string in the "scrSetGlobalOptions" script to something unique to your game to make saves harder to modify. This can be set to anything you want it to be, but it should be pretty hard to predict as it's kind of similar to a password.
-When creating new objects, the order of the objects in the Objects list matters for collision/event order. Therefore, when making new objects try to keep the type of object in the corresponding folder to prevent collision issues (ie put block objects in the blocks folder, player killers in the killers folder, etc).
-Even though the engine supports it, if you are using the free version of GM Studio, the window caption is unable to be changed.
-This version of the engine was made and tested in GM Studio v1.4.1657. If you are using a different version of GM Studio, there could be potential bugs as they sometimes tweak how things work in certain versions.