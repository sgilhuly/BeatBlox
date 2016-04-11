//If destroyRow is false, destroy column
r = argument0; 
c = argument1; 
numConsecutive = argument2; 
destroyRow = argument3;

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

