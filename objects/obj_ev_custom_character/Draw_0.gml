if ((global.custom_stranger == 1))
{
    var color = c_black
    var sprite = sprite_index
    gpu_set_fog(true, color, 0, 1)
    var increase = ((dsin(global.editor_time) / 8) + 0.25)
    draw_sprite_ext(sprite, image_index, x, y, (scale_x + increase), (scale_y + increase), 0, c_white, 1)
    gpu_set_fog(false, color, 0, 1)
}
if ((sprite_index == asset_get_index("spr_voidrod_spin")))
{
    draw_sprite(sprite_index, image_index, x, y)
    image_speed = 3
}
else
{
    draw_sprite_ext(sprite_index, image_index, x, y, scale_x, scale_y, 0, c_white, 1)
    image_speed = 0.050000000000000003
}
