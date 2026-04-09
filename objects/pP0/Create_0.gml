isGrabbing = false;
HP = 10;
damageTimer = 0;
o_id = noone;

if (face != noone)
{
	idFace = instance_create_layer(x, y, "Faces", face);
}

mouseVectorAngle = 0;

idColLeft = instance_create_layer(x, y, "Collisions", oPointColLeft);
idColRight = instance_create_layer(x, y, "Collisions", oPointColRight);
idColDot = instance_create_layer(x, y, "Collisions", oMouseOrJoystickDot);