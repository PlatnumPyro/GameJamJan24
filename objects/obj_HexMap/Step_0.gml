/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left))
{
	var numTiles = ds_list_size(hexTiles);
	var currentTile = undefined;
	
	for (var i = 0; i < numTiles; i++)
	{
		currentTile = ds_list_find_value(hexTiles, i);
		if (currentTile.isFocused == true)
		{
			selectedHexTileIndex = currentTile.tileID;
			
			with (global.gameManager)
			{
				event_perform(ev_other, ev_user2);
			}
		}
	}
}