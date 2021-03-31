minetest.register_abm({
     nodenames = {"mc:sweet_berry_bush_0"},
     interval = 10.0,
     chance = 16,
     action = function(pos, node, active_object_count, active_object_count_wider) minetest.set_node(pos, {name = "mc:sweet_berry_bush_1"}) end
 })
 minetest.register_abm({
     nodenames = {"mc:sweet_berry_bush_1"},
     interval = 10.0,
     chance = 16,
     action = function(pos, node, active_object_count, active_object_count_wider) minetest.set_node(pos, {name = "mc:sweet_berry_bush_2"}) end
 })
 minetest.register_abm({
     nodenames = {"mc:sweet_berry_bush_2"},
     interval = 10.0,
     chance = 16,
     action = function(pos, node, active_object_count, active_object_count_wider) minetest.set_node(pos, {name = "mc:sweet_berry_bush_3"}) end
 })
