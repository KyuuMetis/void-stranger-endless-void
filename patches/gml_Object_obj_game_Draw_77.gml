// TARGET: LINENUMBER_REPLACE
// 42
surface_final = surface_create(sx, sy)
// TARGET: LINENUMBER_REPLACE
// 46
if (global.clear_black != -1)
{
    global.clear_black--
    draw_clear(c_black)
}