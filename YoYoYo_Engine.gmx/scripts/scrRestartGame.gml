///restarts the game

if (surface_exists(global.pauseSurf))
{
    surface_free(global.pauseSurf);  //free pause surface in case the game is currently paused
}

with (all)
{
    event_perform(ev_other,ev_room_end);  //call room end events to make sure everything is freed properly
}

//reset global state
draw_set_color($ffffff);
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);
draw_set_colour_write_enable(true,true,true,true);
d3d_end();
d3d_set_lighting(false);
d3d_set_fog(false,c_black,0,0);
d3d_set_culling(false);
texture_set_repeat(false);
texture_set_interpolation(false);
shader_reset();
audio_stop_all();

//finally, restart game
game_restart();
