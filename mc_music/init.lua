minetest.register_on_joinplayer(function(ObjectRef, last_login)
    minetest.sound_play("haggstrom.ogg, {
		to_player = "singleplayer",
		gain = 1,
	})
)
