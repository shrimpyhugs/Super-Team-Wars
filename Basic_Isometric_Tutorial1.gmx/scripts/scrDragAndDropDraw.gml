// Draw the sprite as it is on the HUD
var scalex, scaley;
scalex = view_wview[0] / room_width;
scaley = view_hview[0] / room_height;

draw_sprite_ext(sprite_index, 0, x, y, scalex, scaley, 0, c_white, 1);


var isoGrid, mouseControl, templateTile;
isoGrid = instance_find(objIsoGrid, 0);
mouseControl = instance_find(objMouseControl, 0);
templateTile = sprRoad;

if (beingDragged) {
    
    // Find the grid position of the mouse from the mouse control object   
    with (mouseControl) {
        scrMouseToGrid();
    }
    
    // And draw this sprite with half alpha at this location
    xx = isoGrid.xorigin + (((mouseControl.gridx * 0.5) - (mouseControl.gridy * 0.5)) * sprite_get_width(templateTile));
    yy = isoGrid.yorigin + (((mouseControl.gridy * 0.5) + (mouseControl.gridx * 0.5)) * sprite_get_height(templateTile));
            
    draw_sprite_ext(sprite_index, 0, xx, yy, 1, 1, 0, c_white, 0.5);
}
