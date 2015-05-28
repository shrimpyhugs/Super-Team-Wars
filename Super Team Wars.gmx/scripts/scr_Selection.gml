ID = argument0
SelectAction = argument1

if SelectAction > 0 //Perform Selection Actions
{
    if SelectAction = 1 //L-Click       = Become selected as individual or just add to group.
    {
            ID.Selected = true
            ID.sprite_index = ID.SpriteSl
            global.Groups[0,0] += 1
            ID.MyNumber = global.Groups[0,0]
            global.Groups[0,ID.MyNumber] = ID
    }
    else if SelectAction = 2 //L-Click+Drag  = Check if in selection box, and add to group.
    {
        //if collision_point(x,y,Obj_Selection,0,0) or collision_point(x+sprite_width,y,Obj_Selection,0,0) or collision_point(x,y+sprite_height,Obj_Selection,0,0) or collision_point(x+sprite_width,y+sprite_height,Obj_Selection,0,0)
        if scr_Within_SelectionBox(x,y,32,32)
        {
            ID.Selected = true
            ID.sprite_index = ID.SpriteSl
            global.Groups[0,0] += 1
            ID.MyNumber = global.Groups[0,0]
            global.Groups[0,ID.MyNumber] = id
        }
        else
        {
            ID.Selected = false
            ID.sprite_index = ID.MySprite
        }
    }
    else if SelectAction = 3 //Ctrl+L-Click  = If selected, become deselected, otherwise add to group.
    {
        if Selected = false
        {
            ID.Selected = true
            ID.sprite_index = ID.SpriteSl
            global.Groups[0,0] += 1
            ID.MyNumber = global.Groups[0,0]
            global.Groups[0,ID.MyNumber] = id
        }
        else
        {
            ID.Selected = false
            ID.sprite_index = ID.MySprite
            global.Groups[0,ID.MyNumber] = noone
        }
    }
    else if SelectAction = 4 //Ctrl+L+Drag   = Add to group if in selection box.
    {
        if scr_Within_SelectionBox(x,y,32,32)
        {
            ID.Selected = true
            ID.sprite_index = ID.SpriteSl
            global.Groups[0,0] += 1
            ID.MyNumber = global.Groups[0,0]
            global.Groups[0,ID.MyNumber] = id
        }
    }
    else if SelectAction = 5 //R-Click+Drag  = Add this unit to the attack group.
    {}
    else if SelectAction = 6 //L-Click Ground= Delselect unit.
    {
        ID.Selected = false
        ID.sprite_index = ID.MySprite
    }
    SelectAction = 0
}
