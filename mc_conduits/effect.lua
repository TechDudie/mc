function effect(pos)
	local players = minetest.get_objects_inside_radius(pos, 96)
  	if next(players) == nil then return false end
  	for _, player in pairs(players) do
    	local name = player:get_player_name()
    	if name ~= "" then
            mcl_potions.swiftness_func(name, 4, 4)
            mcl_potions.water_breathing_func(name, nil, 4)
            mcl_potions.night_vision_func(name, nil, 4)
	    end
  	end
end
