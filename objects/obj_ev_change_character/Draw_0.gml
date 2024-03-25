if ((global.custom_stranger == 0))
{
    var color = c_white
    var sprite = sprite_index
    gpu_set_fog(true, color, 0, 1)
    var increase = ((dsin(global.editor_time) / 8) + 0.25)
    draw_sprite_ext(sprite, image_index, x, y, (scale_x + increase), (scale_y + increase), 0, c_white, 1)
    gpu_set_fog(false, color, 0, 1)
}
draw_sprite_ext(sprite_index, image_index, x, y, scale_x, scale_y, 0, c_white, 1)
