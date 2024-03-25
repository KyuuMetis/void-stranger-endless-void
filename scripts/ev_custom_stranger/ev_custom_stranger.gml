/*function ev_custom_dir(){
    var file,dir,str
	
	dir=working_directory + "strangers/"

    file = file_find_first(dir+"*",fa_directory)+"/"
    while (file != "/") {
        if (file != "./" && file!="../") if (file_exists(dir+file+"stranger.txt")) {
            f=file_text_open_read(dir+file+"stranger.txt")
            while (!file_text_eof(f)) {
                str=file_text_read_string(f)
                file_text_readln(f)
            }
            file_text_close(f)
        }
        file=file_find_next()+"/"
    }
    file_find_close()
	return [file,dir]
}*/

function ev_clean_custom(){
    var strange = ev_custom_init()
    global.custom_stranger = 0
    sprite_delete(strange[0])
    sprite_delete(strange[1])
    sprite_delete(strange[2])
    sprite_delete(strange[3])
    sprite_delete(strange[4])
    sprite_delete(strange[5])
    sprite_delete(strange[6])
    sprite_delete(strange[7])
    sprite_delete(strange[8])
    sprite_delete(strange[9])
    sprite_delete(strange[10])
    sprite_delete(strange[11])
    sprite_delete(strange[12])
    sprite_delete(strange[13])
    sprite_delete(strange[14])
    if ((global.custom_wings == 1))
    {
        sprite_delete(spr_ev_wings)
        sprite_delete(spr_ev_wings_dissipate)
        global.custom_wings = 0
    }
    if ((global.custom_sword == 1))
    {
        sprite_delete(spr_ev_sword)
        sprite_delete(spr_ev_sword_flash)
        global.custom_sword = 0
    }	
}

function ev_custom_init(){
	/*var ss

    ss=string

    custom_name=ev_custom_dir("name"+ss)
    custom_memory=ev_custom_dir("unique_memory"+ss)
    custom_wings=ev_custom_dir("unique_wings"+ss)
    custom_sword=ev_custom_dir("unique_sword"+ss)
    custom_strings=ev_custom_dir("unique_strings"+ss)
    egglistener=ev_custom_dir("listens_to_egg"+ss)
    mimicked=ev_custom_dir("is_mimicked"+ss)
	
	if custom_strings = true {
       locust1=ev_custom_dir("locust1"+ss)
       locust2=ev_custom_dir("locust2"+ss)
       locust3=ev_custom_dir("locust3"+ss)
       duped1=ev_custom_dir("duped1"+ss)
       duped2=ev_custom_dir("duped2"+ss)
       duped3=ev_custom_dir("duped3"+ss)
       memory1=ev_custom_dir("memory1"+ss)
       memory2=ev_custom_dir("memory2"+ss)
       memory3=ev_custom_dir("memory3"+ss)
       wing1=ev_custom_dir("wing1"+ss)
       wing2=ev_custom_dir("wing2"+ss)
       wing3=ev_custom_dir("wing3"+ss)
       sword1=ev_custom_dir("sword1"+ss)
       sword2=ev_custom_dir("sword2"+ss)
       sword3=ev_custom_dir("sword2"+ss)
	}
	
	if is_mimicked = true {
       mimic1=ev_custom_dir("mimic1"+ss)
       mimic2=ev_custom_dir("mimic2"+ss)
       mimic3=ev_custom_dir("mimic3"+ss)
       mimic4=ev_custom_dir("mimic4"+ss)
       mimic5=ev_custom_dir("mimic5"+ss)
       mimic6=ev_custom_dir("mimic6"+ss)
	}
	var file,dir
	var info = ev_custom_dir()
    dir = info[0]
    file = info[1]*/
	
	var down = sprite_add("stranger/down.png", 2, true, false, 12, 12)
	sprite_collision_mask(down, false, 2, 4, 4, 19, 19, 0, 0)
	var left = sprite_add("stranger/left.png", 2, true, false, 12, 12)
	sprite_collision_mask(left, false, 2, 4, 4, 19, 19, 0, 0)	
	var right = sprite_add("stranger/right.png", 2, true, false, 12, 12)
	sprite_collision_mask(right, false, 2, 4, 4, 19, 19, 0, 0)	
	var up = sprite_add("stranger/up.png", 2, true, false, 12, 12)
	sprite_collision_mask(up, false, 2, 4, 4, 19, 19, 0, 0)	
	var attack_d = sprite_add("stranger/attack_d.png", 2, true, false, 12, 12)
	sprite_collision_mask(attack_d, false, 2, 4, 4, 19, 19, 0, 0)		
	var attack_l = sprite_add("stranger/attack_l.png", 2, true, false, 12, 12)
	sprite_collision_mask(attack_l, false, 2, 4, 4, 19, 19, 0, 0)		
	var attack_r = sprite_add("stranger/attack_r.png", 2, true, false, 12, 12)
	sprite_collision_mask(attack_r, false, 2, 4, 4, 19, 19, 0, 0)	
	var attack_u = sprite_add("stranger/attack_u.png", 2, true, false, 12, 12)
	sprite_collision_mask(attack_u, false, 2, 4, 4, 19, 19, 0, 0)	
	var gblink_d = sprite_add("stranger/gblink_d.png", 5, true, false, 12, 12)
	sprite_collision_mask(gblink_d, false, 2, 4, 4, 19, 19, 0, 0)	
	var gblink_r = sprite_add("stranger/gblink_r.png", 5, true, false, 12, 12)
	sprite_collision_mask(gblink_r, false, 2, 4, 4, 19, 19, 0, 0)	
	var gblink_l = sprite_add("stranger/gblink_l.png", 5, true, false, 12, 12)
	sprite_collision_mask(gblink_l, false, 2, 4, 4, 19, 19, 0, 0)	
	var gblink_u = sprite_add("stranger/gblink_u.png", 5, true, false, 12, 12)
	sprite_collision_mask(gblink_u, false, 2, 4, 4, 19, 19, 0, 0)	
	var item_get = sprite_add("stranger/item_get.png", 1, true, false, 12, 12)
	sprite_collision_mask(item_get, false, 2, 4, 4, 19, 19, 0, 0)		
	var hit = sprite_add("stranger/hit.png", 2, true, false, 12, 12)
	sprite_collision_mask(hit, false, 2, 4, 4, 19, 19, 0, 0)		
	var fall = sprite_add("stranger/fall.png", 6, true, false, 12, 12)	
	sprite_collision_mask(fall, false, 2, 4, 4, 19, 19, 0, 0)		
	
	return [down,left,right,up,attack_d,attack_l,attack_r,attack_u,gblink_d,gblink_r,gblink_l,gblink_u,item_get,hit,fall]
	/* For convenience...
	0 = down 
	1 = left 
	2 = right 
	3 = up 
	4 = attack_d 
	5 = attack_l
	6 = attack_r
	7 = attack_u
	8 = gblink_d
	9 = gblink_r
	10 = gblink_l
	11 = gblink_u
	12 = item_get
	13 = hit
	14 = fall
	*/
	
	/*spr_ev_items = sprite_add(dir+file+"items.png", 5, true, false, 8, 8)	
	if custom_wings = true {
	   global.custom_wings = true
	   spr_ev_wings = sprite_add(dir+file+"wings.png", 3, true, false, 8, 8)		
	   spr_ev_wings_dissipate = sprite_add(dir+file+"wings_dissipate.png", 13, true, false, 8, 8)		   
	}
	if custom_sword = true {
	   global.custom_sword = true
	   spr_ev_sword = sprite_add(dir+file+"sword.png", 4, true, false, 8, 8)		
	   spr_ev_sword_flash = sprite_add(dir+file+"sword_flash.png", 4, true, false, 8, 8)		   
	}*/
	global.custom_stranger = 1
	//global.stranger = 23

}

function ev_custom_sprite(){
	if global.custom_stranger = true {
	   var strange=ev_custom_init()
	   sprite_index=strange[0]
	} else
	   sprite_index=asset_get_index("spr_question")
}