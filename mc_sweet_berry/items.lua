minetest.register_craftitem("mc_sweet_berry:sweet_berry", {
    description = "Sweet Berry",
    inventory_image = "sweet_berry.png",
    on_use = minetest.item_eat(2)
})
