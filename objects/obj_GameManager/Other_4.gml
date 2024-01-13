if (room == room_first)
{
	//instance_create_layer(view_get_wport(0)/2, view_get_hport(0), "InstanceLayer", obj_ClickableStringList, 
	clickableList = instance_create_layer(room_width/2, 100, "Instances", obj_ClickableStringList);
	
	clickableList.stringList = titleMenuStringList;
}