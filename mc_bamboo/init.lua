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
        grow_pos = {pos.x, pos.y + 1, pos.z}
        minetest.set_node(grow_pos, {name = "mc_bamboo:bamboo"})
    end
})
minetest.register_decoration({
    deco_type = "simple",
    place_on = {"mcl_core:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.1,
    biomes = {"Taiga","Forest"},
    y_max = mcl_vars.mg_overworld_max,
    y_min = mcl_vars.mg_overworld_min,
    decoration = "mc_bamboo:bamboo"
})
