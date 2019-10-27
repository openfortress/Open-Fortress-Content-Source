// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/heavy_user_animations.mdl

$definevariable infoNode "heavyInfo"
$include "heavy_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"


$pushd "../animations/dmx"

$Weightlist HeavyMeleeSwimRightArmBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_spine_1" 0.4
	"bip_spine_2" 0.6
	"bip_spine_3" 0.8
	"bip_collar_R" 1.0
	"bip_collar_L" 0.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	"bip_neck" 1.0
}

$Weightlist HeavyLowerUpper {
	"bip_pelvis" 0.5
	"bip_hip_R" 0.5
	"bip_hip_L" 0.5
	"bip_spine_0" 0.6
	"bip_spine_1" 0.7
	"bip_spine_2" 0.8
	"bip_spine_3" 0.9
	"bip_collar_R" 0.9
	"bip_collar_L" 0.9
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	"bip_neck" 1.0
}

$Weightlist ArmLGestureBlend {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.25
	"bip_spine_2" 0.5
	"bip_spine_3" 0.75
	"bip_collar_R" 0.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}
	
		
$Weightlist armsblendstun {
  "bip_pelvis" 1.0
	}



//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "primary_idle.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly

//-----------------------------------------------------------------------------------
// Primary
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK PRIMARY	$infoNode$
$MPAimLayer_leftHandIK PRIMARY_aimmatrix_deployed	primary_aimmatrix_deployed	$infoNode$
$MPAimLayer PRIMARY_aimmatrix_crouch_walk	primary_aimmatrix_crouch_walk	$infoNode$
$MPAimLayer_leftHandIK PRIMARY_aimmatrix_deployed_crouch	primary_aimmatrix_deployed_crouch	$infoNode$


//-----------------------------------------------------------------------------------
// Secondary
//-----------------------------------------------------------------------------------

$Shotgun_WeaponAims_leftHandIK	SECONDARY	$infoNode$
$MPWeaponFiring  SECONDARY

//Start Secondary Reload
$sequence a_secondary_reload secondary_reload

$sequence secondary_reload "secondary_reload.dmx" frames 0 15 {
	numframes 18
	subtract a_SECONDARY_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY 1
}

$sequence secondary_reload_loop "secondary_reload.dmx" frames 15 30 {
	numframes 18
	subtract a_secondary_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY_LOOP 1
}

$sequence a_secondary_reload_end {
	SECONDARY_reload frames 30 45
	subtract a_secondary_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY_END 1
}
//End Secondary Reload

//Start Secondary Crouch Reload

$sequence a_secondary_crouch_reload secondary_crouch_reload

$sequence secondary_crouch_reload "secondary_crouch_reload.dmx" frames 0 15 fps 30 hidden {
	numframes 18
	subtract a_secondary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY 1
}

$sequence a_secondary_crouch_reload_loop "secondary_crouch_reload.dmx" frames 15 30 fps 30 hidden  {
	numframes 18
	subtract a_secondary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_LOOP 1
}

$sequence a_secondary_crouch_reload_end {
	secondary_crouch_reload frames 30 45
	subtract a_secondary_crouch_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_END 1
}
//End Secondary Crouch Reload

//Start Secondary Swim Reload

$sequence a_Secondary_swim_reload Secondary_swim_reload

$sequence Secondary_swim_reload "Secondary_swim_reload.dmx" frames 0 15 fps 30 hidden {
	numframes 18
	subtract a_Secondary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_Secondary 1
}

$sequence a_Secondary_swim_reload_loop "Secondary_swim_reload.dmx" frames 15 30 fps 30 hidden  {
	numframes 18
	subtract a_Secondary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_Secondary_LOOP 1
}

$sequence a_Secondary_swim_reload_end {
	Secondary_swim_reload frames 30 45
	subtract a_Secondary_swim_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_SWIM_Secondary_END 1
}

//End Secondary Swim Reload


//Start Secondary Reload Airwalk


$sequence a_Secondary_reload_airwalk Secondary_reload_airwalk

$sequence Secondary_reload_airwalk "Secondary_reload_airwalk.dmx" frames 0 15 fps 30 hidden {
	numframes 18
	subtract a_Secondary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_Secondary 1
}

$sequence a_Secondary_reload_airwalk_loop "secondary_reload_airwalk.dmx" frames 15 30 fps 30 hidden  {
	numframes 18
	subtract a_Secondary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_Secondary_LOOP 1
}

$sequence a_Secondary_reload_airwalk_end {
	Secondary_reload_airwalk frames 30 45
	subtract a_Secondary_reload_airwalk 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_AIRWALK_Secondary_END 1
}


//End Secondary Reload Airwalk
//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPWeaponAims		MELEE	$infoNode$
$sequence AttackStand_MELEE_L {
	Melee_Swing_L
	weightlist HipsUpperBody
	subtract AttackStand_MELEE_L 0
	delta
	weightlist HipsUpperBody
	fps 40
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_STAND_MELEE 1
}
$sequence AttackStand_MELEE_R {
	Melee_Swing_R
	weightlist HipsUpperBody
	subtract AttackStand_MELEE_R 0
	delta
	weightlist HipsUpperBody
	fps 35
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_STAND_MELEE 1
}
$sequence AttackStand_MELEE_U {
	Melee_Swing_U
	weightlist HipsUpperBody
	subtract AttackStand_MELEE_U 0
	delta
	weightlist HipsUpperBody
	fps 35
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_STAND_MELEE_SECONDARY 1
}

$sequence AttackCrouch_MELEE_L {
	Melee_Swing_L
	weightlist HipsUpperBody
	subtract AttackCrouch_MELEE_L 0
	delta
	weightlist HipsUpperBody
	fps 40
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_CROUCH_MELEE 1
}
$sequence AttackCrouch_MELEE_R {
	Melee_Swing_R
	weightlist HipsUpperBody
	subtract AttackCrouch_MELEE_R 0
	delta
	weightlist HipsUpperBody
	fps 35
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_CROUCH_MELEE 1
}
$sequence AttackCrouch_MELEE_U {
	Melee_Swing_U
	weightlist HipsUpperBody
	subtract AttackCrouch_MELEE_U 0
	delta
	weightlist HipsUpperBody
	fps 35
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_CROUCH_MELEE_SECONDARY 1
}

$sequence layer_AttackSwimNMelee_arms "melee_swim_swingN.dmx" weightlist HeavyMeleeSwimRightArmBlend {
	fps 60
	hidden
}
$sequence layer_melee_swim_swingN {
	melee_swim_swingN
	subtract layer_melee_swim_swingN 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackSwimNMelee_arms 0 0 25 30
}


$sequence layer_AttackSwimSMelee_arms "melee_swim_swingS.dmx" weightlist HeavyMeleeSwimRightArmBlend {
	hidden
}
$sequence layer_melee_swim_swingS {
	melee_swim_swingS
	subtract layer_melee_swim_swingS 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackSwimSMelee_arms  0 0 25 30
}

$sequence AttackSwim_Melee {
	melee_swimN
	noanimation
	numframes 34
	blendlayer layer_melee_swim_swingN -0.8 -0.2 1.0 2.0  spline poseparameter move_x
  blendlayer layer_melee_swim_swingS -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	activity ACT_MP_ATTACK_SWIM_MELEE 1
}
$sequence AttackSwim_Melee_Crit {
	melee_swimN
	noanimation
	numframes 34
	blendlayer layer_melee_swim_swingN -0.8 -0.2 1.0 2.0  spline poseparameter move_x
  blendlayer layer_melee_swim_swingS -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	activity ACT_MP_ATTACK_SWIM_MELEE_SECONDARY 1
}


//End Secondary Reload Airwalk
//-----------------------------------------------------------------------------------
// Item1
//-----------------------------------------------------------------------------------
$MPWeaponAims		ITEM1	$infoNode$


//-----------------------------------------------------------------------------------
// Misc
//-----------------------------------------------------------------------------------
$sequence diesimple die_headshot_deployed fps 30 activity ACT_DIESIMPLE 1 { event AE_RAGDOLL 52 "temp" }

$include heavy_movement.qci


//Crouch shoot
$sequence AttackCrouch_PRIMARY {
	primary_deployed_crouch_fire
	subtract AttackCrouch_PRIMARY 0
	delta
	weightlist UpperbodyBlend
	activity ACT_MP_ATTACK_CROUCH_PRIMARY 1
}

$sequence Layer_AttackCrouch_primary_spoolup {
	primary_deployed_crouch_spoolup
	fadein 0.7
	fadeout 0.7
	weightlist HeavyLowerUpper
	iklock rfoot 1 0 iklock lfoot 1 0
	blendlayer PRIMARY_aimmatrix_crouch_idle  0 0 0 5 spline
	blendlayer PRIMARY_aimmatrix_deployed_crouch 0 5 15 15 spline
}

$sequence AttackCrouch_primary_spoolup {
	primary_deployed_crouch_spooldown
	noanimation
	numframes 16
	blendlayer Layer_AttackCrouch_primary_spoolup 0 0 15 15 spline
	activity ACT_MP_ATTACK_CROUCH_PREFIRE 1
}

$sequence Layer_AttackCrouch_primary_spooldown {
	primary_deployed_crouch_spooldown
	fadein 0.5
	fadeout 0.5
	weightlist HeavyLowerUpper
  ikrule lhand touch "weapon_bone" usesource
	iklock rfoot 1 0 iklock lfoot 1 0
	blendlayer PRIMARY_aimmatrix_deployed_crouch 0 0 0 5 spline
	blendlayer PRIMARY_aimmatrix_crouch_idle 0 5 15 15 spline
}

$sequence AttackCrouch_primary_spooldown {
	primary_deployed_crouch_spooldown
	noanimation
	numframes 16
	blendlayer Layer_AttackCrouch_primary_spooldown 0 0 15 15 spline
	activity ACT_MP_ATTACK_CROUCH_POSTFIRE 1
}


//Stand shoot
$sequence AttackStand_PRIMARY {
	primary_fire_loop
	subtract attackstand_primary 0
	delta
	weightlist HeavyLowerUpper
	activity ACT_MP_ATTACK_STAND_PRIMARY 1
}

$sequence Layer_AttackStand_primary_spoolup {
	primary_spool_up
	fadein 0.7
	fadeout 0.7
	weightlist HeavyLowerUpper
	iklock rfoot 1 0 iklock lfoot 1 0
	blendlayer PRIMARY_aimmatrix_idle  0 0 0 5 spline
	blendlayer PRIMARY_aimmatrix_deployed 0 5 15 15 spline
}

$sequence AttackStand_primary_spoolup {
	primary_spool_down
	noanimation
	numframes 16
	blendlayer Layer_AttackStand_primary_spoolup 0 10 15 15 spline
	activity ACT_MP_ATTACK_STAND_PREFIRE 1
}

$sequence Layer_AttackStand_primary_spooldown {
	primary_spool_down
	fadein 0.5
	fadeout 0.5
	weightlist HeavyLowerUpper
  ikrule lhand touch "weapon_bone" usesource
	iklock rfoot 1 0 iklock lfoot 1 0
	blendlayer PRIMARY_aimmatrix_deployed 0 0 0 10 spline
	blendlayer PRIMARY_aimmatrix_idle 0 10 30 30 spline
}

$sequence AttackStand_primary_spooldown {
	primary_spool_down
	noanimation
	numframes 31
	blendlayer Layer_AttackStand_primary_spooldown 0 0 20 30 spline
	activity ACT_MP_ATTACK_STAND_POSTFIRE 1
}

$sequence AttackSwim_PRIMARY {
	primary_swim_fireloop
	subtract attackswim_primary 0
	delta
	weightlist UpperbodyBlend
	activity ACT_MP_ATTACK_SWIM_PRIMARY 1
}

$sequence AttackSwim_primary_spoolup {
	primary_swim_spoolup
	activity ACT_MP_ATTACK_SWIM_PREFIRE 1
}

$sequence AttackSwim_primary_spooldown {
	primary_swim_spooldown
	activity ACT_MP_ATTACK_SWIM_POSTFIRE 1
}

$sequence Primary_Flinch {
	primary_flinch
	subtract Primary_Flinch 0
	delta
	weightlist upperbodyblend
	activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

$sequence Secondary_Flinch {
	primary_flinch
	subtract Secondary_Flinch 0
	delta
	weightlist upperbodyblend
	activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

$sequence Melee_Flinch {
	primary_flinch
	subtract Melee_Flinch 0
	delta
	weightlist upperbodyblend
	activity ACT_MP_GESTURE_FLINCH_CHEST 1
}


//place sapper gesture
$sequence layer_placeSapper_ArmL "primary_sapper_place.dmx" {
	ikrule lhand release range 0 4 20 24
	weightlist LeftArmBlend
	hidden
}
$sequence PRIMARY_placeSapper "primary_sapper_place.dmx" {
	subtract PRIMARY_placeSapper 0
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	addlayer layer_placeSapper_ArmL
	activity ACT_MP_ATTACK_STAND_GRENADE 1
}


//-----------------------------------------------------------------------------------
// Hand Gesture anims for Voice commands
//-----------------------------------------------------------------------------------
//primary

	$sequence layer_gesture_primary_go_armL "gesture_primary_go.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 3 27 30
		ikrule lhand touch "bip_head" range 5 10 24 30 usesource
		hidden
		}

	$sequence gesture_primary_go "gesture_primary_go.dmx" {
		subtract gesture_primary_go 0
		delta
		weightlist hipsUpperBody
		ikrule lhand release range 0 3 27 30
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY 1
		}

	$sequence layer_gesture_primary_help_armL "gesture_primary_help.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 2 38 40
		ikrule lhand touch "bip_head" range 3 9 33 40 usesource
		hidden
		}

	$sequence gesture_primary_help "gesture_primary_help.dmx" {
		subtract gesture_primary_help 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_primary_help_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_HANDMOUTH_PRIMARY 1
		}

	$sequence layer_gesture_primary_cheer_armL "gesture_primary_cheer.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 3 27 30
		ikrule lhand touch "bip_head" range 3 9 27 30 usesource
		hidden
		}

	$sequence gesture_primary_cheer "gesture_primary_cheer.dmx" {
		subtract gesture_primary_cheer 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_primary_cheer_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_FISTPUMP_PRIMARY 1
		}


	$sequence layer_gesture_primary_positive_armL "gesture_primary_positive.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 3 27 30
		ikrule lhand touch "bip_head" range 2 7 26 30 usesource
		hidden
		}

	$sequence gesture_primary_positive "gesture_primary_positive.dmx" {
		subtract gesture_primary_positive 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_primary_positive_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_POSITIVE_PRIMARY 1
		}


//--------------------------------------------------------------------------------------------------------------------
//secondary

	$sequence layer_gesture_secondary_go_armL "gesture_secondary_go.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 3 27 30
		hidden
		}

	$sequence gesture_secondary_go "gesture_secondary_go.dmx" {
		subtract gesture_secondary_go 0
		delta
		weightlist hipsUpperBody
		ikrule lhand release range 0 3 27 30
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY 1
		}

	$sequence layer_gesture_secondary_help_armL "gesture_secondary_help.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 2 38 40
		ikrule lhand touch "bip_head" range 3 9 33 40 usesource
		hidden
		}

	$sequence gesture_secondary_help "gesture_secondary_help.dmx" {
		subtract gesture_secondary_help 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_secondary_help_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY 1
		}

	$sequence layer_gesture_secondary_cheer_armL "gesture_secondary_cheer.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 3 27 30
		ikrule lhand touch "bip_head" range 3 9 27 30 usesource
		hidden
		}

	$sequence gesture_secondary_cheer "gesture_secondary_cheer.dmx" {
		subtract gesture_secondary_cheer 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_secondary_cheer_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY 1
		}

	$sequence layer_gesture_secondary_positive_armL "gesture_secondary_positive.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 5 26 30
		ikrule lhand touch "bip_head" range 2 5 26 30 usesource
		hidden
		}

	$sequence gesture_secondary_positive "gesture_secondary_positive.dmx" {
		subtract gesture_secondary_positive 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_secondary_positive_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_POSITIVE_SECONDARY 1
		}

//------------------------------------------------------------------------------------------------------
//melee

	$sequence layer_gesture_melee_go_armL "gesture_melee_go.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand touch "bip_head" range 5 10 24 30 usesource
		hidden
		}

	$sequence gesture_melee_go "gesture_melee_go.dmx" {
		subtract gesture_melee_go 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_melee_go_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_FINGERPOINT_MELEE 1
		}

	$sequence layer_gesture_melee_help_armL "gesture_melee_help.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand touch "bip_head" range 3 9 27 40 usesource
		hidden
		}

	$sequence gesture_melee_help "gesture_melee_help.dmx" {
		subtract gesture_melee_help 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_melee_help_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_HANDMOUTH_MELEE 1
		}

	$sequence layer_gesture_melee_cheer_armL "gesture_melee_cheer.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 3 27 30
		ikrule lhand touch "bip_head" range 3 9 27 30 usesource
		hidden
		}

	$sequence gesture_melee_cheer "gesture_melee_cheer.dmx" {
		subtract gesture_melee_cheer 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_melee_cheer_armL
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_FISTPUMP_MELEE 1
		}

	$sequence layer_gesture_melee_positive "gesture_melee_positive.dmx" {
		weightlist ArmLGestureBlend
		ikrule lhand release range 0 5 26 30
		ikrule lhand touch "bip_head" range 2 5 26 30 usesource
		hidden
		}

	$sequence gesture_melee_positive "gesture_melee_positive.dmx" {
		subtract gesture_melee_positive 0
		delta
		weightlist hipsUpperBody
		addlayer layer_gesture_melee_positive
		iklock rfoot 1 0 iklock lfoot 1 0
		activity ACT_MP_GESTURE_VC_POSITIVE_MELEE 1
		}


//-----------------------------------------------------------------------------------
//TAUNTS
//-----------------------------------------------------------------------------------
$sequence layer_taunt01 "taunt01.dmx" fps 30 hidden
$sequence taunt01 "taunt01.dmx" noanimation {
	numframes 155
	blendlayer layer_taunt01  0 5 149 154
	} { event 5004 37 "Taunt.Heavy01HoldGun" } { event 5004 66 "Taunt.Heavy01HoldGun" } { event 5004 76 "Taunt.Heavy01HoldGunLight" } { event 5004 97 "Taunt.Heavy01EquipmentGun2" } { event 5004 18 "Taunt.Heavy01EquipmentGun" } { event 5004 45 "Taunt.Heavy01EquipmentRustleHeavy" } { event 5004 16 "Taunt.Heavy01ClothesRustle" }  { event 5004 134 "Taunt.Heavy01EquipmentGun" }

$sequence layer_taunt02 "taunt02.dmx" fps 30 hidden
$sequence taunt02 "taunt02.dmx" noanimation {
	numframes 120
	blendlayer layer_taunt02  0 5 114 119
	} { event 5004 12 "Taunt.Heavy02ShotgunSpin" } { event 5004 55 "Taunt.Heavy02ShotgunGrab" } { event 5004 57 "Taunt.Heavy02EquipmentJingle" }

$sequence layer_taunt03 "taunt03.dmx" fps 30 hidden
$sequence taunt03 "taunt03.dmx" noanimation {
	numframes 120
	blendlayer layer_taunt03  0 5 114 119
} { event 5004 40 "Taunt.Heavy03ClothesRustle" } { event 5004 77 "Taunt.Heavy03ClothesSwipe" } { event 5004 44 "Taunt.Heavy03EquipmentJingle"

{ event 5004 81 "Taunt.Heavy03EquipmentJingleShort" }
}

$sequence layer_taunt04 "taunt04.dmx" fps 30 hidden alignto Stand_ITEM1
$sequence taunt04 "taunt04.dmx" noanimation {
	numframes 121
	blendlayer layer_taunt04  0 5 114 120
	event	AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 24 "bites 1"

} { event AE_CL_CREATE_PARTICLE_EFFECT 30 "sandwich_fx follow_attachment eyes" }

$sequence layer_taunt05 "taunt05.dmx" fps 30 hidden alignto Stand_MELEE
$sequence taunt05 "taunt05.dmx" noanimation {
	numframes 128
	blendlayer layer_taunt05  0 5 122 127
	{ event 5004 08 "Taunt.HeavyBell" } { event 5004 40 "Taunt.HeavyUpperCut" } { event 5004 62 "Taunt.HeavyUpperCut" } { event 5004 88 "Taunt.HeavyUpperCut" } { event 5004 111 "Taunt.HeavyUpperCut" }

}
//--------------------------------------------------------
//Death Animations
//--------------------------------------------------------

$sequence primary_death_headshot "primary_death_headshot.dmx" fps 30 {
	frames 0 70
	}

$sequence primary_death_backstab "primary_death_backstab.dmx" fps 30 {
	frames 0 55
	}


//--------------------------------------------------------
//primary stun layers
//--------------------------------------------------------

$sequence layer_PRIMARY_Stun_begin "primary_stun_all.dmx" weightlist armsblendstun {
	frames 0 25
	hidden
}

$sequence layer_PRIMARY_stun_middle "primary_stun_all.dmx" weightlist armsblendstun {
	frames 25 55
	hidden
}

$sequence layer_PRIMARY_Stun_end "primary_stun_all.dmx" weightlist armsblendstun {
	frames 60 81
	hidden
}

$animation a_stun_startpose "primary_stun_all.dmx" frames 0 0

$animation a_stun_endpose "primary_stun_all.dmx" frames 60 60

//------------------------------------
//primary stun
//------------------------------------

$sequence PRIMARY_Stun_begin {
	"primary_stun_all.dmx"
	frames 0 25
	snap
	subtract a_stun_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
 	blendlayer layer_PRIMARY_Stun_begin 0 7 25 25
 	activity ACT_MP_STUN_BEGIN 1
}

$sequence PRIMARY_stun_middle {
	"primary_stun_all.dmx"
	frames 25 55
	snap
	subtract a_stun_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
  addlayer layer_PRIMARY_stun_middle
 	activity ACT_MP_STUN_MIDDLE 1
}

$sequence PRIMARY_stun_end {
	"primary_stun_all.dmx"
	frames 60 81
	snap
	subtract a_stun_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
  blendlayer layer_PRIMARY_Stun_end 0 0 10 21
 	activity ACT_MP_STUN_END 1
}


//CHARACTER SELECTION

$sequence selectionMenu_StartPose "selectionMenu_Anim01.dmx" frames 0 0

$sequence selectionMenu_Anim01 "selectionMenu_Anim01.dmx" frames 1 120 {
	localhierarchy "weapon_bone" "bip_hand_L"
} event AE_CL_PLAYSOUND 7 "Selection.HeavyFootStomp" event AE_CL_PLAYSOUND 10 "Selection.HeavyClothesRustle" event AE_CL_PLAYSOUND 12 "Selection.HeavyEquipment1" event AE_CL_PLAYSOUND 33 "Selection.HeavyFootStomp" event AE_CL_PLAYSOUND 38 "Selection.HeavyEquipment2"

$sequence selectionMenu_Idle "selectionMenu_Anim01.dmx"  frames 71 125 loop {
	localhierarchy "weapon_bone" "bip_hand_L"
}

$popd