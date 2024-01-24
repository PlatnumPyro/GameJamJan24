/// @description Particle
// You can write your code in this editor

//particle_burst
var _ps = part_system_create();
part_system_draw_order(_ps, true);

//Emitter
var _ptype1 = part_type_create();
part_type_sprite(_ptype1, spr_particle, false, true, false)
part_type_size(_ptype1, 0, 1, 0, 0);
part_type_scale(_ptype1, 0.1, 0.1);
part_type_speed(_ptype1, 1, 1, 0, 0);
part_type_direction(_ptype1, 0, 360, 1, 0);
part_type_gravity(_ptype1, 0, 270);
part_type_orientation(_ptype1, 0, 180, 5, 0, false);
part_type_colour3(_ptype1, $FFFFFF, $FFFFFF, $FFFFFF);
part_type_alpha3(_ptype1, 1, 1, 1);
part_type_blend(_ptype1, false);
part_type_life(_ptype1, 70, 90);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -32, 32, -32, 32, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_burst(_ps, _pemit1, _ptype1, 200);
part_emitter_delay(_ps, _pemit1, 0, 1, time_source_units_seconds)

part_system_position(_ps, mouse_x, mouse_y);







