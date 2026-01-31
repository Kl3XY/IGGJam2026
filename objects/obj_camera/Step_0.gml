var lr = keyboard_check(vk_right) - keyboard_check(vk_left);
var ud = keyboard_check(vk_down) - keyboard_check(vk_up);

x = lerp(x, obj_player.x + obj_player.xSpd * 32, 0.2 * delta);
y = lerp(y, obj_player.y + obj_player.ySpd * 10, 0.2 * delta);