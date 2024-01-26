/// @description Particle Stream
// You can write your code in this editor

if (curseParticles != tileCurseLevel) {
	
	// Clear old particles
	if(particleSystem!=undefined) {
		part_emitter_destroy_all(particleSystem);
	}
	
	// Make new particles if the tile curse level is not 0
	if(tileCurseLevel != 0)
	{
		//particle_stream
		particleSystem = part_system_create();
		part_system_draw_order(particleSystem, true);

		//Emitter
		var _ptype1 = part_type_create();
		part_type_sprite(_ptype1, spr_particle, false, true, false)
		part_type_size(_ptype1, 0, 1*tileCurseLevel, 0, 0);
		part_type_scale(_ptype1, 0.1, 0.1);
		part_type_speed(_ptype1, 1, 1, 0, 0);
		part_type_direction(_ptype1, 0, 360, 1, 0);
		part_type_gravity(_ptype1, 0, 90);
		part_type_orientation(_ptype1, 0, 180, 5, 0, false);
		part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
		part_type_alpha3(_ptype1, 0.502/tileCurseLevel, 0.251, 0);
		part_type_blend(_ptype1, false);
		part_type_life(_ptype1, 50, 0);

		var _pemit1 = part_emitter_create(particleSystem);
		part_emitter_region(particleSystem, _pemit1, -32, 32, -32, 32, ps_shape_ellipse, ps_distr_linear);
		part_emitter_stream(particleSystem, _pemit1, _ptype1, 1);

		part_system_position(particleSystem, x, y);
	}
	
	curseParticles = tileCurseLevel
}