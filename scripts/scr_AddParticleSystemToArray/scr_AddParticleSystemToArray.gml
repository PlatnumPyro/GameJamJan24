// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_AddParticleSystemToArray(pArray, pTileX, pTileY, pCurseLevel)
{
	var particleSystem = part_system_create();
	part_system_draw_order(particleSystem, true);

	//Emitter
	var _ptype1 = part_type_create();
	part_type_sprite(_ptype1, spr_particle, false, true, false);
	part_type_size(_ptype1, 0, 1*pCurseLevel, 0, 0);
	part_type_scale(_ptype1, 0.1, 0.1);
	part_type_speed(_ptype1, 1, 1, 0, 0);
	part_type_direction(_ptype1, 0, 360, 1, 0);
	part_type_gravity(_ptype1, 0, 90);
	part_type_orientation(_ptype1, 0, 180, 5, 0, false);
	part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
	part_type_alpha3(_ptype1, 0.502/pCurseLevel, 0.251, 0);
	part_type_blend(_ptype1, false);
	part_type_life(_ptype1, 50, 0);

	var _pemit1 = part_emitter_create(particleSystem);
	part_emitter_region(particleSystem, _pemit1, -40, 40, -40, 40, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(particleSystem, _pemit1, _ptype1, 1);

	part_system_position(particleSystem, pTileX, pTileY);
	
	ds_list_add(pArray, particleSystem);
}

