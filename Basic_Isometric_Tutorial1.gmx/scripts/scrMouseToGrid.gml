var isoGrid, templateTile;
isoGrid = instance_find(objIsoGrid, 0);
templateTile = sprRoad;

// Work out where to draw the sprite that we're dragging, snapped to a grid location
// scale the mouse's location into room coordinates
var roomX, roomY;
roomX = view_xview[0] + (window_mouse_get_x() * (view_wview[0] / window_get_width()));
roomY = view_yview[0] + (window_mouse_get_y() * (view_hview[0] / window_get_height()));   
    
// Determine the grid location for this tile
var xx, yy;
xx = (roomX - isoGrid.xorigin) / sprite_get_width(templateTile);
yy = (roomY - isoGrid.yorigin) / sprite_get_height(templateTile);
    

// Set the values of the grid position ready for examination from the calling routine
gridx = round(xx + yy) - 1;
gridy = round(yy - xx);
   
