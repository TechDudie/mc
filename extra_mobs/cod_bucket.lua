local S = minetest.get_translator("extra_mobs")

mcl_buckets.register_liquid({
    source_place = "mcl_core:water_source",
    source_take = {"mcl_core:water_source"},
    itemname = "extra_mobs:cod_bucket",
    inventory_image = "bucket_water.png^cod_bucket.png",
    name = S("Cod Bucket"),
    longdesc = S("This bucket can be used to release a cod. It is filled with water."),
    usagehelp = S("Place it to empty the bucket, create a water source and release a cod."),
    tt_help = S("Places a water source and cod"),
    extra_check = function(pos, placer)
        minetest.add_entity(pos, "extra_mobs:cod")
        -- Check protection
        local placer_name = ""
        if placer ~= nil then
            placer_name = placer:get_player_name()
        end
        if placer and minetest.is_protected(pos, placer_name) then
            minetest.record_protection_violation(pos, placer_name)
            return false
        end
        local nn = minetest.get_node(pos).name
        if minetest.get_item_group(nn, "cauldron") ~= 0 then
            -- Put water into cauldron  TODO: remove second source
            if nn ~= "mcl_cauldrons:cauldron_3" then
                minetest.set_node(pos, {name="mcl_cauldrons:cauldron_3"})
            end
        -- Evaporate water if used in Nether (except on cauldron)
        else
            local dim = mcl_worlds.pos_to_dimension(pos)
            if dim == "nether" then
                minetest.sound_play("fire_extinguish_flame", {pos = pos, gain = 0.25, max_hear_distance = 16}, true)
                return false
            end
        end
    end,
    groups = { water_bucket = 1 },
})