gpu_set_blendenable(false);

if (pause){
}

if (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape)){
    if (!pause){
        pause = true;
        instance_deactivate_all(true);
    }else{
        pause = false;
        instance_activate_all();
    }
}

gpu_set_blendenable(true);