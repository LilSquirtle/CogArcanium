rightKey=max(keyboard_check(vk_right),keyboard_check(ord("D")),0);
leftKey=max(keyboard_check(vk_left),keyboard_check(ord("A")),0);
upKey=max(keyboard_check(vk_up),keyboard_check(ord("W")),0);
downKey=max(keyboard_check(vk_down),keyboard_check(ord("S")),0);
pauseKey=keyboard_check(vk_enter);
actionKey=keyboard_check_pressed(vk_space);

xaxis=(rightKey-leftKey);
yaxis=(downKey-upKey);

