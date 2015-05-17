///Notes
/*


Plan For PathFinding:
1) At the begining of a match, a controller creates a 'grid', and adds terrain to it.
2) When 3 or less units are selected, a path will be made for each of them.
3) When a group of 4 or more moves, a 'formation' with an origin and relative positions of each unit is created.
4)> The formation point follows a path, and the units follow it in their respective positions.
5)> If a unit would run into something, it finds an individual path to the place it needs to be in the formation
*note: this is where collisions with other units is avoided, both in formations and individually.

1)globalvar Grid;
  Grid = mp_grid_create(0,0,room_width/32, room_height/16, 32, 16)
  mp_grid_add_instances(Grid, Obj_Temp_Building, true) //Change to P_Terrain.

2)mp_grid_path(Grid, MyPath, x, y, mouse_x, mouse_y, allowdiag)




*/

