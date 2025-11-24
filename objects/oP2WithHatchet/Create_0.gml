 move_speed = 0.1;
 
 var mainFixture = physics_fixture_create();
physics_fixture_set_box_shape(mainFixture, 128, 32);
var wheelFixture = physics_fixture_create();
physics_fixture_set_circle_shape(wheelFixture, 32);
var o_id = instance_create_layer(x, y, "Instances", oHatchetP2);
physics_fixture_bind(mainFixture, id);
physics_fixture_bind(wheelFixture, o_id);
joint = physics_joint_wheel_create(id, o_id, o_id.x, o_id.y, 0, 1, false, 10, 1, 15, 6, false);
physics_fixture_delete(mainFixture);
physics_fixture_delete(wheelFixture);