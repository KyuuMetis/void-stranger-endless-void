if (array_length(levels) == 0) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	draw_text_shadow(room_width / 2, room_height - 20, "No levels from this source...", c_black)
}