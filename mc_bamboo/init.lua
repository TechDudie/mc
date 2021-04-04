minetest.register_craftitem("mc_bamboo:bamboo_item", {
    description = "Bambooo",
    inventory_image = "item.png"
})
minetest.register_node("mc_bamboo:bamboo", {
    description = "Bamboo Node",
    tiles = {
        "bamboo_top.png",
        "bamboo_top.png",
        "bamboo.png",
        "bamboo.png",
        "bamboo.png",
        "bamboo.png"
    },
    drop = "mc_bamboo:bamboo_item"
})
minetest.register_abm({
    nodenames = {"mc_bamboo:bamboo"},
    interval = 10.0,
    chance = 4,
    action = function(pos, node, active_object_count, active_object_count_wider)
        grow_pos = {pos.x, pos,y + 1, pos,z}
        minetest.set_node(grow_pos, {name = "mc_bamboo:bamboo"})
    end
})
