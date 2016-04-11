//if we're not checking a row, assume we're checking a column
var isRow = argument0;

var primarySize = grid_width;
var destroySize = grid_height; 

if(isRow) {
    primarySize = grid_height;
    destroySize = grid_width; 
}

for(var i = 0; i < primarySize; i++) {
    var numConsecutive = 1;
    var prevColour = -1;
    for(var j = 0; j <= destroySize; j++) {
        var r = j;
        var c = i;
        if(isRow) { 
            r = i;
            c = j;
        }
        
        if(r < grid_height && c < grid_width && 
            blocks[r, c].colour == prevColour ) {
            numConsecutive++;
        } else {
            if(numConsecutive >= 3) {
                //destroy them
                var rStart = r;
                var cStart = c;
                if(isRow) {
                    cStart-=numConsecutive;
                } else {
                    rStart-=numConsecutive;
                }
                destroyBlocks(rStart, cStart, 
                    numConsecutive, isRow);
            }
            numConsecutive = 1;
        }
        if(r < grid_height && c < grid_width) {
            prevColour = blocks[r, c].colour;
        }
    }
}

