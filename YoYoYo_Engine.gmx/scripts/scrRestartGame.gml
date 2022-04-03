///restarts the game

if (surface_exists(global.pauseSurf))
    surface_free(global.pauseSurf);  //free pause surface in case the game is currently paused

//we go first so all room end events are called
room_goto(room_first)

//call destroy events and remove persistent instances
instance_destroy(all)

//reset global state
draw_set_color($ffffff)
draw_set_alpha(1)
draw_set_blend_mode(bm_normal)
draw_set_colour_write_enable(1,1,1,1)
d3d_end()
d3d_set_lighting(0)
d3d_set_fog(0,0,0,0)
d3d_set_culling(0)
texture_set_repeat(0)
texture_set_interpolation(0)
shader_reset()
audio_stop_all()
