/**********************************
This script:
* Creates a new surface
* Draws a card onto the surface based on global.my_csv array values
* Creates a sprite from the surface
* Assigns that sprite as the sprite_index of the object
* Deletes the surface
***********************************/
current_card_number = card_number;
/**********************************
Create new surface
***********************************/

if (!surface_exists(surface)) {
    surface = surface_create(360,504);// create a new surface
    surface_set_target(surface); // start drawing on surface

/**********************************
Draw onto surface
***********************************/

    // draw the card illustration image first
    draw_sprite(spr_card_img,(current_card_number + 1),151,317); //the y parameter used to be "144+173". Wasn't sure why and it seems to work with just the result.
    
    // draw the card template second
    if global.my_csv[current_card_number,2] = "w" { // card color
        draw_sprite(spr_card_template, 5, 0, 0);  
    } else if global.my_csv[current_card_number,2] = "r" {
        draw_sprite(spr_card_template, 4, 0, 0);
    } else if global.my_csv[current_card_number,2] = "g" {
        draw_sprite(spr_card_template, 3, 0, 0);   
    } else if global.my_csv[current_card_number,2] = "u" {
        draw_sprite(spr_card_template, 2, 0, 0);    
    } else if global.my_csv[current_card_number,2] = "b" {
        draw_sprite(spr_card_template, 1, 0, 0); 
    }
    
    // draw the card text third
    draw_set_color(c_black)
    draw_set_font(roboto_condensed_12);
    draw_text(17, 11, global.my_csv[current_card_number,3]) // cost
    draw_set_color(c_white);
    draw_text(50, 11, global.my_csv[current_card_number,4]); // name
    draw_set_color(c_black); // reset
        if (card_attk < card_attk_starting) draw_set_color(c_red)
        if (card_attk > card_attk_starting) draw_set_color(c_green)
    draw_text(315, 11, card_attk); // var set by create event to change string to real
    draw_set_color(c_black); // reset
        if (card_def < card_def_starting) draw_set_color(c_red)
        if (card_def > card_def_starting) draw_set_color(c_green)
    draw_text(332, 11, card_def); // var set by create event to change string to real
    draw_set_color(c_black); // reset
    draw_set_font(roboto_condensed_10);
    draw_text_ext(50, 50, global.my_csv[current_card_number, 7], 15, 275); // desc
    
/**********************************
Creates a sprite from the surface
***********************************/
    
    if (spr_custom_card !=0 ) sprite_delete(spr_custom_card); // delete old version
    
    spr_custom_card = sprite_create_from_surface(surface, 0, 0, 360, 504, false, true, 0, 0);

/**********************************
Assigns that sprite as the sprite_index of the object
***********************************/
        
    sprite_index = spr_custom_card; // set new sprite to sprite_index
    sprite_set_offset(sprite_index, sprite_width/2, sprite_height/2); // center sprite origin
    
    // set sapped angle
    if !sapped image_angle = 0;
    if sapped image_angle = -90;

/**********************************
Delete the surface
***********************************/   

    surface_reset_target(); // stop drawing on surface
    surface_free(surface);  // delete the surface    
}
