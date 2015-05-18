ID = 0
ID = argument0

if ID != 0
{
    ID.Selected = true
    ID.sprite_index = SpriteSl
    global.Groups[0,0] += 1
    ID.MyNumber = global.Groups[0,0]
    global.Groups[0,ID.MyNumber] = id
}
else
{
    Selected = true
    sprite_index = SpriteSl
    global.Groups[0,0] += 1
    MyNumber = global.Groups[0,0]
    global.Groups[0,MyNumber] = id
}
