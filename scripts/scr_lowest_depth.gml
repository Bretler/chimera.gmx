/**********************************
This script:
* Creates a temporary ds_list to sort depths
* Finds the lowest depth of the list
* Deletes the list
* Returns the lowest depth object (if no object is found, it returns "noone"
***********************************/

var obj_type = argument0; // argument0 will be the object you're clicking on
var obj = noone;
var obj_list = ds_list_create(); // a temporary list to sort all objects touched by mouse

/**********************************
Create a temporary ds_list to sort depths
***********************************/
with (obj_type){ 
    if (position_meeting(mouse_x, mouse_y, id)) // if the argument object isn't the only object the mouse clicked on
    ds_list_add(obj_list, id); // add other objects to the ds_list
}

/**********************************
Find the lowest depth in the list
***********************************/
var i;
for(i = 0; i < ds_list_size(obj_list); i += 1){ // repeat this code as many times as there are positions in the ds list (i represents the position, everytime the code repeats)
    if (obj == noone) obj = obj_list[|0]; // initialize obj as the first object in the ds_list
    else if (obj.depth > obj_list[|i].depth) obj = obj_list[|i]; // compare obj to the current i position. i has a lesser depth, it becomes the obj
}

/**********************************
Destroy the list
***********************************/
ds_list_destroy(obj_list);


/**********************************
Return the lowest depth object
***********************************/
return obj; // the lowest depth of the ds_list



