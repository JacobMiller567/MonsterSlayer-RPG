
position_hidden_x = 4100;
position_hidden_y = 0;

position_shown_x = 710// 1095;
position_shown_y = 0//0;
//position_shown_x = bbox_left + 700;
//position_shown_y = bbox_top;

		

position_current_x = position_hidden_x;
position_current_y = position_hidden_y;


// current position
x = position_hidden_x;
y = position_hidden_y;



// close panel
instance_close_shop = instance_create_depth(x, y, depth - 1, oUI_Close);
instance_close_shop.parent = id;


// Skill upgrade button 

instance_close_shop = instance_create_depth(x, y, depth - 1, Skill_Damage);
instance_close_shop.parent = id;


instance_close_shop = instance_create_depth(x, y, depth - 1, Skill_Health);
instance_close_shop.parent = id;

instance_close_shop = instance_create_depth(x, y, depth - 1, Skill_Speed);
instance_close_shop.parent = id;




hide = function() {	
	position_current_x = position_hidden_x;
	position_current_y = position_hidden_y;
}

show = function() {
	
	position_current_x = position_shown_x;
	position_current_y = position_shown_y;
}