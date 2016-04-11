//if isn't row, assume is column
blocks = argument0;
isRow = argument1;

primarySize = grid_width;
destroySize = grid_height; 

if(isRow) {
    primarySize = grid_height;
    destroySize = grid_width; 
}

for(i = 0; i < primarySize; i++) {
    numConsecutive = 1;
    prevColour = -1;
    for(j = 0; j < destroySize; j++) {
        r = j;
        c = i;
        if(isRow) { 
            r = i;
            c = j;
        }
        if(blocks[r, c].colour == prevColour ) {
            numConsecutive++;
        } else {
            if(numConsecutive >= 3) {
                //destroy them
                rStart = r;
                cStart = c;
                if(isRow) {
                    cStart-=numConsecutive;
                } else {
                    rStart-=numConsecutive;
                }
                destroyBlocks(blocks, rStart, cStart, 
                    numConsecutive, isRow);
            }
            numConsecutive = 1;
        } 
        prevColour = blocks[r, c].colour;
    }
}

