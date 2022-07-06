// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations.mdl

$definevariable infoNode "mercenaryInfo"
$include "mercenary_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

$include "mercenary_animations_set.qci"
//-----------------------------------------------------------------------------------
// Mercenary-specific weightlists
//-----------------------------------------------------------------------------------
$weightlist armsblendMelee {
	"bip_pelvis" 0.0
	"bip_collar_r" 1.0
	"bip_collar_l" 1.0
}

$Weightlist Airwalk_ArmsBlend {

	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_spine_1" 0.4
	"bip_spine_2" 0.6
	"bip_spine_3" 1.0
	}

$Weightlist Swim_Melee_SwingBody {

  "bip_spine_1" 1.0
  "bip_spine_2" 1.0
  "bip_spine_3" 1.0
	}

$Weightlist Swim_Melee_SwingArms {

  "bip_collar_R" 1.0
  "bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	}

$Weightlist ArmLGestureBlend {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_neck" 0.0
	"bip_collar_R" 0.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}
	
$Weightlist armsblendstun {
  "bip_pelvis" 1.0
	}

$pushd "../animations/dmx"

//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------

$animation a_reference "primary_idle.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly
//-----------------------------------------------------------------------------------
// Loadout Poses
//-----------------------------------------------------------------------------------

$sequence loadout_idle 				"loadout_supershotgun.dmx" 	 loop fps 30 snap activity ACT_MERC_LOADOUT 1 // Super Shotgun
$sequence loadout_dynamite 			"loadout_dynamite.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_DYNAMITE 1
$sequence loadout_pistol 			"loadout_pistol.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_PISTOL 1
$sequence loadout_pistol_alt 		"loadout_pistol_alt.dmx" 	 loop fps 24 snap activity ACT_MERC_LOADOUT_PISTOL_ALT 1
$sequence loadout_shotgun 			"loadout_shotgun.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_SHOTGUN 1
$sequence loadout_sixshooter 		"loadout_sixshooter.dmx" 	 loop fps 30 snap activity ACT_MERC_LOADOUT_REVOLVER 1
$sequence loadout_tommygun 			"loadout_tommygun.dmx" 		 loop fps 30 snap activity ACT_MERC_LOADOUT_TOMMYGUN 1
$sequence loadout_rocketlauncher 	"loadout_rocketlauncher.dmx" loop fps 24 snap activity ACT_MERC_LOADOUT_ROCKETLAUNCHER 1
$sequence loadout_chainsaw 			"loadout_chainsaw.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_CHAINSAW 1
$sequence loadout_crowbar			"loadout_crowbar.dmx"		 loop fps 30 snap activity ACT_MERC_LOADOUT_CROWBAR 1
$sequence loadout_leadpipe			"loadout_leadpipe.dmx"		 loop fps 30 snap activity ACT_MERC_LOADOUT_LEADPIPE 1
$sequence loadout_assault_rifle		"loadout_assault_rifle.dmx"	 loop fps 30 snap activity ACT_MERC_LOADOUT_ASSAULT_RIFLE 1
$sequence loadout_grenadelauncher	"loadout_grenadelauncher.dmx" loop fps 30 snap activity ACT_MERC_LOADOUT_GRENADELAUNCHER 1
$sequence loadout_lightning_gun		"loadout_lightning_gun.dmx"	 loop fps 30 snap activity ACT_MERC_LOADOUT_LIGHTNING_GUN 1
$sequence loadout_nailgun			"loadout_nailgun.dmx"		 loop fps 30 snap activity ACT_MERC_LOADOUT_NAILGUN 1
$sequence loadout_minigun_dm		"loadout_minigun_dm.dmx"	 loop fps 30 snap activity ACT_MERC_LOADOUT_MINIGUN_DM 1
$sequence loadout_bouncer			"loadout_bouncer.dmx"		 loop fps 30 snap activity ACT_MERC_LOADOUT_BOUNCER 1
$sequence loadout_railgun			"loadout_railgun.dmx"		 loop fps 30 snap activity ACT_MERC_LOADOUT_RAILGUN 1
$sequence loadout_akimbo			"loadout_akimbo.dmx"		 loop fps 30 snap activity ACT_MERC_LOADOUT_AKIMBO 1
$sequence loadout_flametemp			"loadout_flametemp.dmx"		 loop fps 30 snap activity ACT_MERC_LOADOUT_FLAMETEMP 1
$sequence loadout_fuckinsiiiiick	"loadout_fuckinsiiiiick.dmx" loop fps 30 snap activity ACT_MERC_LOADOUT_SICKASFUCK 1
$sequence hud_ref					"hud_ref.dmx"				 loop fps 24 snap activity ACT_HUD_REF 1

//-----------------------------------------------------------------------------------
// Winscreen anims
//-----------------------------------------------------------------------------------

$sequence winpanel_first 	"winpanel_first.dmx"  fps 30 snap activity ACT_MERC_WINPANEL_FIRST  1
$sequence winpanel_second 	"winpanel_second.dmx" fps 30 snap activity ACT_MERC_WINPANEL_SECOND 1
$sequence winpanel_third 	"winpanel_third.dmx"  fps 30 snap activity ACT_MERC_WINPANEL_THIRD  1

//-----------------------------------------------------------------------------------
//TAUNTS
//-----------------------------------------------------------------------------------
$sequence layer_taunt01 "taunt_knuckles.dmx" fps 30 hidden
$sequence taunt01 "taunt_knuckles.dmx" noanimation {
	numframes 109
	blendlayer layer_taunt01  0 5 95 108
 	event AE_CL_BODYGROUP_SET_VALUE 18 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 108 "rocket 0"
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 108
	}{ event 5004 18 "Weapon_Fist.HitHand" }{ event 5004 29 "Taunt.SoldierKnuckleCrack" }{ event 5004 55 "Weapon_Fist.HitHand" }{ event 5004 63 "Taunt.SoldierKnuckleCrack" }

$sequence layer_taunt02 "taunt_soclose.dmx" fps 30 hidden
$sequence taunt02 "taunt_soclose.dmx" noanimation {
	numframes 104
	blendlayer layer_taunt02  0 5 89 104
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 100
	} { event 5004 13 "Taunt.Soldier01ClothesSwipe" } { event 5004 24 "Taunt.Soldier01HeelClick" } { event 5004 80 "Taunt.Soldier01ClothesRustle" }
	
	
$sequence layer_taunt03 "taunt_groovy.dmx" fps 30 hidden
$sequence taunt03 "taunt_groovy.dmx" noanimation {
	numframes 61
	blendlayer layer_taunt03 0 5 52 60
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 60
	}{ event 5004 17 "Taunt.Soldier01ClothesSwipe" }{ event 5004 17 "Taunt.Soldier01HeelClick" }{ event 5004 47 "Taunt.Soldier01ClothesRustle" }{ event 5004 59 "Taunt.Soldier01HelmetJostle" }

$sequence layer_taunt04 "taunt_threat.dmx" fps 30 hidden
$sequence taunt04 "taunt_threat.dmx" noanimation {
	numframes 71
	blendlayer layer_taunt04  0 5 65 70
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 70
	} { event 5004 12 "Taunt.Soldier01ClothesSwipe" } { event 5004 19 "Taunt.Soldier01HeelClick" } { event 5004 35 "Taunt.Soldier01ClothesRustle" } { event 5004 65 "Taunt.Soldier01HeelClick" }
	

$sequence layer_taunt05 "taunt_bombscare.dmx" fps 30 hidden
$sequence taunt05 "taunt_bombscare.dmx" noanimation {
	numframes 246
	blendlayer layer_taunt05  0 5 240 246
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 245
	} { event 5004 11 "Taunt.Soldier01ClothesRustle"} { event 5004 24 "Taunt.Soldier01HelmetJostle"} { event 5004 45 "Taunt.Soldier02GrenadeCatch" } { event 5004 60 "Taunt.Soldier01HelmetJostle"} { event 5004 84 "Taunt.Soldier01ClothesSwipe" } { event 5004 98 "Taunt.Soldier01ClothesSwipe"} { event 5004 176 "Taunt.Soldier03FootStomp" } { event 5004 211 "Taunt.Soldier01HelmetJostle"} { event 5004 219 "Taunt.Soldier03FootStomp" }

$sequence layer_taunt06 "taunt06.dmx" fps 30 hidden
$sequence taunt06 "taunt06.dmx" noanimation {
	numframes 76
	blendlayer layer_taunt06  0 5 72 75
	} { event AE_WPN_HIDE 1 "" } { event AE_WPN_UNHIDE 74 "" }

// We don't put numbered taunts beyond this
// Because its shared stuff like the thriller dance

$sequence layer_taunt_bond "taunt_bond.dmx" fps 30 hidden
$sequence taunt_bond "taunt_bond.dmx" noanimation {
	numframes 90
	blendlayer layer_taunt_bond  0 6 70 90
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 89
	} { event 5004 2 "Taunt.Soldier01ClothesRustle" } { event 5004 10 "Taunt.Soldier03FootStomp" } { event 5004 17 "Taunt.Soldier01HeelClick" } { event 5004 43 "Taunt.Soldier03FootStomp" } { event 5004 47 "Taunt.BondGunFire" }

//-----------------------------------------------------------------------------------
//CHARACTER SELECTION
//-----------------------------------------------------------------------------------
$sequence selectionMenu_all "selectionMenu_Anim01.dmx" fps 30 event AE_CL_PLAYSOUND 20 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 24 "Selection.mercenaryEquipment" event AE_CL_PLAYSOUND 36 "Selection.mercenaryClothesRustle" event AE_CL_PLAYSOUND 47 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 64 "Selection.mercenaryClothesRustle" event AE_CL_PLAYSOUND 73 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 94 "Selection.mercenaryLauncherSetStart" event AE_CL_PLAYSOUND 103 "Selection.mercenaryLauncherSetStop" event AE_CL_PLAYSOUND 103 "Selection.mercenaryLauncherHitGround" //hidden localhierarchy "weapon_bone" "bip_foot_R"

//-----------------------------------------------------------------------------------
//Headshot Animation
//-----------------------------------------------------------------------------------
$sequence primary_death_headshot "primary_death_headshot.dmx" ikrule lhand release ikrule rhand release ikrule lfoot release ikrule rfoot release

$popd