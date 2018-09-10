move_towards_point(oPlayer.x, oPlayer.y, spd);
image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);

if collision_circle(x,y,12,oPlayer,false,true) 
{
image_speed = 0;
move_towards_point(mouse_x, mouse_y, 0);
}
else image_speed = 1;
