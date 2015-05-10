var xx, yy;

xx = 10;
yy = 10;
instance_create(xx, yy, objRoadTile);

yy += sprite_get_height(sprRoad) * 1.5;
instance_create(xx, yy, objGrassTile);
