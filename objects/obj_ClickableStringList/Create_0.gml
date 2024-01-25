stringList = ds_list_create();
previousStringLists = ds_stack_create();
highlightedChoiceIndex = -1; //-1 is used for no option
halfSelectionWidth = 200;
verticalChoicePadding = 50;

// where on the screen this is being placed as self.x and self.y would not work with scrolling camera
viewPosX = 0;
viewPosY = 0;

self.depth = -105;//slightly above the GameManager