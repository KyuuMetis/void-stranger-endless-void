function create(i, j, layerr, name) {
	var game_object = asset_get_index(name)
	if game_object == -1
		show_message(name)
	return instance_create_layer(j * 16 + 8, i * 16 + 8, layerr, game_object)
}
function ev_place_level_instances() {



	wall_tilemap = layer_tilemap_create("Tiles_1", 0, 0, global.tileset_1, 224, 144)
	edge_tilemap = layer_tilemap_create("Tiles_2", 0, 0, global.tileset_edge, 224, 144)

	for (var i = 0; i < 9; i++) {
		for (var j = 0; j < 14; j++) {
			if i != 8 {
				var tile_state = global.level_tiles[i][j];
				var tile = tile_state.tile
				var game_object = tile.obj_name
				var layerr = ""
				var abort = false;
				switch (tile.tile_id) {
					default:
						layerr = "Floor"
						break;
					case glass_id:
						layerr = "Floor_INS"
						break;
					case pit_id:
						layerr = "Pit"
						break;
					case wall_id:
						abort = true;
						tilemap_set(wall_tilemap, tile_state.properties.ind, j, i)
						break;
					case edge_id:
						abort = true
						tilemap_set(edge_tilemap, tile_state.properties.ind, j, i)
						break;
				
				}
				if !abort
					create(i, j, layerr, game_object)
			}
		
			var object_state = global.level_objects[i][j];
			var object = object_state.tile
			if (object.tile_id != empty_id) {
				var game_object = object.obj_name
				var layerr = ""
				switch (object.tile_id) {
					default:
						layerr = "Instances"
						break;
				
				}
				var inst = create(i, j, layerr, game_object)
				switch (object.tile_id) {
					case leech_id:
					case maggot_id:
						inst.editor_dir = object_state.properties.dir;
						break;
					case mimic_id:
						inst.editor_type = object_state.properties.typ;
						break;
					case egg_id:
						/*
						with (inst) {
							if object_state.properties.txt[0] != "" {
								text[0] = object_state.properties.txt;
								special_message = -1
								voice = b_voice
					            moods = [neutral]
					            speakers = [id]
							}
						}
						*/
						break;
					case lev_id:
						inst.b_form = 1
						break;
					case bee_id:
						inst.b_form = 2;
						break;
					case tan_id:
						inst.b_form = 3
						break
					case cif_id:
						if object_state.properties.lmp
							inst.editor_lamp = true

						inst.b_form = 4
						break;
					case gor_id:
						inst.b_form = 5;
						break;
					case eus_id:
						inst.b_form = 6;
						break;
					case mon_id:
						inst.b_form = 7
						break;
					case add_id:
						inst.b_form = 8
						break;

					default:
						break;
				}
			}
		}
	}

}