var cameraView = camera_create_view(0, 0, CAMERA_VIEWPORT_WIDTH, CAMERA_VIEWPORT_HEIGHT);

view_visible[0] = true;
view_enabled[0] = true;

view_set_camera(0, cameraView);
camera_set_view_target(cameraView, global.player);
camera_set_view_border(cameraView, (CAMERA_VIEWPORT_WIDTH/2) - CAMERA_SLACK_IN_PIXELS, (CAMERA_VIEWPORT_HEIGHT/2) - CAMERA_SLACK_IN_PIXELS);