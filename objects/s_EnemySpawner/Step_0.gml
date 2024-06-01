if (e_s) {
    show_debug_message("Spawning Enemy...");
    
    // Determine off-screen spawn position
	var rm_width = room_width;
    var rm_height = room_height;
    var offset = 200; // Adjust as needed
    
    // Randomly choose off-screen side
    var spawn_x;
    var spawn_y;
    if (random(2)) {
        // Spawn either on the left or right side of the room
        if (random(2)) {
            // Spawn on the left side
            spawn_x = -offset;
        } else {
            // Spawn on the right side
            spawn_x = room_width + offset;
        }
        // Randomly select a y-coordinate within the room height
        spawn_y = random(room_height);
    } else {
        // Spawn either on the top or bottom side of the room
        if (random(2)) {
            // Spawn on the top side
            spawn_y = -offset;
        } else {
            // Spawn on the bottom side
            spawn_y = room_height + offset;
        }
        // Randomly select an x-coordinate within the room width
        spawn_x = random(room_width);
    }
    
    // Spawn enemy off-screen
    instance_create_layer(spawn_x, spawn_y, "Enemy", o_enemy);
    
    // Reset spawn flag and set the next spawn time
    e_s = false;
    alarm[0] = 90; // Set the alarm for the next spawn
}