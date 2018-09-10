if instance_number(oPolice) == 0
{
	repeat(police_number)
	{	
		instance_create_layer(random_range(0,room_width),10, "Instances",oPolice)
	}
	police_number ++
}
