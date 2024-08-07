var laser_x_direction = lengthdir_x(16, laser_direction)
var laser_y_direction = lengthdir_y(16, laser_direction)
draw_sprite(sprite_index, laser_frame, x, y)
draw_sprite(sprite_index, laser_frame, (x + laser_length * laser_x_direction), (y + laser_length * laser_y_direction))
for (var i = 1; i < laser_length; i += 1)
    draw_sprite_ext(laser_sprite, laser_frame, (x + laser_x_direction * i), (y + laser_y_direction * i), 1, 1, laser_direction, c_white, 1)