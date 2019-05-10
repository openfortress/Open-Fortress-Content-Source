// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations.mdl

$definevariable infoNode "mercenaryInfo"
$include "mercenary_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// LEGACY animations (primary, secondary etc)
// Borrowed from Soldier
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// mercenary-specific weightlists
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
// Primary
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK		PRIMARY	$infoNode$

$sequence test primary_swim_reload.dmx


$MPGestureAttack AttackStand_PRIMARY  PRIMARY_fire          ACT_MP_ATTACK_STAND_PRIMARY
$MPGestureAttack AttackCrouch_PRIMARY PRIMARY_crouch_fire   ACT_MP_ATTACK_CROUCH_PRIMARY
$MPGestureAttack AttackSwim_PRIMARY   PRIMARY_swim_fire     ACT_MP_ATTACK_SWIM_PRIMARY

$sequence layer_reload_standing_arms "primary_reload.dmx" weightlist ArmsBlend {
	frames 0 33
	numframes 33
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 10 16 21
	ikrule lhand touch "weapon_bone" usesource range 21 24 32 32
	hidden
}
$animation a_reload_startpose primary_reload frames 0 0
$sequence ReloadStand_PRIMARY {
	PRIMARY_reload
	frames 0 33
	numframes 33
	fps 30
	subtract ReloadStand_PRIMARY 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms 0 4 32 32
 	activity ACT_MP_RELOAD_STAND_PRIMARY 1
 	event AE_CL_BODYGROUP_SET_VALUE 11 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 21 "rocket 0"
}

$sequence ReloadCrouch_PRIMARY {
	PRIMARY_reload
	frames 0 33
	numframes 33
	fps 30
	subtract ReloadCrouch_PRIMARY 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms 0 4 32 32
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY 1
 	event AE_CL_BODYGROUP_SET_VALUE 11 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 21 "rocket 0"
}

$sequence ReloadAirwalk_PRIMARY {
	PRIMARY_reload
	frames 0 33
	numframes 33
	fps 30
	subtract ReloadAirwalk_PRIMARY 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms 0 4 32 32
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY 1
 	event AE_CL_BODYGROUP_SET_VALUE 11 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 21 "rocket 0"
}

$sequence layer_reload_standing_arms_loop "primary_reload.dmx" weightlist ArmsBlend {
	frames 33 60
	numframes 28
	loop
	fps 30
	ikrule lhand touch "weapon_bone" usesource range 0 0 0 5
	ikrule lhand touch "bip_pelvis" usesource range 8 11 14 17
	ikrule lhand touch "weapon_bone" usesource range 19 22 27 27
	hidden
}
$sequence ReloadStand_PRIMARY_loop {
	PRIMARY_reload
	frames 33 60
	numframes 28
  loop
	fps 30
	subtract a_reload_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_loop
 	activity ACT_MP_RELOAD_STAND_PRIMARY_LOOP 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"
 	event AE_CL_BODYGROUP_SET_VALUE 12 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 22 "rocket 0"
}
$sequence ReloadCrouch_PRIMARY_loop {
	PRIMARY_reload
	frames 33 60
	numframes 28
  loop
	fps 30
	subtract a_reload_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_loop
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_LOOP 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"
 	event AE_CL_BODYGROUP_SET_VALUE 12 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 22 "rocket 0"
}
$sequence ReloadAirwalk_PRIMARY_loop {
	PRIMARY_reload
	frames 33 60
	numframes 28
  loop
	fps 30
	subtract a_reload_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_loop
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_LOOP 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"
 	event AE_CL_BODYGROUP_SET_VALUE 12 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 22 "rocket 0"
}

$sequence layer_reload_standing_arms_end "primary_reload.dmx" weightlist ArmsBlend {
	frames 70 88
	numframes 21
	fps 44
	ikrule lhand touch "weapon_bone" usesource
	hidden
}
$sequence ReloadStand_PRIMARY_end {
	PRIMARY_reload
	frames 70 88
	fps 30
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_end 0 0 10 18 spline
 	activity ACT_MP_RELOAD_STAND_PRIMARY_END 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"

}
$sequence ReloadCrouch_PRIMARY_end {
	PRIMARY_reload
	frames 70 88
	fps 30
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_end 0 0 10 18 spline
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_END 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"

}
$sequence ReloadAirwalk_PRIMARY_end {
	PRIMARY_reload
	frames 70 88
	fps 30
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_end 0 0 10 18 spline
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_END 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"

}


$sequence layer_reload_swim_arms "primary_swim_reload.dmx" weightlist ArmsBlend {
	fps 44
	ikrule lhand touch "bip_pelvis" usesource range 7 12 12 17
	ikrule lhand touch "weapon_bone" usesource range 22 27 33 38
	ikrule lhand touch "bip_pelvis" usesource range 48 53 53 58
	ikrule lhand touch "weapon_bone" usesource range 59 64 68 73
	hidden
}
$sequence ReloadSwim_PRIMARY {
	PRIMARY_swim_reload
	fps 44
	subtract ReloadSwim_PRIMARY 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_swim_arms
 	activity ACT_MP_RELOAD_SWIM_PRIMARY 1
}

//Hit flinch
$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

//-----------------------------------------------------------------------------------
// Secondary
//-----------------------------------------------------------------------------------
$Shotgun_WeaponAims_leftHandIK		SECONDARY	$infoNode$
$MPGestureAttack AttackStand_SECONDARY  SECONDARY_fire          ACT_MP_ATTACK_STAND_SECONDARY
$MPGestureAttack AttackCrouch_SECONDARY SECONDARY_crouch_fire   ACT_MP_ATTACK_CROUCH_SECONDARY

$sequence AttackSwim_SECONDARY {
	SECONDARY_swim_fire
	subtract AttackSwim_SECONDARY 0
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule lhand touch "weapon_bone_1" usesource
 	activity ACT_MP_ATTACK_SWIM_SECONDARY 1
}

$MPGestureReload ReloadSwim_SECONDARY   SECONDARY_swim_reload   ACT_MP_RELOAD_SWIM_SECONDARY

$animation a_reload_secondary_startpose secondary_reload frames 0 0
$animation a_reload_crouch_secondary_startpose secondary_crouch_reload frames 0 0

$sequence layer_reload_standing_secondary_arms "secondary_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$sequence ReloadStand_SECONDARY {
	SECONDARY_reload
	frames 0 20
	numframes 21
	fps 30
	subtract ReloadStand_SECONDARY 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_secondary_arms 0 4 21 21
 	activity ACT_MP_RELOAD_STAND_SECONDARY 1
}

$sequence layer_reload_standing_secondary_arms_loop "secondary_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_SECONDARY_loop {
	SECONDARY_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_secondary_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_secondary_arms_loop
 	activity ACT_MP_RELOAD_STAND_SECONDARY_LOOP 1
}

$sequence layer_reload_standing_secondary_arms_end "SECONDARY_reload.dmx" weightlist ArmsBlend {
	frames 40 55
	numframes 15
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_SECONDARY_end {
	SECONDARY_reload
	frames 40 55
	numframes 15
	fps 30
	subtract a_reload_secondary_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_secondary_arms_end 0 0 8 15 spline
 	activity ACT_MP_RELOAD_STAND_SECONDARY_END 1
}


//crouch reload
$sequence layer_reload_crouch_secondary_arms "secondary_crouch_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$sequence ReloadCrouch_SECONDARY {
	SECONDARY_crouch_reload
	frames 0 20
	numframes 20
	fps 30
	subtract a_reload_crouch_secondary_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_secondary_arms 0 4 20 20
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY 1
}

$sequence layer_reload_crouch_secondary_arms_loop "secondary_crouch_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_SECONDARY_loop {
	SECONDARY_crouch_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_crouch_secondary_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_crouch_secondary_arms_loop
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_LOOP 1
}

$sequence layer_reload_crouch_secondary_arms_end "secondary_crouch_reload.dmx" weightlist ArmsBlend {
	frames 40 55
	numframes 15
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_SECONDARY_end {
	SECONDARY_crouch_reload
	frames 40 55
	numframes 15
	fps 30
	subtract a_reload_crouch_secondary_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_secondary_arms_end 0 0 8 15
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_END 1
}


//airwalk reloads
$sequence a_SECONDARY_reload_airwalk 	secondary_reload
$sequence layer_reload_arms_SECONDARY "secondary_reload.dmx" frames 0 20 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SECONDARY_reload_airwalk {
	"SECONDARY_reload.dmx"
	frames 0 20
	subtract a_SECONDARY_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SECONDARY 0 10 21 21
 	activity ACT_MP_RELOAD_AIRWALK_SECONDARY 1
}

$sequence layer_reload_arms_SECONDARY_loop "SECONDARY_reload.dmx" frames 20 40 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SECONDARY_reload_airwalk_loop {
	"SECONDARY_reload.dmx"
	 frames 20 40
	 subtract a_SECONDARY_reload_airwalk 0
	 delta
	 ikrule lhand release
	 ikrule rhand release
	 iklock rfoot 1 0 iklock lfoot 1 0
 	 blendlayer layer_reload_arms_SECONDARY_loop -2 -2 21 21
 	 activity ACT_MP_RELOAD_AIRWALK_SECONDARY_LOOP 1
}


$sequence layer_reload_arms_SECONDARY_end "SECONDARY_reload.dmx" frames 40 55 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SECONDARY_reload_airwalk_end {
	"SECONDARY_reload.dmx"
	frames 40 55
	subtract a_SECONDARY_reload_airwalk 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SECONDARY_end -2 -2 1 7
 	activity ACT_MP_RELOAD_AIRWALK_SECONDARY_END 1
}

//Swim reloads
$sequence a_SECONDARY_reload_swim 	SECONDARY_reload
$sequence layer_reload_arms_SECONDARY_swim "SECONDARY_reload.dmx" frames 0 20 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SECONDARY_reload_swim {
	"SECONDARY_reload.dmx"
	frames 0 20
	subtract a_SECONDARY_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SECONDARY_swim 0 10 21 21
 	activity ACT_MP_RELOAD_SWIM_SECONDARY 1
}

$sequence layer_reload_arms_SECONDARY_loop_swim "SECONDARY_reload.dmx" frames 20 40 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SECONDARY_reload_swim_loop {
	"SECONDARY_reload.dmx"
	frames 20 40
	subtract a_SECONDARY_reload_swim 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SECONDARY_loop_swim -2 -2 21 21
 	activity ACT_MP_RELOAD_SWIM_SECONDARY_LOOP 1
}


$sequence layer_reload_arms_SECONDARY_end_swim "SECONDARY_reload.dmx" frames 40 55 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SECONDARY_reload_swim_end {
	"SECONDARY_reload.dmx"
	frames 40 55
	subtract a_SECONDARY_reload_swim 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SECONDARY_end_swim -2 -2 1 7
 	activity ACT_MP_RELOAD_SWIM_SECONDARY_END 1
}

//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPWeaponAims		MELEE	$infoNode$

$sequence layer_AttackStandMelee_arms "melee_swing.dmx" weightlist armsBlendMelee {
	fps 30
	hidden
}
$sequence Attack_Stand_MELEE {
	melee_swing
	fps 30
	subtract Attack_Stand_MELEE 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackStandMelee_arms 0 3 21 24 spline
 	activity ACT_MP_ATTACK_STAND_MELEE 1
}
$sequence layer_AttackCrouchMelee_arms "melee_crouch_swing.dmx" weightlist armsBlendMelee {
	fps 30
	hidden
}
$sequence Attack_Crouch_MELEE {
	melee_crouch_swing
	fps 30
	subtract Attack_Crouch_MELEE 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackCrouchMelee_arms 0 3 21 24 spline
 	activity ACT_MP_ATTACK_CROUCH_MELEE 1
}

$animation a_Melee_Swim_Swing Melee_Swim_Swing.dmx frames 0 0
$sequence armslayer_melee_Swim_swing Melee_Swim_Swing.dmx {
 weightlist Swim_Melee_SwingArms
 hidden
}

$sequence bodylayer_Melee_Swim_Swing Melee_Swim_Swing.dmx subtract a_Melee_Swim_Swing 0 {
 weightlist Swim_Melee_SwingBody
 delta
 hidden
}

$sequence Melee_Swim_Swing Melee_Swim_Swing.dmx noanimation numframes 24 {
 blendlayer bodylayer_Melee_Swim_Swing 0 3 21 24
 blendlayer armslayer_Melee_Swim_Swing 0 3 21 24
 iklock rfoot 1 0 iklock lfoot 1 0
 ikrule lhand release
 activity ACT_MP_ATTACK_SWIM_MELEE 1
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

// scenes for flying after rocket fire
$sequence primary_floatA "primary_floatA.dmx" loop fps 30 activity ACT_MP_AIRWALK_PRIMARY 1
$sequence primary_floatB "primary_floatB.dmx" loop fps 30 activity ACT_MP_AIRWALK_PRIMARY 1
$sequence primary_floatC "primary_floatC.dmx" loop ikrule lhand touch "weapon_bone" usesource fps 30 activity ACT_MP_AIRWALK_PRIMARY 1
$sequence primary_floatD "primary_floatD.dmx" loop ikrule lhand touch "weapon_bone" usesource fps 30 activity ACT_MP_AIRWALK_PRIMARY 1


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
	ikrule lhand release range 0 3 33 36
	ikrule lhand touch "bip_head" range 3 9 32 36 usesource
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
	ikrule lhand release range 0 4 36 39
	ikrule lhand touch "bip_head" range 2 6 34 39 usesource
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
	ikrule lhand release range 0 5 26 30
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
	ikrule lhand release range 0 3 33 36
	ikrule lhand touch "bip_head" range 2 9 33 36 usesource
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
	ikrule lhand release range 0 4 36 39
	ikrule lhand touch "bip_head" range 2 6 34 39 usesource
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
	ikrule lhand touch "bip_head" range 3 9 32 36 usesource
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
	ikrule lhand release range 0 4 36 39
	ikrule lhand touch "bip_head" range 2 6 34 39 usesource
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



//-----------------------------------------------------------------------------------
//TAUNTS
//-----------------------------------------------------------------------------------
$sequence layer_taunt01 "taunt01.dmx" fps 30 hidden
$sequence taunt01 "taunt01.dmx" noanimation {
	numframes 85
	blendlayer layer_taunt01  0 5 79 84
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 84
	} { event 5004 17 "Taunt.mercenary01ClothesSwipe" } { event 5004 17 "Taunt.mercenary01HeelClick" } { event 5004 47 "Taunt.mercenary01ClothesRustle" } { event 5004 59 "Taunt.mercenary01HelmetJostle" }

$sequence layer_taunt02 "taunt02.dmx" fps 30 hidden
$sequence taunt02 "taunt02.dmx" noanimation {
	numframes 130
	blendlayer layer_taunt02  0 5 124 129
 	event AE_CL_BODYGROUP_SET_VALUE 18 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 126 "rocket 0"
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 129
	} { event 5004 71 "Taunt.mercenary02GrenadeCatch" } { event 5004 85 "Taunt.mercenary02GrenadeCatch" } { event 5004 101 "Taunt.mercenary02GrenadeCatch" } { event 5004 108 "Taunt.mercenary02GrenadeCatch" }  { event 5004 64 "Taunt.mercenary02ShovelCatch" }  { event 5004 92 "Taunt.mercenary02ShovelCatch" } { event 5004 11 "Taunt.mercenary02ClothesRustle" }

$sequence layer_taunt03 "taunt03.dmx" fps 30 hidden
$sequence taunt03 "taunt03.dmx" noanimation {
	numframes 120
	blendlayer layer_taunt03  0 5 114 119
	} { event 5004 27 "Taunt.mercenary03FootStomp" } { event 5004 79 "Taunt.mercenary03HelmetHit" } { event 5004 89 "Taunt.mercenary03HelmetHit" } { event 5004 99 "Taunt.mercenary03HelmetHit" } { event 5004 27 "Taunt.mercenary03ClothesRustle" } { event 5004 60 "Taunt.mercenary03ClothesSwipe" } { event 5004 40 "Taunt.mercenary03HelmetJostle" }

//CHARACTER SELECTION

$sequence selectionMenu_all "selectionMenu_Anim01.dmx" fps 30 event AE_CL_PLAYSOUND 20 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 24 "Selection.mercenaryEquipment" event AE_CL_PLAYSOUND 36 "Selection.mercenaryClothesRustle" event AE_CL_PLAYSOUND 47 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 64 "Selection.mercenaryClothesRustle" event AE_CL_PLAYSOUND 73 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 94 "Selection.mercenaryLauncherSetStart" event AE_CL_PLAYSOUND 103 "Selection.mercenaryLauncherSetStop" event AE_CL_PLAYSOUND 103 "Selection.mercenaryLauncherHitGround" //hidden localhierarchy "weapon_bone" "bip_foot_R"


// --------------------------
// MOVEMENT MOVEMENT MOVEMENT
// --------------------------


//================================================================================================
//
// IDLES
//
//================================================================================================

$sequence Stand_PRIMARY  PRIMARY_idle loop alignto a_reference addlayer PRIMARY_aimmatrix_idle activity ACT_MP_STAND_PRIMARY 1
$sequence Stand_SECONDARY  SECONDARY_idle loop alignto a_reference addlayer SECONDARY_aimmatrix_idle activity ACT_MP_STAND_SECONDARY 1
$sequence Stand_MELEE  MELEE_idle loop alignto a_reference addlayer MELEE_aimmatrix_idle activity ACT_MP_STAND_MELEE 1
$sequence Stand_LOSER  LOSER_idle loop alignto a_reference activity ACT_MP_STAND_LOSERSTATE 1

// Currently Crouch is not available in the game
$sequence Crouch_PRIMARY PRIMARY_crouch_idle loop alignto a_reference addlayer PRIMARY_aimmatrix_crouch_idle  activity ACT_MP_CROUCH_PRIMARY 1
$sequence Crouch_SECONDARY SECONDARY_crouch_idle loop alignto a_reference addlayer SECONDARY_aimmatrix_crouch_idle  activity ACT_MP_CROUCH_SECONDARY 1
$sequence Crouch_MELEE MELEE_crouch_idle loop alignto a_reference addlayer MELEE_aimmatrix_crouch_idle  activity ACT_MP_CROUCH_MELEE 1
$sequence Crouch_LOSER LOSER_crouch_idle loop alignto a_reference activity ACT_MP_CROUCH_LOSERSTATE 1



//================================================================================================
//
// JUMP PRIMARY
//
//================================================================================================

$sequence Jump_Start_primary { 
	primary_jump
	alignto a_reference
	z  //this extracts the up/down motion of the body
	frames 0 23
	ikrule lfoot release ikrule rfoot release
	addlayer primary_aimmatrix_idle 
	activity ACT_MP_JUMP_START_primary 1 
} 

$sequence layer_primary_jump_floatNoise primary_floatD subtract layer_primary_jump_floatNoise 0 delta realtime hidden

$sequence Jump_Float_primary { 
	primary_jump
	alignto a_reference
	frames 24 40
	numframes 24
	loop
	addlayer layer_primary_jump_floatNoise
	addlayer primary_aimmatrix_idle 
	activity ACT_MP_JUMP_FLOAT_primary 1 
} 

$sequence jumpLand_primary { 
	primary_jump_Land 
	subtract jumpLand_primary 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 
	activity ACT_MP_JUMP_LAND_primary 1 
}


//================================================================================================
//
// JUMP SECONDARY
//
//================================================================================================

$sequence Jump_Start_secondary { 
	secondary_jump
	alignto a_reference
	z  
	frames 0 21
	ikrule lfoot release ikrule rfoot release
	addlayer secondary_aimmatrix_idle 
	activity ACT_MP_JUMP_START_secondary 1 
} 


$sequence Jump_Float_secondary { 
	secondary_jump
  frames 25 44
	alignto a_reference
	loop
	addlayer layer_primary_jump_floatNoise
	addlayer secondary_aimmatrix_idle 
	activity ACT_MP_JUMP_FLOAT_secondary 1 
} 


$sequence jumpLand_secondary { 
	secondary_jump_Land 
	subtract jumpLand_secondary 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 
	activity ACT_MP_JUMP_LAND_SECONDARY 1 
}

//================================================================================================
//
// JUMP MELEE
//
//================================================================================================
//melee jump
$sequence a_jumpStart_melee melee_jump frames 0 25 alignto a_reference Z activity ACT_MP_JUMP_START_melee 1 LX LY
$sequence a_jumpfloat_melee melee_jump frames 26 103	loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_melee 1 LX LY
$sequence jumpLandPose_melee melee_jump frames 25 25 numframes 30 loop
$sequence jumpLand_melee { 
	melee_jump_land 
	subtract jumpLand_melee 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 
	
	activity ACT_MP_JUMP_LAND_melee 1 
}


//================================================================================================
//
// JUMP LOSER
//
//================================================================================================

$sequence a_jumpStart_loser loser_jump frames 0 25 alignto a_reference Z activity ACT_MP_JUMP_START_LOSERSTATE 1 LX LY
$sequence a_jumpfloat_loser loser_jump frames 26 103	loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_LOSERSTATE 1 LX LY
$sequence jumpLandPose_loser loser_jump frames 25 25 numframes 30 loop
$sequence jumpLand_loser { 
	loser_jump_land 
	subtract jumpLand_loser 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 
	
	activity ACT_MP_JUMP_LAND_LOSERSTATE 1 
}

//================================================================================================
//
// SWIMS
//
//================================================================================================

$MPAimLayer primary_aimmatrix_swim        primary_aimmatrix_swim        $infoNode$
$MPswimWithWeapon Primary 0 0 0 0 0 0 0 0 primary_swimN	primary_swimCenter	primary_aimmatrix_swim	ACT_MP_SWIM_Primary $infonode$

$MPAimLayer secondary_aimmatrix_swim        secondary_aimmatrix_swim        $infoNode$

$animation a_swimCenter_secondary  secondary_swimCenter blockname "mercenaryInfo" loop
$sequence s_swimAlign_secondary a_swimCenter_secondary
$animation a_swimS_secondary  secondary_swimS     startloop 0  rotateto -180 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimSE_secondary  secondary_swimSE   startloop 0 rotateto -135 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimE_secondary   secondary_swimE    startloop 0   rotateto -90 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo"  
$animation a_swimNE_secondary  secondary_swimNE   startloop 0  rotateto -45 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimN_secondary   secondary_swimN    startloop 0     rotateto 0 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimNW_secondary  secondary_swimNW   startloop 0   rotateto 45 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo"
$animation a_swimW_secondary   secondary_swimW    startloop 0   rotateto 90 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimSW_secondary  secondary_swimSW   startloop 0  rotateto 135 align s_swimAlign_secondary X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$sequence Swim_secondary  { 
	a_swimsw_secondary	a_swimS_secondary 		a_swimSE_secondary  
	a_swimW_secondary	a_swimCenter_secondary 	a_swimE_secondary  
	a_swimNW_secondary 	a_swimN_secondary 		a_swimNE_secondary  
	blendwidth 3 blend move_y -1 1 blend move_x -1 1 
	addlayer secondary_aimmatrix_swim 
	activity ACT_MP_SWIM_Secondary 1 
} 

$MPAimLayer melee_aimmatrix_swim        melee_aimmatrix_swim        $infoNode$
$MPswimWithWeapon Melee 0 0 0 0 0 0 0 0 melee_swimN	 melee_swimCenter	melee_aimmatrix_swim	ACT_MP_SWIM_Melee $infonode$

$animation a_swimCenter_loser  loser_swimCenter blockname "mercenaryInfo" loop
$sequence s_swimAlign_loser a_swimCenter_loser
$animation a_swimS_loser  loser_swimS     startloop 0  rotateto -180 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimSE_loser  loser_swimSE   startloop 0 rotateto -135 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimE_loser   loser_swimE    startloop 0   rotateto -90 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo"  
$animation a_swimNE_loser  loser_swimNE   startloop 0  rotateto -45 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimN_loser   loser_swimN    startloop 0     rotateto 0 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimNW_loser  loser_swimNW   startloop 0   rotateto 45 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo"
$animation a_swimW_loser   loser_swimW    startloop 0   rotateto 90 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimSW_loser  loser_swimSW   startloop 0  rotateto 135 align s_swimAlign_loser X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$sequence Swim_loser  { 
	a_swimsw_loser	a_swimS_loser 		a_swimSE_loser  
	a_swimW_loser	a_swimCenter_loser 	a_swimE_loser  
	a_swimNW_loser 	a_swimN_loser 		a_swimNE_loser  
	blendwidth 3 blend move_y -1 1 blend move_x -1 1 
	activity ACT_MP_SWIM_LOSERSTATE 1 
} 

//================================================================================================
//
// RUN PRIMARY
//
//================================================================================================

$animation a_runCenter_PRIMARY  primary_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_PRIMARY primary_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 18
	alignto a_reference
}
$animation a_runSE_PRIMARY primary_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 17
	alignto a_reference
}
$animation a_runE_PRIMARY primary_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 17
	alignto a_reference
}
$animation a_runNE_PRIMARY primary_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 4
	alignto a_reference
}
$animation a_runN_PRIMARY primary_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 4
	alignto a_reference
}
$animation a_runNW_PRIMARY primary_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_PRIMARY primary_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 4
	alignto a_reference
}
$animation a_runSW_PRIMARY primary_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 17
	alignto a_reference
}
$sequence Run_PRIMARY {
	a_runsw_primary	a_runS_primary		a_runSE_primary
	a_runW_primary	a_runCenter_primary	a_runE_primary
	a_runNW_primary	a_runN_primary		a_runNE_primary
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer primary_aimmatrix_run
	activity ACT_MP_RUN_PRIMARY 1
			{ event 7001 2 "right" }
	    { event 7001 11 "left" }
}


//================================================================================================
//
// Crouch walk PRIMARY
//
//================================================================================================

$animation a_crouch_walkCenter_PRIMARY  primary_crouch_walkCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_crouch_walkS_PRIMARY primary_crouch_walkS blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 8
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_crouch_walkSE_PRIMARY primary_crouch_walkSE blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 7
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_crouch_walkE_PRIMARY primary_crouch_walkE blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 19
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_crouch_walkNE_PRIMARY primary_crouch_walkNE blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 20
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_crouch_walkN_PRIMARY primary_crouch_walkN blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 21
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_crouch_walkNW_PRIMARY primary_crouch_walkNW blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 21
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_crouch_walkW_PRIMARY primary_crouch_walkW blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 8
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_crouch_walkSW_PRIMARY primary_crouch_walkSW blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 8
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$sequence CrouchWalk_PRIMARY {
	a_crouch_walkSW_primary	a_crouch_walkS_primary		a_crouch_walkSE_primary
	a_crouch_walkW_primary	a_crouch_walkCenter_primary	a_crouch_walkE_primary
	a_crouch_walkNW_primary	a_crouch_walkN_primary		a_crouch_walkNE_primary
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer primary_aimmatrix_crouch_idle
	activity ACT_MP_CROUCHWALK_PRIMARY 1
}


$MPCrouchWalkWithWeapon       CrouchWalk_Secondary        0 0 0 0 0 0 0 0 Secondary_crouch_walkN        Secondary_crouch_walkCenter        Secondary_aimmatrix_idle        ACT_MP_CROUCHWALK_Secondary $infoNode$


//================================================================================================
//
// RUN SECONDARY
//
//================================================================================================

$animation a_runCenter_SECONDARY  secondary_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_SECONDARY secondary_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 4
	alignto a_reference
}
$animation a_runSE_SECONDARY secondary_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 0
	alignto a_reference
}
$animation a_runE_SECONDARY secondary_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 14
	alignto a_reference
}
$animation a_runNE_SECONDARY secondary_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 15
	alignto a_reference
}
$animation a_runN_SECONDARY secondary_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 15
	alignto a_reference
}
$animation a_runNW_SECONDARY secondary_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 14
	alignto a_reference
}
$animation a_runW_SECONDARY secondary_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 13
	alignto a_reference
}
$animation a_runSW_SECONDARY secondary_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 4
	alignto a_reference
}
$sequence Run_SECONDARY {
	a_runsw_secondary	a_runS_secondary		a_runSE_secondary
	a_runW_secondary	a_runCenter_secondary	a_runE_secondary
	a_runNW_secondary	a_runN_secondary		a_runNE_secondary
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer secondary_aimmatrix_run
	activity ACT_MP_RUN_SECONDARY 1
			{ event 7001 2 "right" }
	    { event 7001 11 "left" }
}


$MPCrouchWalkWithWeapon       CrouchWalk_Melee        0 0 0 0 0 0 0 0 Melee_crouch_walkN        Melee_crouch_walkCenter        Melee_aimmatrix_crouch_idle        ACT_MP_CROUCHWALK_Melee $infoNode$


//================================================================================================
//
// RUN MELEE
//
//================================================================================================

$animation a_runCenter_MELEE  melee_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_MELEE melee_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 4
	alignto a_reference
}
$animation a_runSE_MELEE melee_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 0
	alignto a_reference
}
$animation a_runE_MELEE melee_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 14
	alignto a_reference
}
$animation a_runNE_MELEE melee_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 15
	alignto a_reference
}
$animation a_runN_MELEE melee_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 15
	alignto a_reference
}
$animation a_runNW_MELEE melee_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 14
	alignto a_reference
}
$animation a_runW_MELEE melee_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 13
	alignto a_reference
}
$animation a_runSW_MELEE melee_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 4
	alignto a_reference
}
$sequence Run_MELEE {
	a_runsw_melee	a_runS_melee		a_runSE_melee
	a_runW_melee	a_runCenter_melee	a_runE_melee
	a_runNW_melee	a_runN_melee		a_runNE_melee
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer melee_aimmatrix_run
	activity ACT_MP_RUN_MELEE 1
			{ event 7001 2 "right" }
	    { event 7001 11 "left" }
}

//================================================================================================
//
// RUN LOSER
//
//================================================================================================

$animation a_runCenter_loser  loser_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_loser loser_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 4
	alignto a_reference
}
$animation a_runSE_loser loser_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 0
	alignto a_reference
}
$animation a_runE_loser loser_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 14
	alignto a_reference
}
$animation a_runNE_loser loser_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 15
	alignto a_reference
}
$animation a_runN_loser loser_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 15
	alignto a_reference
}
$animation a_runNW_loser loser_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 14
	alignto a_reference
}
$animation a_runW_loser loser_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 13
	alignto a_reference
}
$animation a_runSW_loser loser_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 4
	alignto a_reference
}
$sequence Run_LOSER {
	a_runsw_loser	a_runS_loser		a_runSE_loser
	a_runW_loser	a_runCenter_loser	a_runE_loser
	a_runNW_loser	a_runN_loser		a_runNE_loser
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	activity ACT_MP_RUN_LOSERSTATE 1
			{ event 7001 2 "right" }
	    { event 7001 11 "left" }
}


//================================================================================================
//
// AIRWALKS (getting knocked around by explosions, etc)
//
//================================================================================================

$sequence Airwalk_PRIMARY "primary_floatA.dmx" fps 30 loop {
	addlayer Primary_aimmatrix_swim 
	activity ACT_MP_AIRWALK_PRIMARY 1
}

$sequence Airwalk_SECONDARY "secondary_airwalk.dmx" fps 30 loop {
	addlayer secondary_aimmatrix_idle 
	ikrule lhand release  
	activity ACT_MP_AIRWALK_SECONDARY 1
}

$sequence Airwalk_MELEE "melee_airwalk.dmx" fps 30 loop {
	addlayer melee_aimmatrix_idle 
	activity ACT_MP_AIRWALK_MELEE 1
}


$sequence Airwalk_LOSER "loser_airwalk.dmx" fps 30 loop {
	activity ACT_MP_AIRWALK_LOSERSTATE 1
}

$sequence Pose_001 "pose_001.dmx"

//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// WEAPON-SPECIFIC animations
// This is where the fun begins
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// Weightlists
//-----------------------------------------------------------------------------------

$Weightlist ArmsBlendAkimbo {
	"bip_pelvis" 0.0 
	"bip_hip_R" 0.0 
	"bip_hip_L" 0.0 
	"bip_spine_0" 0.5
	"bip_spine_1" 0.7
	"bip_spine_2" 0.9
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0 
	"bip_lowerArm_L" 1.0 
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0 
	"bip_lowerArm_R" 1.0 
	}

//-----------------------------------------------------------------------------------
// Akimbo Pistols
//-----------------------------------------------------------------------------------
$MPWeaponAims		PISTOL_AKIMBO	$infoNode$

$MPGestureAttack AttackStand_PISTOL_AKIMBO  PISTOL_AKIMBO_fire          ACT_MERC_ATTACK_STAND_PISTOL_AKIMBO
$MPGestureAttack AttackSwim_PISTOL_AKIMBO   PISTOL_AKIMBO_swim_fire     ACT_MERC_ATTACK_SWIM_PISTOL_AKIMBO

$MPGestureAttack AttackStand_PISTOL_AKIMBO_left  PISTOL_AKIMBO_fire_left          ACT_MERC_ATTACK_STAND_PISTOL_AKIMBO
$MPGestureAttack AttackSwim_PISTOL_AKIMBO_left   PISTOL_AKIMBO_swim_fire_left    ACT_MERC_ATTACK_SWIM_PISTOL_AKIMBO

//PISTOL_AKIMBO Crouch Fire
$sequence AttackCrouch_PISTOL_AKIMBO {
	PISTOL_AKIMBO_crouch_fire
	weightlist HipsUpperBody
	subtract AttackCrouch_PISTOL_AKIMBO 0
	delta
	weightlist HipsUpperBody
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MERC_ATTACK_CROUCH_PISTOL_AKIMBO 1
}

//PISTOL_AKIMBO Crouch Fire
$sequence AttackCrouch_PISTOL_AKIMBO_left {
	PISTOL_AKIMBO_crouch_fire_left
	weightlist HipsUpperBody
	subtract AttackCrouch_PISTOL_AKIMBO_left 0
	delta
	weightlist HipsUpperBody
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MERC_ATTACK_CROUCH_PISTOL_AKIMBO 1
}

//PISTOL_AKIMBO Reloads
$sequence layer_reload_standing_arms_PISTOL_AKIMBO "PISTOL_AKIMBO_reload.dmx" weightlist ArmsBlendAkimbo {
	hidden
	ikrule lhand touch "bip_pelvis" usesource range 30 37 37 43
	ikrule rhand touch "bip_pelvis" usesource range 30 37 37 43
	fps 35
}

//PISTOL_AKIMBO Reloads
$sequence layer_reload_airwalk_arms_PISTOL_AKIMBO "PISTOL_AKIMBO_reload_airwalk.dmx" weightlist ArmsBlendAkimbo {
	hidden
	ikrule lhand touch "bip_pelvis" usesource range 30 37 37 43
	ikrule rhand touch "bip_pelvis" usesource range 30 37 37 43
	fps 35
}

$sequence layer_reload_crouch_arms_PISTOL_AKIMBO "PISTOL_AKIMBO_crouch_reload.dmx" weightlist ArmsBlendAkimbo {
	hidden
	ikrule lhand touch "bip_pelvis" usesource range 30 37 37 43
	ikrule rhand touch "bip_pelvis" usesource range 30 37 37 43
	fps 35
}

$MPGestureReload_IK ReloadStand_PISTOL_AKIMBO     PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_STAND_PISTOL_AKIMBO    layer_reload_standing_arms_PISTOL_AKIMBO 0 4 76 86
$MPGestureReload_IK ReloadAirwalk_PISTOL_AKIMBO   PISTOL_AKIMBO_reload_airwalk        ACT_MERC_RELOAD_AIRWALK_PISTOL_AKIMBO   layer_reload_airwalk_arms_PISTOL_AKIMBO 0 4 76 86
$MPGestureReload_IK ReloadCrouch_PISTOL_AKIMBO    PISTOL_AKIMBO_crouch_reload 	      ACT_MERC_RELOAD_CROUCH_PISTOL_AKIMBO   layer_reload_crouch_arms_PISTOL_AKIMBO 0 4 76 86
$MPGestureReload_IK ReloadSwim_PISTOL_AKIMBO      PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_SWIM_PISTOL_AKIMBO     layer_reload_standing_arms_PISTOL_AKIMBO 0 4 76 86
//$MPGestureReload ReloadStand_PISTOL_AKIMBO     PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_STAND_PISTOL_AKIMBO
//$MPGestureReload ReloadAirwalk_PISTOL_AKIMBO   PISTOL_AKIMBO_reload_airwalk        ACT_MERC_RELOAD_AIRWALK_PISTOL_AKIMBO
//$MPGestureReload ReloadCrouch_PISTOL_AKIMBO    PISTOL_AKIMBO_reload 	              ACT_MERC_RELOAD_CROUCH_PISTOL_AKIMBO
//$MPGestureReload ReloadSwim_PISTOL_AKIMBO      PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_SWIM_PISTOL_AKIMBO

$sequence Stand_PISTOL_AKIMBO  PISTOL_AKIMBO_idle loop alignto a_reference addlayer PISTOL_AKIMBO_aimmatrix_idle activity ACT_MERC_STAND_PISTOL_AKIMBO 1
$sequence Crouch_PISTOL_AKIMBO PISTOL_AKIMBO_crouch_idle loop alignto a_reference addlayer PISTOL_AKIMBO_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_PISTOL_AKIMBO 1

$MPAimLayer PISTOL_AKIMBO_aimmatrix_swim        PISTOL_AKIMBO_aimmatrix_idle        $infoNode$
$MPswimWithWeapon PISTOL_AKIMBO 0 0 0 0 0 0 0 0 PISTOL_AKIMBO_SwimN	PISTOL_AKIMBO_SwimCenter	PISTOL_AKIMBO_aimmatrix_swim	ACT_MERC_SWIM_PISTOL_AKIMBO $infonode$

//PISTOL_AKIMBO jump
$sequence a_jumpStart_PISTOL_AKIMBO PISTOL_AKIMBO_jump frames 0 25 addlayer PISTOL_AKIMBO_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_PISTOL_AKIMBO 1 LX LY
$sequence a_jumpfloat_PISTOL_AKIMBO PISTOL_AKIMBO_jump frames 25 44 loop  fps 30 addlayer PISTOL_AKIMBO_aimmatrix_swim alignto a_reference activity ACT_MERC_JUMP_FLOAT_PISTOL_AKIMBO 1 LX LY
$sequence jumpLandPose_PISTOL_AKIMBO PISTOL_AKIMBO_jump frames 25 25 numframes 30 loop
$sequence jumpLand_PISTOL_AKIMBO { 
	PISTOL_AKIMBO_jump_land 
	subtract jumpLand_PISTOL_AKIMBO 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_PISTOL_AKIMBO 1 
}

// PISTOL_AKIMBO run
$animation a_runCenter_PISTOL_AKIMBO  PISTOL_AKIMBO_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_runS_PISTOL_AKIMBO PISTOL_AKIMBO_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSE_PISTOL_AKIMBO PISTOL_AKIMBO_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runE_PISTOL_AKIMBO PISTOL_AKIMBO_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNE_PISTOL_AKIMBO PISTOL_AKIMBO_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runN_PISTOL_AKIMBO PISTOL_AKIMBO_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNW_PISTOL_AKIMBO PISTOL_AKIMBO_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runW_PISTOL_AKIMBO PISTOL_AKIMBO_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSW_PISTOL_AKIMBO PISTOL_AKIMBO_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}

//$MPAimLayer PISTOL_AKIMBO_aimMatrix	    PISTOL_AKIMBO_aimMatrix	$infoNode$

$sequence Run_PISTOL_AKIMBO {
	a_runsw_PISTOL_AKIMBO	a_runS_PISTOL_AKIMBO		a_runSE_PISTOL_AKIMBO
	a_runW_PISTOL_AKIMBO	a_runCenter_PISTOL_AKIMBO	a_runE_PISTOL_AKIMBO
	a_runNW_PISTOL_AKIMBO	a_runN_PISTOL_AKIMBO		a_runNE_PISTOL_AKIMBO
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer PISTOL_AKIMBO_aimmatrix_run
	activity ACT_MERC_RUN_PISTOL_AKIMBO 1
	{ event 7001 7 "right" }
	{ event 7001 16 "left" }
}

//PISTOL_AKIMBO crouch walk
$MPCrouchWalkWithWeapon Crouch_Walk_PISTOL_AKIMBO        0 0 0 0 0 0 0 0 PISTOL_AKIMBO_crouch_walkN        PISTOL_AKIMBO_Crouch_idle       PISTOL_AKIMBO_aimmatrix_Crouch_idle        ACT_MERC_CROUCHWALK_PISTOL_AKIMBO $infoNode$

$sequence Airwalk_PISTOL_AKIMBO "PISTOL_AKIMBO_airwalk.dmx" fps 30 loop {
	addlayer PISTOL_AKIMBO_aimmatrix_swim 
	activity ACT_MERC_AIRWALK_PISTOL_AKIMBO 1
}

// must be at the end of file
$popd