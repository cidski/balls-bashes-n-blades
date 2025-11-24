 move_speed = 0.1;

mainFixture = physics_fixture_create();
physics_fixture_set_box_shape(mainFixture, 128, 32);
wheelFixture = physics_fixture_create();
physics_fixture_set_circle_shape(wheelFixture, 32);
o_id = instance_create_layer(x, y, "Instances", oSwordP1);
physics_fixture_bind(mainFixture, id);
physics_fixture_bind(wheelFixture, o_id);
physics_joint_wheel_create(id, o_id, o_id.x, o_id.y, 0, 1, false, 10, 1, 15, 6, false);
physics_fixture_delete(mainFixture);
physics_fixture_delete(wheelFixture);