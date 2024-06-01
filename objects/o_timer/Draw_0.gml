draw_set_color(c_white);
draw_set_font(fMiscs);

var time_string;
if (global.hours > 0) {
    time_string = string_format(global.hours, 2, 0) + ":" +
                  string_format(global.minutes, 2, 0) + ":" +
                  string_format(global.seconds, 2, 0);
} else if (global.minutes > 0) {
    time_string = string_format(global.minutes, 2, 0) + ":" +
                  string_format(global.seconds, 2, 0);
} else {
    time_string = string_format(global.seconds, 2, 0);
}

var view_x = camera_get_view_x(view_camera[0]);
var view_width = camera_get_view_width(view_camera[0]);
var text_width = string_width(time_string);

var text_x = view_x + (view_width - text_width) / 2;

var view_y = camera_get_view_y(view_camera[0]);

draw_text(text_x, view_y + 50, time_string);
