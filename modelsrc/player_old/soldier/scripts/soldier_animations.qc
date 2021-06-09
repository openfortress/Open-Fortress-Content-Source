// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/soldier_user_animations.mdl

$definevariable infoNode "soldierInfo"
$include "soldier_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

//-----------------------------------------------------------------------------------
// soldier-specific weightlists
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
$include soldier_movement.qci



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
	} { event 5004 17 "Taunt.Soldier01ClothesSwipe" } { event 5004 17 "Taunt.Soldier01HeelClick" } { event 5004 47 "Taunt.Soldier01ClothesRustle" } { event 5004 59 "Taunt.Soldier01HelmetJostle" }

$sequence layer_taunt02 "taunt02.dmx" fps 30 hidden
$sequence taunt02 "taunt02.dmx" noanimation {
	numframes 130
	blendlayer layer_taunt02  0 5 124 129
 	event AE_CL_BODYGROUP_SET_VALUE 18 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 126 "rocket 0"
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 129
	} { event 5004 71 "Taunt.Soldier02GrenadeCatch" } { event 5004 85 "Taunt.Soldier02GrenadeCatch" } { event 5004 101 "Taunt.Soldier02GrenadeCatch" } { event 5004 108 "Taunt.Soldier02GrenadeCatch" }  { event 5004 64 "Taunt.Soldier02ShovelCatch" }  { event 5004 92 "Taunt.Soldier02ShovelCatch" } { event 5004 11 "Taunt.Soldier02ClothesRustle" }

$sequence layer_taunt03 "taunt03.dmx" fps 30 hidden
$sequence taunt03 "taunt03.dmx" noanimation {
	numframes 120
	blendlayer layer_taunt03  0 5 114 119
	} { event 5004 27 "Taunt.Soldier03FootStomp" } { event 5004 79 "Taunt.Soldier03HelmetHit" } { event 5004 89 "Taunt.Soldier03HelmetHit" } { event 5004 99 "Taunt.Soldier03HelmetHit" } { event 5004 27 "Taunt.Soldier03ClothesRustle" } { event 5004 60 "Taunt.Soldier03ClothesSwipe" } { event 5004 40 "Taunt.Soldier03HelmetJostle" }

//CHARACTER SELECTION

$sequence selectionMenu_all "selectionMenu_Anim01.dmx" fps 30 event AE_CL_PLAYSOUND 20 "Selection.SoldierLauncherGrab" event AE_CL_PLAYSOUND 24 "Selection.SoldierEquipment" event AE_CL_PLAYSOUND 36 "Selection.SoldierClothesRustle" event AE_CL_PLAYSOUND 47 "Selection.SoldierLauncherGrab" event AE_CL_PLAYSOUND 64 "Selection.SoldierClothesRustle" event AE_CL_PLAYSOUND 73 "Selection.SoldierLauncherGrab" event AE_CL_PLAYSOUND 94 "Selection.SoldierLauncherSetStart" event AE_CL_PLAYSOUND 103 "Selection.SoldierLauncherSetStop" event AE_CL_PLAYSOUND 103 "Selection.SoldierLauncherHitGround" //hidden snap localhierarchy "weapon_bone" "bip_foot_R"

$popd
