// TARGET: LINENUMBER
// 30
else if (global.stranger == 5) {
	golden_right = spr_ev_lily_gblink_r
	golden_left = spr_ev_lily_gblink_l
	golden_up = spr_ev_lily_gblink_u
	golden_down = spr_ev_lily_gblink_d
}
else if (global.stranger == 6) {
	golden_right = spr_ev_ninnie
	golden_left = spr_ev_ninnie
	golden_up = spr_ev_ninnie
	golden_down = spr_ev_ninnie
}
if (global.custom_stranger == 1) {
    var strange = ev_custom_init()
	golden_right = strange[9]
	golden_left = strange[10]
	golden_up = strange[11]
	golden_down = strange[8]
}