
//Peker mot musepeker
image_angle = point_direction(x, y, mouse_x, mouse_y);

//Hvis "W" er nede gå mot musepekeren, ellers stå i ro.
if (keyboard_check(ord("W"))) and (keyboard_check(vk_shift))
{
	sprite_index = sPlayerRun;
	move_towards_point(mouse_x, mouse_y, spd_run);
}
else if keyboard_check(ord("W"))
{
	sprite_index = sPlayerWalking;
	move_towards_point(mouse_x, mouse_y, spd);
}
else 
{
sprite_index = sPlayerStand;
move_towards_point(mouse_x, mouse_y, 0);
}

//Stopp hvis spilleren er 12 piksler unna oCursor
if collision_circle(x,y,12,oCursor,false,true) 
{
sprite_index = sPlayerStand;
move_towards_point(mouse_x, mouse_y, 0);
}
//Pang hvis man trykker på SPACE

if shoot_cooldown < 0 and keyboard_check(vk_space)
{
var bullet = instance_create_layer(x,y,"Instances", oBullet)
bullet.direction = point_direction(x,y,mouse_x, mouse_y);
bullet.image_angle = point_direction(x,y,mouse_x, mouse_y);
bullet.start_mouse_x = mouse_x
bullet.start_mouse_y = mouse_y
shoot_cooldown = 20

}
	
shoot_cooldown --

