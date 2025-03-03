/datum/map/sierra

	holodeck_programs = list(
		"emptycourt"       = new/datum/holodeck_program(/area/holodeck/source_emptycourt, list('sound/music/THUNDERDOME.ogg')),
		"boxingcourt"      = new/datum/holodeck_program(/area/holodeck/source_boxingcourt, list('sound/music/THUNDERDOME.ogg')),
		"basketball"       = new/datum/holodeck_program(/area/holodeck/source_basketball, list('sound/music/THUNDERDOME.ogg')),
		"thunderdomecourt" = new/datum/holodeck_program(/area/holodeck/source_thunderdomecourt, list('sound/music/THUNDERDOME.ogg')),
		"beach"            = new/datum/holodeck_program(/area/holodeck/source_beach, list('sound/music/europa/WildEncounters.ogg')),
		"desert"           = new/datum/holodeck_program(/area/holodeck/source_desert,
														list(
															'sound/effects/wind/wind_2_1.ogg',
											 				'sound/effects/wind/wind_2_2.ogg',
											 				'sound/effects/wind/wind_3_1.ogg',
											 				'sound/effects/wind/wind_4_1.ogg',
											 				'sound/effects/wind/wind_4_2.ogg',
											 				'sound/effects/wind/wind_5_1.ogg'
												 			)
		 												),
		"snowfield"        = new/datum/holodeck_program(/area/holodeck/source_snowfield,
														list(
															'sound/effects/wind/wind_2_1.ogg',
											 				'sound/effects/wind/wind_2_2.ogg',
											 				'sound/effects/wind/wind_3_1.ogg',
											 				'sound/effects/wind/wind_4_1.ogg',
											 				'sound/effects/wind/wind_4_2.ogg',
											 				'sound/effects/wind/wind_5_1.ogg'
												 			)
		 												),
		"space"            = new/datum/holodeck_program(/area/holodeck/source_space,
														list(
															'sound/ambience/ambispace.ogg',
															'sound/music/main.ogg',
															'sound/music/space.ogg',
															'sound/music/traitor.ogg',
															)
														),
		"picnicarea"       = new/datum/holodeck_program(/area/holodeck/source_picnicarea, list('sound/music/title2.ogg')),
		"theatre"          = new/datum/holodeck_program(/area/holodeck/source_theatre),
		"meetinghall"      = new/datum/holodeck_program(/area/holodeck/source_meetinghall),
		"courtroom"        = new/datum/holodeck_program(/area/holodeck/source_courtroom, list('sound/music/traitor.ogg')),
		"voleyball"        = new/datum/holodeck_program(/area/holodeck/source_volleyball, list('sound/music/THUNDERDOME.ogg')),
		"cafe"             = new/datum/holodeck_program(/area/holodeck/source_cafe, list('maps/sierra/sound/music/eminem_lovethewayyoulie.ogg')),
		"wildlifecarp"     = new/datum/holodeck_program(/area/holodeck/source_wildlife),
		"paradeground"     = new/datum/holodeck_program(/area/holodeck/source_military),
		"temple"           = new/datum/holodeck_program(/area/holodeck/source_temple, list('maps/sierra/sound/music/river_flows_in_you.ogg')),
		"plaza"            = new/datum/holodeck_program(/area/holodeck/source_plaza, list('sound/music/europa/WildEncounters.ogg')),
		"turnoff"          = new/datum/holodeck_program(/area/holodeck/source_plating)
	)

	holodeck_supported_programs = list(

		"SierraMainPrograms" = list(
			"Basketball Court"  = "basketball",
			"Beach"             = "beach",
			"Boxing Ring"       = "boxingcourt",
			"Cafe"              = "cafe",
			"Courtroom"         = "courtroom",
			"Desert"            = "desert",
			"Parade Ground"     = "paradeground",
			"Empty Court"       = "emptycourt",
			"Meeting Hall"      = "meetinghall",
			"Picnic Area"       = "picnicarea",
			"Snow Field"        = "snowfield",
			"Space"             = "space",
			"Theatre"           = "theatre",
			"Thunderdome Court" = "thunderdomecourt",
			"Voleyball Court"   = "voleyball",
			"Bathhouse"         = "temple",
			"Plaza"             = "plaza"
		)

	)

	holodeck_restricted_programs = list(

		"SierraMainPrograms" = list(
			"Wildlife Simulation" = "wildlifecarp"
		)

	)
