isGrabbing = false;
HP = 10;
damageTimer = 0;
o_id = noone;

if (face != noone)
{
	idFace = instance_create_layer(x, y, "Faces", face);
}

mouseVectorAngle = 0;

idColLeft = noone;
idColRight = noone;
idColDot = noone;