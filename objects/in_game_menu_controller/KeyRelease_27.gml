var layerID = layer_get_id("menu_layer")
if(isShowing){
	isShowing = false;
	instance_deactivate_layer(layerID)
}else{
	isShowing = true;
	instance_activate_layer(layerID)
}