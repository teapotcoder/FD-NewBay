/obj/item/robot_module/flying/ascent
	name = "\improper Ascent drone module"
	display_name = "Ascent"
	upgrade_locked = TRUE
	hide_on_manifest = TRUE
	sprites = list(
		"Drone" = "drone-ascent"
	)
	// The duplicate clustertools in this list are so that they can set up to
	// hack doors, windows etc. without having to constantly cycle through tools.
	equipment = list(
		/obj/item/device/flash,
		/obj/item/gun/energy/particle/small,
		/obj/item/device/multitool/mantid,
		/obj/item/clustertool,
		/obj/item/clustertool,
		/obj/item/clustertool,
		/obj/item/soap,
		/obj/item/mop/advanced/ascent,
		/obj/item/device/plunger/robot,
		/obj/item/weldingtool/electric/mantid,
		/obj/item/extinguisher,
		/obj/item/device/t_scanner,
		/obj/item/device/scanner/gas,
		/obj/item/device/scanner/health,
		/obj/item/device/geiger,
		/obj/item/gripper,
		/obj/item/gripper/no_use/loader,
		/obj/item/inducer/borg,
		/obj/item/stack/medical/resin,
		/obj/item/surgicaldrill,
		/obj/item/hemostat,
		/obj/item/bonesetter,
		/obj/item/circular_saw,
		/obj/item/stack/material/cyborg/steel,
		/obj/item/stack/material/cyborg/aluminium,
		/obj/item/stack/material/rods/cyborg,
		/obj/item/stack/tile/floor/cyborg,
		/obj/item/stack/material/cyborg/glass,
		/obj/item/stack/material/cyborg/glass/reinforced,
		/obj/item/stack/cable_coil/cyborg,
		/obj/item/stack/material/cyborg/plasteel,
		/obj/item/stack/nanopaste
	)
	synths = list(
		/datum/matter_synth/metal = 	30000,
		/datum/matter_synth/glass = 	20000,
		/datum/matter_synth/plasteel = 	10000,
		/datum/matter_synth/nanite =    10000,
		/datum/matter_synth/wire
	)

	languages = list(
		LANGUAGE_MANTID_VOCAL     = TRUE,
		LANGUAGE_MANTID_NONVOCAL  = TRUE,
		LANGUAGE_MANTID_BROADCAST = TRUE,
		LANGUAGE_SKRELLIAN        = TRUE,
		LANGUAGE_NABBER           = TRUE,
		LANGUAGE_HUMAN_EURO	      = TRUE,
		LANGUAGE_SPACER           = TRUE
	)

	skills = list(
		SKILL_BUREAUCRACY	= SKILL_TRAINED,
		SKILL_FINANCE		= SKILL_EXPERIENCED,
		SKILL_EVA			= SKILL_EXPERIENCED,
		SKILL_MECH			= HAS_PERK,
		SKILL_PILOT			= SKILL_EXPERIENCED,
		SKILL_ARMAMENT		= SKILL_EXPERIENCED,
		SKILL_HAULING		= SKILL_EXPERIENCED,
		SKILL_COMPUTER		= SKILL_EXPERIENCED,
		SKILL_BOTANY		= SKILL_EXPERIENCED,
		SKILL_COOKING		= SKILL_EXPERIENCED,
		SKILL_COMBAT		= SKILL_EXPERIENCED,
		SKILL_WEAPONS		= SKILL_EXPERIENCED,
		SKILL_FORENSICS		= SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION	= SKILL_EXPERIENCED,
		SKILL_ELECTRICAL	= SKILL_EXPERIENCED,
		SKILL_ATMOS			= SKILL_EXPERIENCED,
		SKILL_ENGINES		= SKILL_EXPERIENCED,
		SKILL_DEVICES		= SKILL_EXPERIENCED,
		SKILL_SCIENCE		= SKILL_EXPERIENCED,
		SKILL_MEDICAL		= SKILL_EXPERIENCED,
		SKILL_ANATOMY		= SKILL_EXPERIENCED,
		SKILL_VIROLOGY      = HAS_PERK,
		SKILL_CHEMISTRY		= SKILL_EXPERIENCED
	)

// Copypasted from repair bot - todo generalize this step.
/obj/item/robot_module/flying/ascent/finalize_synths()
	. = ..()
	var/datum/matter_synth/metal/metal =       locate() in synths
	var/datum/matter_synth/glass/glass =       locate() in synths
	var/datum/matter_synth/plasteel/plasteel = locate() in synths
	var/datum/matter_synth/wire/wire =         locate() in synths
	var/datum/matter_synth/nanite/nanite =     locate() in synths

	for(var/thing in list(
			/obj/item/stack/material/cyborg/steel, \
			/obj/item/stack/material/cyborg/aluminium, \
			/obj/item/stack/material/rods/cyborg, \
			/obj/item/stack/tile/floor/cyborg, \
			/obj/item/stack/material/cyborg/glass/reinforced))
		var/obj/item/stack/stack = locate(thing) in equipment
		LAZYDISTINCTADD(stack.synths, metal)

	for(var/thing in list(
			/obj/item/stack/material/cyborg/glass/reinforced, \
			/obj/item/stack/material/cyborg/glass))
		var/obj/item/stack/stack = locate(thing) in equipment
		LAZYDISTINCTADD(stack.synths, glass)

	var/obj/item/stack/cable_coil/cyborg/C = locate() in equipment
	C.synths = list(wire)

	var/obj/item/stack/material/cyborg/plasteel/PL = locate() in equipment
	PL.synths = list(plasteel)

	var/obj/item/stack/nanopaste/N = locate() in equipment
	N.synths = list(nanite)

	. = ..()

/obj/item/robot_module/flying/ascent/respawn_consumable(mob/living/silicon/robot/R, amount)
	var/obj/item/stack/medical/resin/drone/resin = locate() in equipment
	if(!resin)
		resin = new(src, amount = 1)
		equipment += resin
	if(resin.get_amount() < resin.get_max_amount())
		resin.add(1)
	..()

/obj/item/robot_module/flying/ascent/finalize_equipment()
	. = ..()
	var/obj/item/stack/nanopaste/N = locate() in equipment
	N.uses_charge = 1
	N.charge_costs = list(1000)


/************ Ascent Lawset ******************/
/datum/ai_laws/ascent
	name = "Ascent Lawset"
	law_header = "_=/--=-_"
	selectable = FALSE

/datum/ai_laws/ascent/add_ion_law(law)
	return FALSE

/datum/ai_laws/ascent/New()
	add_inherent_law("Listen to directives from Ascent leadership with precedence given to queens.")
	add_inherent_law("Preserve your own existence.")
	add_inherent_law("Enable and support Ascent activities.")
	..()
