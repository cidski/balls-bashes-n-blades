angleLT = 0;
angleGT = 0;

move_speed = 0.1;

mainFixture = physics_fixture_create();
physics_fixture_set_box_shape(mainFixture, 128, 32);
o_id = instance_create_layer(x, y, "Instances", oSwordP1);
physics_fixture_bind(mainFixture, id);
physics_fixture_bind(mainFixture, o_id);
physics_joint_revolute_create(id, o_id, o_id.x, o_id.y, 0, 0, true, 0, 0, false, false);
physics_fixture_delete(mainFixture);