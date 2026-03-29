isGrabbing = false;
HP = 10;
damageTimer = 0;

if (face != noone)
{
	idFace = instance_create_layer(x, y, "Faces", face);
}