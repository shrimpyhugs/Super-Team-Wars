switch (argument0)
{
    case ZoomOut:
    {
        if (view_wview[0] <= (room_width - 64))
        {
            view_wview[0] += 64;
            view_hview[0] += 48;
            view_xview[0] -= 32;
            view_yview[0] -= 24;
        }
    }
    break;
    
    case ZoomIn:
    {
        if (view_wview[0] > 512)
        {
            view_wview[0] -= 64;
            view_hview[0] -= 48;
            view_xview[0] += 32;
            view_yview[0] += 24;
        }
    }
    break;
}

ClampViewSettings();
