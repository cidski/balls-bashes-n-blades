isGrabbing = false;
HP = 10;
damageTimer = 0;
o_id = noone;
pointSpeed = 30;
pointDampen = 0.90;

if (face != noone)
{
	idFace = instance_create_layer(x, y, "Faces", face);
}

mouseVectorAngle = 0;

idColLeft = noone;
idColRight = noone;
idColDot = noone;

healthText = layer_text_create("Text", x, y, fPointText, "");
layer_text_xscale(healthText, 0.4);
layer_text_yscale(healthText, 0.4);