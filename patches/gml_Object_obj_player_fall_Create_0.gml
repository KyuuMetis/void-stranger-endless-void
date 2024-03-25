// TARGET: TAIL
else if (global.stranger == 5)
	sprite_index = spr_ev_lily_fall
else if (global.stranger == 6)
	sprite_index = spr_ev_ninnie
if (global.custom_stranger == 1) {
    var strange = ev_custom_init()
	sprite_index = strange[14]
}