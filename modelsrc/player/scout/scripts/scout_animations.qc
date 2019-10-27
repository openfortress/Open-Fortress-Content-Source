// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/scout_user_animations.mdl

$definevariable infoNode "scoutInfo"
$include "scout_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

$pushd "../animations/dmx"

//-----------------------------------------------------------------------------------
// Scout Specific Weightlist
//-----------------------------------------------------------------------------------

$Weightlist UpperBodyBlendNoLArm {
	"bip_pelvis" 0.5
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 1.0
	"bip_spine_1" 1.0
	"bip_spine_2" 1.0
	"bip_spine_3" 1.0
	"bip_collar_L" 0.0
	}
$Weightlist HipsUpperBodyNoRArm {
	"bip_pelvis" 1.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 1.0
	"bip_spine_1" 1.0
	"bip_spine_2" 1.0
	"bip_spine_3" 1.0
	"bip_collar_R" 0.0
	}
$Weightlist ArmsBlendReload {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.0
	"bip_collar_L" 0.5
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 0.5
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	}
$Weightlist LegsOnly {
	"bip_pelvis" 0.0
	"bip_hip_R" 1.0
	"bip_hip_L" 1.0
	}
$Weightlist UpperbodyBlendNoPelvis2 {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_spine_1" 0.4
	"bip_spine_2" 0.5
	"bip_spine_3" 0.6
	"bip_collar_L" 0.0
	"bip_collar_R" 0.0
	"bip_dogtag_0" 0.0
	}
$Weightlist UpperbodyBlendWC {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_spine_1" 0.4
	"bip_spine_2" 0.7
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0
	"bip_collar_R" 1.0
	"bip_dogtag_0" 0.0
	}
$Weightlist ArmLGestureBlend {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_spine_2" 0.1
	"bip_spine_3" 0.25
	"bip_neck" 0.0
	"bip_collar_R" 0.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}
	$Weightlist Stun_ArmsBlend {
	"bip_pelvis" 0.0 
	"bip_hip_R" 0.0 
	"bip_hip_L" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 1.0
	"bip_spine_2" 1.0
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0 
	"bip_upperArm_L" 1.0 
	"bip_lowerArm_L" 1.0 
	"bip_collar_R" 1.0 
	"bip_upperArm_R" 1.0 
	"bip_lowerArm_R" 1.0 
	}
		
$Weightlist armsblendstun {
  "bip_pelvis" 1.0
	}


$Weightlist Scout_Item2SwimReloadArmsBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	}

	
//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "primary_idle.dmx" lx ly
$animation b_reference "loser_runCenter.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly

//-----------------------------------------------------------------------------------
// Primary
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK		PRIMARY	$infoNode$
$MPGestureAttack AttackStand_PRIMARY  PRIMARY_fire ACT_MP_ATTACK_STAND_PRIMARY snap
$MPGestureAttack AttackCrouch_PRIMARY PRIMARY_fire   ACT_MP_ATTACK_CROUCH_PRIMARY

$sequence AttackSwim_PRIMARY {
	PRIMARY_fire
	weightlist UpperBodyBlendNoLArm
	subtract AttackSwim_PRIMARY 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_SWIM_PRIMARY 1
}

//-----------------------------------------------------------------------------------
$sequence layer_reload_standing_arms_primary_start "primary_reload.dmx" {
	frames 0 20
	weightlist ArmsBlend
	ikrule lhand touch "weapon_bone" usesource
	hidden
}
$sequence layer_reload_standing_arms_primary_loop "primary_reload.dmx" {
	frames 19 34
	numframes 20 //padding to avoid pop to nothing
	loop
	weightlist ArmsBlend
	ikrule lhand touch "weapon_bone" usesource
	hidden
}
$sequence layer_reload_standing_arms_primary_end "primary_reload.dmx" {
	frames 49 65
	weightlist ArmsBlend
	ikrule lhand touch "weapon_bone" usesource
	hidden
}
$animation a_reload_startpose "primary_reload.dmx" frames 0 0

//------------------------------------
//primary reloads
//------------------------------------
$sequence PRIMARY_reload_start {
	"primary_reload.dmx"
	frames 0 20
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_start 0 4 20 20
 	activity ACT_MP_RELOAD_STAND_PRIMARY 1
}

$sequence PRIMARY_reload_loop {
	"primary_reload.dmx"
	frames 19 34
	numframes 20 //padding to avoid pop to nothing
	loop
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_primary_loop
 	activity ACT_MP_RELOAD_STAND_PRIMARY_LOOP 1
}
$sequence PRIMARY_reload_end {
	"primary_reload.dmx"
	frames 49 65
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_end 0 0 6 10
 	activity ACT_MP_RELOAD_STAND_PRIMARY_END 1
}

//------------------------------------
//primary crouch reloads
//------------------------------------
$sequence PRIMARY_crouch_reload_start {
	"primary_reload.dmx"
	frames 0 20
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_start 0 4 20 20
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY 1
}

$sequence PRIMARY_crouch_reload_loop {
	"primary_reload.dmx"
	frames 19 34
	loop
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_primary_loop
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_LOOP 1
}
$sequence PRIMARY_crouch_reload_end {
	"primary_reload.dmx"
	frames 49 65
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_end 0 0 6 10
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_END 1
}

//------------------------------------
//primary swim reloads
//------------------------------------
$sequence PRIMARY_swim_reload_start {
	"primary_reload.dmx"
	frames 0 20
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_start 0 4 20 20
 	activity ACT_MP_RELOAD_SWIM_PRIMARY 1
}

$sequence PRIMARY_swim_reload_loop {
	"primary_reload.dmx"
	frames 19 34
	loop
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_primary_loop
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_LOOP 1
}
$sequence PRIMARY_swim_reload_end {
	"primary_reload.dmx"
	frames 49 65
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_end 0 0 6 10
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_END 1
}

//------------------------------------
//primary airwalk reloads
//------------------------------------
$sequence PRIMARY_airwalk_reload_start {
	"primary_reload.dmx"
	frames 0 20
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_start 0 4 20 20
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY 1
}

$sequence PRIMARY_airwalk_reload_loop {
	"primary_reload.dmx"
	frames 19 34
	loop
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_primary_loop
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_LOOP 1
}
$sequence PRIMARY_airwalk_reload_end {
	"primary_reload.dmx"
	frames 49 65
	subtract a_reload_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_primary_end 0 0 6 10
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_END 1
}

//place sapper gesture
$sequence layer_placeSapper_ArmL "primary_placeSapper.dmx" {
	ikrule lhand release range 0 4 20 24
	weightlist LeftArmBlend
	hidden
}
$sequence PRIMARY_placeSapper "primary_placeSapper.dmx" {
	subtract PRIMARY_placeSapper 0
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	addlayer layer_placeSapper_ArmL
	activity ACT_MP_ATTACK_STAND_GRENADE 1
}

//-----------------------------------------------------------------------------------
// Secondary
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK		SECONDARY	$infoNode$
$MPGestureAttack AttackStand_SECONDARY  SECONDARY_fire          ACT_MP_ATTACK_STAND_SECONDARY
$MPGestureAttack AttackCrouch_SECONDARY SECONDARY_crouch_fire   ACT_MP_ATTACK_CROUCH_SECONDARY
$MPGestureAttackIKRelease AttackSwim_SECONDARY   SECONDARY_swim_fire     ACT_MP_ATTACK_SWIM_SECONDARY

$sequence layer_reload_standing_arms_secondary "secondary_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 3 9 13 19
	ikrule lhand touch "bip_hand_R" usesource range 19 22 23 28
	hidden
}

$MPGestureReload_IK ReloadStand_SECONDARY  SECONDARY_reload        ACT_MP_RELOAD_STAND_SECONDARY layer_reload_standing_arms_secondary 0 11 24 30
{ 
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 23 "magazine 0"
}
$MPGestureReload_IK ReloadCrouch_SECONDARY SECONDARY_reload 		ACT_MP_RELOAD_CROUCH_SECONDARY layer_reload_standing_arms_secondary 0 11 24 30
{ 
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 23 "magazine 0"
}
$MPGestureReload_IK ReloadSwim_SECONDARY   SECONDARY_reload   ACT_MP_RELOAD_SWIM_SECONDARY layer_reload_standing_arms_secondary 0 11 24 30
{ 
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 23 "magazine 0"
}
$MPGestureReload_IK ReloadAirwalk_SECONDARY   SECONDARY_reload   ACT_MP_RELOAD_AIRWALK_SECONDARY layer_reload_standing_arms_secondary 0 11 24 30
{ 
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 23 "magazine 0"
}

$sequence layer_SECONDARY_WepGrip "secondary_idle.dmx" frames 0 0 numframes 15 loop weightlist RWepGrip hidden

//-----------------------------------------------------------------------------------
// ITEM2
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK		ITEM2	$infoNode$
$ScoutWeaponFiringItem2				ITEM2
$sequence layer_ITEM2_WepGrip "ITEM2_idle.dmx" frames 0 0 numframes 15 loop weightlist RWepGrip hidden


//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPWeaponAims			MELEE	$infoNode$

$sequence layer_AttackStandMelee_arms "melee_swing.dmx" weightlist ArmsBlend {
	fps 60
	hidden
}

$sequence layer_melee_swing {
	melee_swing
	fps 60
	subtract layer_melee_swing 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackStandMelee_arms 0 0 32 33
}


$sequence layer_AttackStandMelee_runS_arms "melee_swing_runS.dmx" weightlist ArmsBlend {
	fps 60
	hidden
}
$sequence layer_melee_swing_runS {
	melee_swing_runS
	fps 60
	subtract layer_melee_swing_runS 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackStandMelee_runS_arms  0 0 32 33
}

$sequence MELEE_swing {
	melee_swing
	noanimation
	numframes 34
	blendlayer layer_melee_swing -0.8 -0.2 1.0 2.0  spline poseparameter move_x
  blendlayer layer_melee_swing_runs -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	fps 60
	activity ACT_MP_ATTACK_STAND_MELEE 1
}

$sequence MELEE_crouch_swing {
	melee_swing
	noanimation
	numframes 34
	blendlayer layer_melee_swing 0 1 30 34
	fps 60
	activity ACT_MP_ATTACK_CROUCH_MELEE 1
}

//swim melee attack
$sequence AttackSwim_MELEE {
	melee_swing.dmx
	fps 60
	weightlist HipsUpperBody
	subtract AttackSwim_MELEE 0
	delta
	ikrule lhand release
	ikrule rhand release
 	activity ACT_MP_ATTACK_SWIM_MELEE 1
}


$sequence layer_MELEE_WepGrip "MELEE_idle.dmx" frames 0 0 numframes 15 loop weightlist RWepGrip hidden

//Hit Flinch
$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}


//-----------------------------------------------------------------------------------
// Stun_Swing
//-----------------------------------------------------------------------------------
$MPWeaponAims			STUN	$infoNode$

$sequence layer_stun_swing_arms "stun_swing.dmx" weightlist Stun_ArmsBlend {
	fps 30
	hidden
}

$sequence layer_stun_swing {
	stun_swing
	fps 30
	subtract layer_stun_swing 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_stun_swing_arms 0 4 19 24
}


$sequence layer_stun_swing_arm_s "stun_swing_S.dmx" weightlist Stun_ArmsBlend {
	fps 30
	hidden
}
$sequence layer_stun_swing_S {
	stun_swing_S
	fps 30
	subtract layer_stun_swing_S 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_stun_swing_arm_s  0 4 19 24
}

$sequence stun_swing {
	stun_swing
	noanimation
	numframes 24
	blendlayer layer_stun_swing -0.8 -0.2 1.0 2.0  spline poseparameter move_x
  blendlayer layer_stun_swing_S -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	fps 30
	activity ACT_MP_ATTACK_STAND_MELEE_SECONDARY 1
}

$sequence stun_swing_crouch {
	stun_swing
	noanimation
	numframes 24
	blendlayer layer_stun_swing_arms 0 4 19 24
	fps 30
	activity ACT_MP_ATTACK_CROUCH_MELEE_SECONDARY 11
}



$sequence layer_STUN_WepGrip "MELEE_idle.dmx" frames 0 0 numframes 15 loop weightlist RWepGrip hidden


//-----------------------------------------------------------------------------------
// ITEM1
//-----------------------------------------------------------------------------------
$MPWeaponAims			ITEM1	$infoNode$

$sequence layer_ITEM1_WepGrip "ITEM1_idle.dmx" frames 0 0 numframes 15 loop weightlist RWepGrip hidden

//-----------------------------------------------------------------------------------
// Hand Gesture anims for Voice commands
//-----------------------------------------------------------------------------------

//primary
$sequence layer_gesture_primary_go_armL "gesture_primary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 8 16 16 30 usesource
	hidden
}
$sequence layer_gesture_primary_go_runN_armL "gesture_primary_go_runN.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 8 16 16 30 usesource
	hidden
}
$sequence gesture_primary_go "gesture_primary_go.dmx" {
	subtract gesture_primary_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 4 26 30
	blendlayer layer_gesture_primary_go_armL -2.0 -1.0 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_primary_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY 1
}

$sequence layer_gesture_primary_help_armL "gesture_primary_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 8 12 24 30 usesource
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
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
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
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence gesture_primary_positive "gesture_primary_positive.dmx" {
	subtract gesture_primary_positive 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_primary_positive_armL 0 4 36 40
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_PRIMARY 1
}


//--------------------------------------------------------------------------------------------------------------------
//secondary

$sequence layer_gesture_secondary_go_armL "gesture_secondary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	hidden
}
$sequence layer_gesture_secondary_go_runN_armL "gesture_secondary_go_runN.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 8 16 16 30 usesource
	hidden
}
$sequence gesture_secondary_go "gesture_secondary_go.dmx" {
	subtract gesture_secondary_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 4 26 30
	blendlayer layer_gesture_secondary_go_armL -2.0 -1.0 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_secondary_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY 1
}

$sequence layer_gesture_secondary_help_armL "gesture_secondary_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 2 12 24 30 usesource
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
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
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
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence layer_gesture_secondary_positive "gesture_secondary_positive.dmx" {
	subtract layer_gesture_secondary_positive 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_secondary_positive_armL 0 4 36 40
	hidden
}
$sequence layer_gesture_secondary_positive_runN_armL "gesture_secondary_positive_runN.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence layer_gesture_secondary_positive_runN "gesture_secondary_positive_runN.dmx" {
	subtract layer_gesture_secondary_positive_runN 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_secondary_positive_runN_armL 0 6 34 40 spline
	hidden
}
$sequence gesture_secondary_positive "gesture_secondary_positive.dmx" {
	noanimation
	numframes 41
	blendlayer layer_gesture_secondary_positive_runN -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	blendlayer layer_gesture_secondary_positive -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_secondary_positive_runN 0.2 0.8 1.0 2.0 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_SECONDARY 1
}

//------------------------------------------------------------------------------------------------------
//melee
$sequence layer_gesture_melee_go_armL "gesture_melee_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 16 30 usesource
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
	ikrule lhand touch "bip_head" range 2 12 24 30 usesource
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
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
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

$sequence layer_gesture_melee_positive_armL "gesture_melee_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence gesture_melee_positive "gesture_melee_positive.dmx" {
	subtract gesture_melee_positive 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_melee_positive_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_MELEE 1
}

//------------------------------------------------------------------------------------------------------
//ITEM1
$sequence layer_gesture_ITEM1_go_armL "gesture_ITEM1_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 16 30 usesource
	hidden
}
$sequence gesture_ITEM1_go "gesture_ITEM1_go.dmx" {
	subtract gesture_ITEM1_go 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_ITEM1_go_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_ITEM1 1
}

$sequence layer_gesture_ITEM1_help_armL "gesture_ITEM1_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 2 12 24 30 usesource
	hidden
}
$sequence gesture_ITEM1_help "gesture_ITEM1_help.dmx" {
	subtract gesture_ITEM1_help 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_ITEM1_help_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_ITEM1 1
}

$sequence layer_gesture_ITEM1_cheer_armL "gesture_ITEM1_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence gesture_ITEM1_cheer "gesture_ITEM1_cheer.dmx" {
	subtract gesture_ITEM1_cheer 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_ITEM1_cheer_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_ITEM1 1
}

$sequence layer_gesture_ITEM1_positive_armL "gesture_ITEM1_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence gesture_ITEM1_positive "gesture_ITEM1_positive.dmx" {
	subtract gesture_ITEM1_positive 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_ITEM1_positive_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_ITEM1 1
}
//-----------------------------------------------------------------------
//ITEM2
$sequence layer_gesture_ITEM2_go_armL "gesture_ITEM2_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 8 16 16 30 usesource
	hidden
}
$sequence layer_gesture_ITEM2_go_runN_armL "gesture_ITEM2_go_runN.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 8 16 16 30 usesource
	hidden
}
$sequence gesture_ITEM2_go "gesture_ITEM2_go.dmx" {
	subtract gesture_ITEM2_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 4 26 30
	blendlayer layer_gesture_ITEM2_go_armL -2.0 -1.0 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_ITEM2_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_ITEM2 1
}

$sequence layer_gesture_ITEM2_help_armL "gesture_ITEM2_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 26 30
	ikrule lhand touch "bip_head" range 8 12 24 30 usesource
	hidden
}
$sequence gesture_ITEM2_help "gesture_ITEM2_help.dmx" {
	subtract gesture_ITEM2_help 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_ITEM2_help_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_ITEM2 1
}

$sequence layer_gesture_ITEM2_cheer_armL "gesture_ITEM2_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence gesture_ITEM2_cheer "gesture_ITEM2_cheer.dmx" {
	subtract gesture_ITEM2_cheer 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_ITEM2_cheer_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_ITEM2 1
}

$sequence layer_gesture_ITEM2_positive_armL "gesture_ITEM2_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand release range 0 4 36 40
	ikrule lhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence gesture_ITEM2_positive "gesture_ITEM2_positive.dmx" {
	subtract gesture_ITEM2_positive 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_ITEM2_positive_armL 0 4 36 40
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_ITEM2 1
}


//-----------------------------------------------------------------------------------
// Taunt anims
//-----------------------------------------------------------------------------------

$sequence taunt01 "taunt01.dmx" fps 30 localhierarchy "weapon_bone" "bip_hand_L" range 0 5 80 90 {
	blendlayer MELEE_aimmatrix_idle 0 0 0 5
	blendlayer MELEE_aimmatrix_idle 85 90 90 90 spline
	event AE_CL_PLAYSOUND 12 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 14 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 24 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 26 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 38 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 40 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 50 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 53 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 65 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 67 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 76 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 78 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 89 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 13 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 26 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 42 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 55 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 68 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 79 "Taunt.Scout01HandSmack"

}


$sequence taunt01_Alt "taunt01_Alt.dmx" fps 30 localhierarchy "weapon_bone" "bip_hand_L" range 0 5 80 90 {
	blendlayer MELEE_aimmatrix_idle 0 0 0 5
	blendlayer MELEE_aimmatrix_idle 85 90 90 90 spline
	event AE_CL_PLAYSOUND 12 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 14 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 24 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 26 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 38 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 40 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 50 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 53 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 65 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 67 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 76 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 78 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 89 "Taunt.Scout01Run"
	event AE_CL_PLAYSOUND 13 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 26 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 42 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 55 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 68 "Taunt.Scout01HandSmack"
	event AE_CL_PLAYSOUND 79 "Taunt.Scout01HandSmack"

}


$sequence taunt02 "taunt02_checkPulse.dmx" fps 30 {
	//blend the aimlayer.  Have it start 100% and blend out, then blend back in to 100% near the end
	blendlayer SECONDARY_aimmatrix_idle 0 0 0 5
	blendlayer SECONDARY_aimmatrix_idle 114 122 131 131 spline
	event AE_CL_PLAYSOUND 22 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 29 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 39 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 48 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 56 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 65 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 73 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 82 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 91 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 99 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 107 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 117 "Taunt.Scout02Run"
	event AE_WPN_HIDE 10
	event AE_WPN_UNHIDE 116
}

$sequence taunt03 "taunt03_inYourFace.dmx" fps 30 {
	//blend the aimlayer.  Have it start 100% and blend out, then blend back in to 100% near the end
	blendlayer MELEE_aimmatrix_idle 0 0 0 5
	blendlayer MELEE_aimmatrix_idle 105 117 117 117 spline
	event AE_CL_PLAYSOUND 28 "Taunt.Scout03Run"
	event AE_CL_PLAYSOUND 35 "Taunt.Scout03Run"
	event AE_CL_PLAYSOUND 55 "Taunt.Scout03Run"
	event AE_CL_PLAYSOUND 61 "Taunt.Scout03Run"
	event AE_CL_PLAYSOUND 94 "Taunt.Scout03Run"
	event AE_CL_PLAYSOUND 107 "Taunt.Scout03Run"
}
$sequence layer_taunt04 "taunt04_OneSec.dmx" weightlist armsblendstun fps 30 hidden
$sequence taunt04 "taunt04_OneSec.dmx" noanimation {
	numframes 30
	blendlayer layer_taunt04 0 2 27 30
	event AE_CL_PLAYSOUND 6 "Scout.DodgeCanDrinkFast"
}
$sequence taunt05 "taunt05_DeathTaunt.dmx" fps 30 {
	//blend the aimlayer.  Have it start 100% and blend out, then blend back in to 100% near the end
	blendlayer MELEE_aimmatrix_idle 0 0 0 5
	blendlayer MELEE_aimmatrix_idle 137 145 145 145 spline
	event AE_CL_PLAYSOUND 44 "Taunt.Demo02EquipmentJingle3"
	event AE_CL_PLAYSOUND 86 "Taunt.Scout02Run"
	event AE_CL_PLAYSOUND 113 "Taunt.Scout03Run"
	event AE_CL_PLAYSOUND 117 "Weapon_Bat.Miss"
	event AE_CL_PLAYSOUND 122 "Taunt.Demo02EquipmentJingle3"	

}

$include scout_movement.qci


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

$sequence selectionMenu_Anim01 "selectionMenu_Anim01.dmx" frames 1 90 event AE_CL_PLAYSOUND 42 "Selection.ScoutShotgunTwirl" event AE_CL_PLAYSOUND 59 "Selection.ScoutShotgunShoulder"

$sequence selectionMenu_Idle "selectionMenu_Anim01.dmx"  frames 90 160 loop

$sequence selectionMenu_all "selectionMenu_Anim01.dmx" fps 30

$popd

