// Update the location and size of the sprite according to the zoom level
var scalex, scaley;
scalex = view_wview[0] / room_width;
scaley = view_hview[0] / room_height;

x = (originx * scalex) + view_xview[0];
y = (originy * scaley) + view_yview[0];
