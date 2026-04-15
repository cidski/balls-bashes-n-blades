o_id = instance_create_layer(x, y, "Collisions", oSledgeHammmerCol);
var mainFixture = physics_fixture_create();
physics_fixture_set_circle_shape(mainFixture, sprite_get_width(sprite_index) / 2);
physics_fixture_bind(mainFixture, id);
physics_fixture_bind(mainFixture, o_id);
physics_joint_revolute_create(id, o_id, x, y, 0, 0, true, 0, 0, false, false);
physics_fixture_delete(mainFixture);