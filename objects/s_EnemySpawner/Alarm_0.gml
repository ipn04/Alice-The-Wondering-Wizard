// Define the spawn range
var spawn_margin = 100; // Distance from the edge of the screen

// Get camera's position and dimensions from o_player
var cam_x = o_player.x - (camWidth / 2);
var cam_y = o_player.y - (camHeight / 2);
var cam_w = camWidth;
var cam_h = camHeight;

// Determine the spawn position off-screen
var spawn_x, spawn_y;

// Randomly decide which side to spawn from
switch (irandom(3)) {
    case 0: // Left side
        spawn_x = cam_x - spawn_margin;
        spawn_y = random_range(cam_y - spawn_margin, cam_y + cam_h + spawn_margin);
        break;
    case 1: // Right side
        spawn_x = cam_x + cam_w + spawn_margin;
        spawn_y = random_range(cam_y - spawn_margin, cam_y + cam_h + spawn_margin);
        break;
    case 2: // Top side
        spawn_x = random_range(cam_x - spawn_margin, cam_x + cam_w + spawn_margin);
        spawn_y = cam_y - spawn_margin;
        break;
    case 3: // Bottom side
        spawn_x = random_range(cam_x - spawn_margin, cam_x + cam_w + spawn_margin);
        spawn_y = cam_y + cam_h + spawn_margin;
        break;
}

// Create enemy at the calculated position
instance_create_layer(spawn_x, spawn_y, "Enemy", o_enemy);

// Reset the alarm
alarm[0] = 30;