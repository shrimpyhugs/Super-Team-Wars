var mouseControlInst;
mouseControlInst = instance_find(objMouseControl, 0);

if (!mouseControlInst.Panning) {
    beingDragged = true;
    mouseControlInst.EnablePanning = false;
}
