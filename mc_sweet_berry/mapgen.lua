minetest.register_decoration({
      deco_type = "simple",
      place_on = {"mcl_core:dirt_with_grass"},
      sidelen = 16,
      fill_ratio = 0.1,
      biomes = {"Taiga","Forest"},
      y_max = mcl_vars.mg_overworld_max,
      y_min = mcl_vars.mg_overworld_min,
      decoration = "mc_sweet_berry:sweet_berry_bush_2"
})
