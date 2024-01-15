function scr_RemoveDuplicateValuesFromList(pList, pValue)
{
	var cleared = false;
	var listSize = -1;
	var currentValueToCheck = undefined;
		 
	while (cleared == false)
	{
		 listSize = ds_list_size(pList);
	
		cleared = true;
		for(var i = 0; i < listSize; i++)
		{
			currentValueToCheck = ds_list_find_value(pList, i);
			
			if (is_array(pValue) && is_array(currentValueToCheck))
			{
				if (array_length(pValue) == array_length(currentValueToCheck))
				{
					for(var j = 0; j < array_length(pValue); j++)
					{
						if (pValue[j] != currentValueToCheck[j])
						{
							break;
						}
						else if (j == array_length(pValue)-1)
						{
							ds_list_delete(pList, i);
							break;
						}
					}
				}
			}
			else if (currentValueToCheck == pValue)
			{
				ds_list_delete(pList, i);
				cleared = false;
				break;
			}
		}
	}
}