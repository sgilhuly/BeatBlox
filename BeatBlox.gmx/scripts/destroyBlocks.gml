//If destroyRow is false, destroy column
blocks = argument0; 
r = argument1; 
c = argument2; 
numConsecutive = argument3; 
destroyRow = argument4;

indexStart = r;

if(destroyRow) {
    indexStart = c;
}

indexEnd = indexStart + numConsecutive - 1;
 
for(i = indexStart; i <= indexEnd ; i++) {
    if(destroyRow) {
        blocks[r, i].destroyed = true;
    } else {
        blocks[i, c].destroyed = true;
    }
}

