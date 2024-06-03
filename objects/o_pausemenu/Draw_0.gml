if (pause) {
    var cam_x = camera_get_view_x(view_camera[0]); // Get camera's x position
    var cam_y = camera_get_view_y(view_camera[0]); // Get camera's y position
    var cam_w = camera_get_view_width(view_camera[0]); // Get camera's width
    var cam_h = camera_get_view_height(view_camera[0]); // Get camera's height

    draw_set_color(c_black);
    draw_set_alpha(0.5); // Semi-transparent
    draw_rectangle(cam_x, cam_y, cam_x + cam_w, cam_y + cam_h, false);
    draw_set_alpha(1); // Reset alpha
    
    draw_set_halign(fa_center);
    draw_set_font(fMiscs);
    draw_set_color(c_white);


    var button_width = 200;
    var button_height = 40;
    var button_spacing = 100;

    // Calculate button positions
    var button_x = cam_x + (cam_w - button_width) / 2;
    var button_restart_y = cam_y + cam_h / 2 - button_height - button_spacing;
    var button_continue_y = cam_y + cam_h / 2;
    var button_quit_y = cam_y + cam_h / 2 + button_height + button_spacing;

    // Check if the mouse is hovering over the buttons
    var hovering_restart = point_in_rectangle(mouse_x, mouse_y, button_x, button_restart_y, button_x + button_width, button_restart_y + button_height);
    var hovering_continue = point_in_rectangle(mouse_x, mouse_y, button_x, button_continue_y, button_x + button_width, button_continue_y + button_height);
    var hovering_quit = point_in_rectangle(mouse_x, mouse_y, button_x, button_quit_y, button_x + button_width, button_quit_y + button_height);

    // Draw button text
    draw_set_color(c_white);
    draw_text(button_x + button_width / 2, button_restart_y + button_height / 2, "Restart");
    draw_text(button_x + button_width / 2, button_continue_y + button_height / 2, "Continue");
    draw_text(button_x + button_width / 2, button_quit_y + button_height / 2, "Quit");

    // Check for button clicks
    if (mouse_check_button_pressed(mb_left)) {
        if (hovering_restart) {
			game_restart();
        } else if (hovering_continue) {
			pause = false;
			instance_activate_all();
        } else if (hovering_quit) {
            game_end();
        }
    }
}
