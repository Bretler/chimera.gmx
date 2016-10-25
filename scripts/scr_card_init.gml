/**********************************
This script:
* Assigns card_number for new card
* Initializes the attk / def values
* Re-draws the sprite
***********************************/

/// Initialize the card

/**************************
Initialize variables
**************************/

// csv & surface
card_number = argument0; // card row in csv array
surface = noone; // surface
spr_custom_card = 0; // sprite_var that surface is drawn onto

// selection
selected = false; // is card selected?

// doubleclick
clicks = 0; // (used in alarm event)

// card state
sapped = false; // (used in left pressed)

//cost
card_cost = real(global.my_csv[card_number, 3]); // store for safe keeping

//description
card_description = real(global.my_csv[card_number, 7]); // store for safe keeping

//type
card_type = real(global.my_csv[card_number, 1]); // store for safe keeping

//name
card_name = real(global.my_csv[card_number, 4]); // store for safe keeping

/**********************************
Initialize attk / def values
***********************************/

card_attk_starting = real(global.my_csv[card_number, 5]); // store for safe keeping
card_def_starting = real(global.my_csv[card_number, 6]); // store for safe keeping
card_attk = card_attk_starting // adjustable values
card_def = card_def_starting // adjustable values




