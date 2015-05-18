X = 0
Y = 0
Width = 0
Height = 0
X = argument0
Y = argument1
Width = argument2
Height = argument3


if X > global.SelectionPositions[0] and X < global.SelectionPositions[2]
{
    if Y > global.SelectionPositions[1] and Y < global.SelectionPositions[3]
    {
        return true
    }
    if Y + Height > global.SelectionPositions[1] and Y + Height <  global.SelectionPositions[3]
    {
        return true
    }
}
if X + Width > global.SelectionPositions[0] and X + Width < global.SelectionPositions[2]
{
    if Y > global.SelectionPositions[1] and Y < global.SelectionPositions[3]
    {
        return true
    }
    if Y + Height > global.SelectionPositions[1] and Y + Height <  global.SelectionPositions[3]
    {
        return true
    }
}

return false

