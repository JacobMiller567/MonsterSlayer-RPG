image_speed = 0.5;
player_detected = false;
range = 55;
loop_audio = true;


text[0] = "Hello Traveler, Welcome to our small town behind the mountains!";
text[1] = "If you made it here in one piece then you must be quite strong";
text[2] = "There has been rumors that a dungeon has randomly apperead east of here";
text[3] = "I don't know how strong you are but dungeons have really powerful monsters";
text[4] = "Not only are the monsters powerful but they even have a king that rules over them";
text[5] = "Here is a bit of xp and money as a gift from the town."; 
text[6] = "Good luck out there traveler!";



//current_text = 0; // current text array position
//last_text = 6; // last text array position
text_width = 26; // width of text before wrapping
text_x = 140; // x position of text box in the room
text_y = 350; // y position of text box in the room

current_char = 1; // current character of text
char_speed = 0.75; // how fast text appears

//text[current_text] = wrap_strings(text[global.current_text], text_width); // call wrap_strings function


if (global.current_text == 6 and global.current_quest >= 5)
{
	textEnd = true
}
// Quests
//global.quest[4] = "Find the Dungeon?";


/*
quest_amount = function(amount = 1)
{
	// when player kills 4 snails, call this function
	if (amount >= 4)
	{
		
		//quest_complete = true;
		global.quest_complete = true;
		global.track_kills = 0;
		global.current_text = 5;
		global.last_text = 9;
	}
}
*/

