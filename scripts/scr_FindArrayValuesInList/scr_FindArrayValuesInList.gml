function scr_FindArrayValuesInList(pList, pValue, pRemove = false)
{
	var cleaned = false;
	var listSize = -1;
	var currentValueToCheck = undefined;

	while (cleaned == false)
	{
		cleaned = true;
		listSize = ds_list_size(pList);
		
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
							if (pRemove == true)
							{
								ds_list_delete(pList, i);
								cleaned = false;
								break;
							}
							else
							{
								return true;
							}
						}
					}
				}
			}
			else
			{
				throw "LOOKING FOR VALUE THAT IS NOT AN ARRAY";
			}
			
			if (cleaned == false)
			{
				break;
			}
		}
	}
	return false;
}
