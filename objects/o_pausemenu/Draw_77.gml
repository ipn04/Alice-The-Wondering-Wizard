gpu_set_blendenable(false);

if (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape)){
    if (!mainpause ){
        mainpause  = true;
        instance_deactivate_all(true)
		
    }else{
        mainpause  = false;
        instance_activate_all();
    }
}

gpu_set_blendenable(true);