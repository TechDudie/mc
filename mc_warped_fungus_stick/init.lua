minetest.register_craftitem("mc_warped_fungus_stick:warped_fungus_stick", {
    description = "Warped Fungus on a Stick",
    inventory_image = "warped_fungus_stick.png"
})
minetest.register_craft({
    type = "shapeless",
    output = "mc_warped_fungus_stick:warped_fungus_stick",
    recipe = {"mcl_fishing:fishing_rod", "mcl_mushroom:warped_fungus"}
})
