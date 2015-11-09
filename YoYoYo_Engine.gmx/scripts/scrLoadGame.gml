///scrLoadGame(loadfile)
///loads the game
///argument0 - sets whether or not to read the save file when loading the game

var loadFile = argument0;

//only load save data from the save file if it's set to
if (loadFile)
{
    //load the save list
    var f = file_text_open_read("Data\save"+string(global.savenum));
    
    var list = ds_list_create();
    ds_list_read(list,base64_decode(file_text_read_string(f)));
    
    file_text_close(f);
    
    var ind = 0;    //keep track of the list index for loading data
    
    global.death = ds_list_find_value(list,ind);
    ind += 1;
    global.time = ds_list_find_value(list,ind);
    ind += 1;
    global.timeMicro = ds_list_find_value(list,ind);
    ind += 1;
    
    global.difficulty = ds_list_find_value(list,ind);
    ind += 1;
    global.saveRoom = ds_list_find_value(list,ind);
    ind += 1;
    global.savePlayerX = ds_list_find_value(list,ind);
    ind += 1;
    global.savePlayerY = ds_list_find_value(list,ind);
    ind += 1;
    global.savePlayerXScale = ds_list_find_value(list,ind);
    ind += 1;
    global.saveGrav = ds_list_find_value(list,ind);
    ind += 1;
    
    for (var i = 1; i <= 8; i++)
    {
        global.saveSecretItem[i] = ds_list_find_value(list,ind);
        ind += 1;
    }
    
    for (var i = 1; i <= 8; i++)
    {
        global.saveBossItem[i] = ds_list_find_value(list,ind);
        ind += 1;
    }
    
    global.saveGameClear = ds_list_find_value(list,ind);
    ind += 1;
    
    //load md5 string from the save list
    var listMd5 = ds_list_find_value(list,ind);
    
    //check if md5 is not a string in case the save was messed with
    if (!is_string(listMd5))
        listMd5 = "";   //make it a string for the md5 comparison
    
    //generate md5 string to compare with
    ds_list_delete(list,ind);
    var genMd5 = md5_string_unicode(ds_list_write(list)+global.md5StrAdd);
    
    //destroy the list
    ds_list_destroy(list);
    
    if (genMd5 != listMd5)   //check if md5 hash is invalid
    {
        //hash is invalid, restart the game
        
        show_message("Save invalid!");
        
        scrRestartGame();
        
        exit;
    }
}

//set game variables and set player position

with (objPlayer) //destroy player if it exists
    instance_destroy();

global.gameStarted = 1; //sets game in progress (enables saving, restarting, etc.)
global.noPause = 0;
global.autosave = 0;

global.player_xscale = global.savePlayerXScale;
global.grav = global.saveGrav;

for (var i = 1; i <= 8; i++)
{
    global.secretItem[i] = global.saveSecretItem[i];
    global.bossItem[i] = global.saveBossItem[i];
}

global.gameClear = global.saveGameClear;

global.player_djump = 1;    //make sure to give djump when spawning

instance_create(global.savePlayerX,global.savePlayerY,objPlayer);

room_goto(global.saveRoom);
