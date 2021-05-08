function scr_draw_3slice(spr_index,img_index,x,y,w)
{
	
	x = round(x);
	y = round(y);
	w = round(w);

	
	//sprite should be divisible by 3
	var section_width = (sprite_get_width(spr_index)/3);
	var section_height = sprite_get_height(spr_index);
	
	var middle_section_width = (w - (section_width * 2));
	var middle_total_whole_tiles = middle_section_width div section_width;
	var middle_total_segment_width_in_px = middle_section_width - (middle_total_whole_tiles * section_width);



	//left
	draw_sprite_part(spr_index,img_index,0,0,section_width,section_height,x,y);
	
	
	//middle whole sections
	for(var i = 0; i < middle_total_whole_tiles; i += 1;)
	{
		draw_sprite_part(spr_index,img_index,section_width,0,section_width,section_height,x + section_width + (section_width * i),y);
	}
	
	//middle remaining amount
	if (middle_total_segment_width_in_px != 0)
	{
		draw_sprite_part(spr_index,img_index,section_width,0,middle_total_segment_width_in_px,section_height,x + section_width + (section_width * i),y);
	}
	
	//right
	draw_sprite_part(spr_index,img_index,section_width * 2,0,section_width,section_height,x + section_width + (section_width * i) + middle_total_segment_width_in_px,y);
}