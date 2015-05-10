if (Panning) 
{
    view_xview[0] -= (window_mouse_get_x() - PanLastX);
    view_yview[0] -= (window_mouse_get_y() - PanLastY);
    
    // Clamp the viewport settings
    ClampViewSettings();        
    
    PanLastX = window_mouse_get_x();
    PanLastY = window_mouse_get_y();
}
