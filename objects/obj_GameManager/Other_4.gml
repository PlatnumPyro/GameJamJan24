if (room == room_first)
{
	clickableList = instance_create_layer(room_width/2, 100, "Instances", obj_ClickableStringList);
	
	clickableList.stringList = titleMenuStringList;
}
else if(room == room_HexWorldMap)
{
	hexMap = instance_create_layer(room_width/2, room_height/2, "Instances", obj_HexMap);
}
else if (room == room_Overworld)
{
	cursebar = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_HUD);
}