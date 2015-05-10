// Setup the isometric grid according to how big it currently is
var gridDimensions;
gridDimensions = instance_create(0, 0, objGridDimensions);

var i, j;
for (i = 0; i < gridDimensions.gridWidth; i += 1) 
{
    for (j = 0; j < gridDimensions.gridHeight; j += 1)
    {
        // Place the sprite at this locale
        gridCell[i,j] = sprGrass;
    }
}

// Get the template tile used for defining the size of an isometric tile
templateTile = sprRoad;

// Work out the origin for the grid within the room
var gridHeight;
gridHeight = (sprite_get_height(templateTile) / 2) * gridDimensions.gridHeight;

xorigin = (room_width - sprite_get_width(templateTile)) / 2;
yorigin = (room_height - gridHeight - sprite_get_height(templateTile)) / 2;
