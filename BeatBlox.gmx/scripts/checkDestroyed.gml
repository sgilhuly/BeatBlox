blocks = argument0;
for(r = 0; r < grid_height; r++) {
    for( c = 0; c < grid_width; c++) {
        if(blocks[r, c].destroyed) {
            with(blocks[r,c]) {
                instance_destroy(); 
            }                               
        }
    }
}

