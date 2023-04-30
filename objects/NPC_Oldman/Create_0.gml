image_speed = 0.5;
player_detected = false;
range = 45;
loop_audio = true;

//str = global.npc_quest.quest_1.quest1[0];

// Quest 1 dialogue
text[0] = "Hello traveler, I am in desperate need of help!";
text[1] = "Snails have started to reside outside of the village and are eating away at our crops.";
text[2] = "With how things are going I doubt we will all survive this upcoming winter.";
text[3] = "You seem strong traveler.";
text[4] = "Will you please save the village by getting rid of those snails?";

// Quest 2 dialogue
text[5] = "You are a hero my friend! Thank you so much for saving the village";
text[6] = "Friend, you are even stronger than I imagined.";
text[7] = "Out east, past the grasslands are the caves, where wild boar have recently been spotted";
text[8] = "The miners in that area have sent out a request for some help dealing with them";
text[9] = "I am sure they will reward you nicely if you lend them your strength";


//current_text = 0; // current text array position
//last_text = 4; // last text array position
text_width = 64; // width of text before wrapping // 26
text_x = 110; // x position of text box in the room
text_y = 350; // y position of text box in the room

current_char = 1; // current character of text
char_speed = 0.5; // how fast text appears



//text[current_text] = wrap_strings(text[global.current_text], text_width); // call wrap_strings function
//text[global.current_text] = wrap_strings(text[global.current_text], text_width); // call wrap_strings function
textEnd = false;

if (global.current_text == 9 and global.current_quest >= 1)
{
	textEnd = true
}


// Quests
quest[0] = "Hunt 4 snails";
quest[1] = "Investigate caves out east";
//global.quest[0] = "Hunt 4 snails";
//global.quest[1] = "Investigate caves out east";


//current_quest = 0;
//quest_complete = false;


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
		audio_play_sound(sndQuestComplete, 30, false);
	}
}