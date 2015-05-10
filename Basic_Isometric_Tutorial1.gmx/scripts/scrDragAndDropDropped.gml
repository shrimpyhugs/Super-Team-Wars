var mouseControl, isoGrid, gridDimensions;
isoGrid = instance_find(objIsoGrid, 0);
mouseControl = instance_find(objMouseControl, 0);
gridDimensions = instance_find(objGridDimensions, 0);

if (beingDragged) 
{
    beingDragged = false;
    mouseControl.EnablePanning = true;

    // Find the grid location the tile was dropped at
    with (mouseControl) {
        scrMouseToGrid();
    }
    // Set the tile of the isometric grid to the sprite of this object
    if ((mouseControl.gridx >= 0) && (mouseControl.gridx < gridDimensions.gridWidth) &&
        (mouseControl.gridy >= 0) && (mouseControl.gridy < gridDimensions.gridHeight))
    {
        isoGrid.gridCell[mouseControl.gridx, mouseControl.gridy] = sprite_index;
    }
}
