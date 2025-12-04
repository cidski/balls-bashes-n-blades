 move_speed = 0.1;

mainFixture = physics_fixture_create();
physics_fixture_set_box_shape(mainFixture, 128, 32);
wheelFixture = physics_fixture_create();
physics_fixture_set_circle_shape(wheelFixture, 32);
hatchet_id = instance_create_layer(x, y, "Instances", oHatchetP3);
physics_fixture_bind(mainFixture, id);
physics_fixture_bind(wheelFixture, hatchet_id);
joint = physics_joint_wheel_create(id, hatchet_id, hatchet_id.x, hatchet_id.y, 0, 1, false, 10, 1, 15, 6, false);
physics_fixture_delete(mainFixture);
physics_fixture_delete(wheelFixture);

holdingItem = true;