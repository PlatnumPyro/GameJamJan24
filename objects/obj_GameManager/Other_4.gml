if (room == room_first)
{
	clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList);
	
	clickableList.viewPosX = room_width/2;
	clickableList.viewPosY = 400;
	clickableList.stringList = titleMenuStringList;
}
else if(room == room_HexWorldMap)
{
	hexMap = instance_create_layer(room_width/2, room_height/2, "Instances", obj_HexMap);
}
else if (room == room_Overworld)
{
	hud = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_HUD);

	//player must be created first so camera does not explode
	global.player = instance_create_layer(1920, 1080, "Instances", obj_Player); //position is a temporary measure
	camera = instance_create_layer(0, 0, "Instances", obj_Camera);

}