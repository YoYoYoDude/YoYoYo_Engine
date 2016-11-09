///scrSaveGame(saveposition)
///saves the game
///argument0 - sets whether the game should save the player's current location or just save the deaths/time

var savePosition = argument0;

//save the player's current location variables if the script is currently set to (we don't want to save the player's location if we're just updating death/time)
if (savePosition)
{    
    global.saveRoom = room_get_name(room);
    global.savePlayerX = objPlayer.x;    
    global.savePlayerY = objPlayer.y;
    global.saveGrav = global.grav;
    
    //check if player is saving inside of a wall or in the ceiling when the player's position is floored to prevent save locking
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
    
    for (var i = 0; i < global.secretItemTotal; i++)
    {
        global.saveSecretItem[i] = global.secretItem[i];
    }
    
    for (var i = 0; i < global.bossItemTotal; i++)
    {
        global.saveBossItem[i] = global.bossItem[i];
    }
    
    global.saveGameClear = global.gameClear;
}

//create a map for save data
var saveMap = ds_map_create();

ds_map_add(saveMap,"death",global.death);
ds_map_add(saveMap,"time",global.time);
ds_map_add(saveMap,"timeMicro",global.timeMicro);

ds_map_add(saveMap,"difficulty",global.difficulty);
ds_map_add(saveMap,"saveRoom",global.saveRoom);
ds_map_add(saveMap,"savePlayerX",global.savePlayerX);
ds_map_add(saveMap,"savePlayerY",global.savePlayerY);
ds_map_add(saveMap,"saveGrav",global.saveGrav);

for (var i = 0; i < global.secretItemTotal; i++)
{
    ds_map_add(saveMap,"saveSecretItem["+string(i)+"]",global.saveSecretItem[i]);
}

for (var i = 0; i < global.bossItemTotal; i++)
{
    ds_map_add(saveMap,"saveBossItem["+string(i)+"]",global.saveBossItem[i]);
}

ds_map_add(saveMap,"saveGameClear",global.saveGameClear);

//add md5 hash to verify saves and make them harder to hack
ds_map_add(saveMap,"mapMd5",md5_string_unicode(ds_map_write(saveMap)+global.md5StrAdd));

//save the map to a file
if (global.extraSaveProtection) //use ds_map_secure function
{
    ds_map_secure_save(saveMap,"Data\save"+string(global.savenum));
}
else    //use text file
{
    //open the save file
    var f = file_text_open_write("Data\save"+string(global.savenum));
    
    //write map to the save file with base64 encoding
    file_text_write_string(f,base64_encode(ds_map_write(saveMap)));
    
    file_text_close(f);
}

//destroy the map
ds_map_destroy(saveMap);
