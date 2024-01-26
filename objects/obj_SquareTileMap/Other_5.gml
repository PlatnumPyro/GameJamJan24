/// @description clear particles
// You can write your code in this editor

var listSize = ds_list_size(particleArray);
var particleSystem = undefined;
if (listSize != 0)
{
	for(var i = 0; i < listSize; i++)
	{
		particleSystem = ds_list_find_value(particleArray, i);
		part_emitter_destroy_all(particleSystem);
	}
}