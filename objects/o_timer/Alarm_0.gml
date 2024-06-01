global.seconds += 1;

if (global.seconds >= 60) {
    global.seconds = 0;
    global.minutes += 1;

    if (global.minutes >= 60) {
        global.minutes = 0;
        global.hours += 1;
    }
}

alarm[0] = room_speed;
