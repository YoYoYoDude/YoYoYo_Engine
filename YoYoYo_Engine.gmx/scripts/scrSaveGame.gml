///scrSaveGame(savelocation)
///saves the game
///argument0 - sets whether the game should save the player's current location or just save the deaths/time

var savePosition = argument0;

//saves player's current location variables if it's set to
if (savePosition)
{    
    global.saveRoom = room;
    global.savePlayerX = objPlayer.x;    
    global.savePlayerY = objPlayer.y;
    global.savePlayerXScale = global.player_xscale;
    global.saveGrav = global.grav;
    
    //check if player is saving inside of a wall or in the ceiling when the player's position is floored
    with (objPlayer)
    {
        if (!place_free(floor(global.savePlayerX),global.savePlayerY))
        {
            global.savePlayerX += 1;
        }
        
        if (!place_free(global.savePlayerX,floor(global.savePlayerY)))
        {
            global.savePlayerY += 1;
        }
        
        if (!place_free(floor(global.savePlayerX),floor(global.savePlayerY)))
        {
            global.savePlayerX += 1;
            global.savePlayerY += 1;
        }
    }
    
    //floor player position to match standard engine behavior
    global.savePlayerX = floor(global.savePlayerX);
    global.savePlayerY = floor(global.savePlayerY);
    
    for (var i = 1; i <= 8; i++)
    {
        global.saveSecretItem[i] = global.secretItem[i];
        global.saveBossItem[i] = global.bossItem[i];
    }
    
    global.saveGameClear = global.gameClear;
}

//create a list for save data
var list = ds_list_create();

ds_list_add(list,global.death);
ds_list_add(list,global.time);
ds_list_add(list,global.timeMicro);

ds_list_add(list,global.difficulty);
ds_list_add(list,global.saveRoom);
ds_list_add(list,global.savePlayerX);
ds_list_add(list,global.savePlayerY);
ds_list_add(list,global.savePlayerXScale);
ds_list_add(list,global.saveGrav);

for (var i = 1; i <= 8; i++)
{
    ds_list_add(list,global.saveSecretItem[i]);
}

for (var i = 1; i <= 8; i++)
{
    ds_list_add(list,global.saveBossItem[i]);
}

ds_list_add(list,global.saveGameClear);

//add md5 hash to the end to verify saves and make them harder to hack
ds_list_add(list,md5_string_unicode(ds_list_write(list)+global.md5StrAdd));

//open the save file
var f = file_text_open_write("Data\save"+string(global.savenum));

//write list to the save file with base64 encoding
file_text_write_string(f,base64_encode(ds_list_write(list)));

file_text_close(f);

//destroy the list
ds_list_destroy(list);
