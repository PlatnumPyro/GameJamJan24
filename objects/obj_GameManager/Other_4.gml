if (room == room_first)
{
	clickableList = instance_create_layer(room_width/2, 100, "Instances", obj_ClickableStringList);
	
	clickableList.stringList = titleMenuStringList;
}