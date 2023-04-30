
function wrap_strings(text, width) { // loops through text and checks if there is an overflow and also stores the words in a variable
	var text_wrap = "";
	var text_space = -1;
	var char_pos = 1;
	
	while (string_length(text) >= char_pos)
	{
		if (string_width(string_copy(text, 1, char_pos)) > width)
		{
			if(text_space != -1)
			{
				text_wrap += string_copy(text, 1, text_space) + "\n";
				text = string_copy(text, text_space + 1, string_length(text) - (text_space));
				char_pos = 1;
				text_space = -1;
			}
		}
		
		if (string_char_at(text, char_pos) == " ")
		{
			text_space = char_pos;
		}
		
		if (string_length(text) > 0)
		{
			text_wrap += text;
		}
		
		return text_wrap;
	}

}