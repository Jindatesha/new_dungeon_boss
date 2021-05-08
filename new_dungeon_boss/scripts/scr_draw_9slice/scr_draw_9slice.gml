function scr_draw_9slice(spr_index,img_index,x1,y1,x2,y2)
{
	
	x1 = round(x1);
	x2 = round(x2);
	y1 = round(y1);
	y2 = round(y2);
	
	//sprite should be divisible by 3
	var section_width = (sprite_get_width(spr_index)/3);
	var section_height = (sprite_get_height(spr_index)/3);
	var length_to_be_bridged_w = abs((x2 - x1) - (section_width * 2));
	var length_to_be_bridged_h = abs((y2 - y1) - (section_height * 2));
	var whole_segments_requiredw = length_to_be_bridged_w div section_width;
	var whole_segments_requiredh = length_to_be_bridged_h div section_height;
	var portion_segments_requiredw = (length_to_be_bridged_w / section_width) - whole_segments_requiredw;
	var portion_segments_requiredh = (length_to_be_bridged_h / section_height) -  whole_segments_requiredh;
	
	#region draw the corners
		//topleft
		draw_sprite_part(spr_index,img_index,0,0,section_width,section_height,x1,y1);
		//topright
		draw_sprite_part(spr_index,img_index,section_width * 2,0,section_width,section_height,x2 - section_width,y1);
		//botleft
		draw_sprite_part(spr_index,img_index,0,section_height * 2,section_width,section_height,x1,y2 - section_height);
		//botright
		draw_sprite_part(spr_index,img_index,section_width * 2,section_height * 2,section_width,section_height,x2 - section_width,y2 - section_height);
	#endregion
	
	#region draw the parameter side lines
		
		//i sperated them to account for the sprite not being a square
		
		for(var i = 0; i < whole_segments_requiredw; i += 1)
		{
			//top
			draw_sprite_part(spr_index,img_index,section_width,0,section_width,section_height,x1 + section_width + (section_width * i),y1);
			//bot
			draw_sprite_part(spr_index,img_index,section_width,section_height * 2,section_width,section_height,x1 + section_width + (section_width * i),y2 - section_height);
		}
		
		//now draw the last portion if there is one
		if portion_segments_requiredw != 0
		{
			//top
			draw_sprite_part(spr_index,img_index,section_width,0,section_width * portion_segments_requiredw,section_height,x1 + section_width + (section_width * i),y1);
			//bot
			draw_sprite_part(spr_index,img_index,section_width,section_height * 2,section_width * portion_segments_requiredw,section_height,x1 + section_width + (section_width * i),y2 - section_height);
		}
		
		
		
		
		
		for(var i = 0; i < whole_segments_requiredh; i += 1)
		{
			//left
			draw_sprite_part(spr_index,img_index,0,section_height,section_width,section_height,x1,y1 + section_height + (section_height * i));
		
			//right
			draw_sprite_part(spr_index,img_index,section_width * 2,section_height,section_width,section_height,x2 - section_width,y1 + section_height + (section_height * i));
		}
		
		//now draw the last portion if there is one
		if portion_segments_requiredh != 0
		{
			//left
			draw_sprite_part(spr_index,img_index,0,section_height,section_width,section_height * portion_segments_requiredh,x1,y1 + section_height + (section_height * i));
		
			//right
			draw_sprite_part(spr_index,img_index,section_width * 2,section_height,section_width,section_height * portion_segments_requiredh,x2 - section_width,y1 + section_height + (section_height * i));
		}
		
		
	#endregion
	
	#region draw the center of the image
	
		for(var w = 0; w < whole_segments_requiredw; w += 1;)
		{
			for(var h = 0; h < whole_segments_requiredh; h += 1;)
			{
				//center
				draw_sprite_part(spr_index,img_index,section_width,section_height,section_width,section_height,x1 + section_width + (section_width * w),y1 + section_height + (section_height * h));
			}
		}
		
		
		
		//now draw the last portion if there is one
		if portion_segments_requiredw != 0
		{
			for(var r = 0; r < whole_segments_requiredh + (ceil(portion_segments_requiredh)); r += 1;)
			{
				//top
				draw_sprite_part(spr_index,img_index,section_width,section_height,section_width * portion_segments_requiredw,section_height,x1 + section_width + (section_width * w),y1 + section_height + (section_height * r));
			}
		}
		
		//now draw the last portion if there is one
		if portion_segments_requiredh != 0
		{
			for(var c = 0; c < whole_segments_requiredw + (ceil(portion_segments_requiredw)); c += 1;)
			{
				//top
				draw_sprite_part(spr_index,img_index,section_width,section_height,section_width,section_height * portion_segments_requiredh,x1 + section_width + (section_width * c),y1 + section_height + (section_height * h));
			}		
		}
		
		
	
	#endregion

}