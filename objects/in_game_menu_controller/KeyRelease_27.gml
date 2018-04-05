/// @description Insert description here
// You can write your code in this editor
var layerID = layer_get_id("menu_layer")
if(isShowing){
	isShowing = false;
	instance_deactivate_layer(layerID)
}else{
	isShowing = true;
	instance_activate_layer(layerID)
}