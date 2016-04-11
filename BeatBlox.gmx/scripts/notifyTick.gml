block = argument0;
with(block) {   
    if(!frozen) {
        colour = (colour + 1) % max_colours;
    }  
    
    if(destroyed) {
        image_blend = colours_destroyed[colour];
    } else {
        image_blend = colours[colour];
    }       
}
