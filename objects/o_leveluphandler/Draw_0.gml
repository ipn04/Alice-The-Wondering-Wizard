var selectedCards = [];
var cardPool = [o_damage1, o_hp5, o_attackspeed1];


if (levelpause) {
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    var cam_w = camera_get_view_width(view_camera[0]);
    var cam_h = camera_get_view_height(view_camera[0]);
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(cam_x, cam_y, cam_x + cam_w, cam_y + cam_h, false);
    draw_set_alpha(1);

    if (!shuffled) {
        var selectedCards = [];
        for (var i = 0; i < 3; i++) {
            var randomIndex = irandom(array_length(cardPool) - 1);
            selectedCards[i] = cardPool[randomIndex];
        }
        shuffled = true;
    }

    var card_x = cam_x + 180;
    var card_y = cam_y + 180;
    for (var j = 0; j < 3 && j < array_length(selectedCards); j++) {
        if (selectedCards[j] != undefined) {
            var card = instance_create_depth(card_x, card_y, 0, selectedCards[j]);
            draw_sprite(card.sprite_index, 0, card.x, card.y);
        }
        card_x += 600;
    }
}