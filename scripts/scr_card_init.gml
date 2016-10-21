/**********************************
This script:
* Assigns card_number for new card
* Initializes the attk / def values
* Re-draws the sprite
***********************************/

/**********************************
Assign card_number of new card
***********************************/

card_number = argument0; // sets card_number to obj_deck's card_list size - 1

/**********************************
Initialize attk / def values
***********************************/

card_attk_starting = real(global.my_csv[card_number, 5]); // store for safe keeping
card_def_starting = real(global.my_csv[card_number, 6]); // store for safe keeping
card_attk = card_attk_starting // adjustable values
card_def = card_def_starting // adjustable values

/**********************************
Redraw sprite
***********************************/
scr_surface_to_sprite();


