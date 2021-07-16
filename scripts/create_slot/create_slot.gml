// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_slot(slot,position,text)
{

	if (is_undefined(position)) position = noone
	if (is_undefined(text)) text = noone

	slot.text_position = position
	slot.text = text
	
	return slot;
	
	

}