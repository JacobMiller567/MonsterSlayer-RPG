image_speed = 0.4;
player_detected = false;
range = 45;

text[0] = "Thank goodness support has come all the way out to the caves.";
text[1] = "The boars have started making burrows, preventing us from mining any resources.";
text[2] = "Could you help us with hunting down these beasts?";


text[3] = "Amazing! You took out those boars like they were nothing.";
text[4] = "While you were out there hunting the boars we discovered the location of their breeding grounds";
text[5] = "There seems to be some elite boars who reside in that area and are the cause to all the problems.";
text[6] = "Elite boars are very dangerous so we recommend that you are stocked up with a few potions";
text[7] = "Once you are ready could you help with getting rid of them?";


text[8] = "Wow!! You must be a veteran hunter!";
text[9] = "Thank you for all your hard work. We can now get back to work and excavate this cave!";
text[10] = "If you keep heading past the breeding ground there is an exit to the cave";
text[11] = "Outside of the cave is a mountainous region with a small town on the other side"; 
text[12] = "You can train here and level up more or go to the neighboring town in search for another quest!";



//current_text = 0; // current text array position
//last_text = 2; // last text array position
text_width = 26; // width of text before wrapping
text_x = 110; // x position of text box in the room
text_y = 350; // y position of text box in the room

current_char = 1; // current character of text
char_speed = 0.65; // how fast text appears

//text[current_text] = wrap_strings(text[current_text], text_width); // Does this fix error?

textEnd = false;


// Quests
quest[2] = "Hunt 4 Boars";
quest[3] = "Hunt 3 Elite Boars";
//global.quest[2] = "Hunt 4 Boars";
//global.quest[3] = "Hunt 3 Elite Boars";


//current_quest = 0;
//quest_complete = false;

if (global.current_text == 12 and global.current_quest >= 3)
{
	textEnd = true
}

quest_amount = function(amount = 1)
{
	// when player kills 4 snails, call this function
	if (amount >= 4 and global.current_quest == 2) {
		//quest_complete = true;
		global.quest_complete = true;
		global.track_kills = 0;
		global.current_text = 3;
		global.last_text = 7;
		audio_play_sound(sndQuestComplete, 30, false);
	}
	
	if (amount >= 3 and global.current_quest == 3) {
		//quest_complete = true;
		global.quest_complete = true;
		global.track_kills = 0;
		global.current_text = 8;
		global.last_text = 12;
		audio_play_sound(sndQuestComplete, 30, false);
	}

}