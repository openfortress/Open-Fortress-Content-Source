// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/spy_user_animations.mdl

$definevariable infoNode "spyInfo"
$include "spy_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

//----------------------------------------------------------------------------------
//	Local Weightlists
//----------------------------------------------------------------------------------

$Weightlist Spy_SecondarySwimReloadArmsBlend {
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

$Weightlist SpyGrenadeHipsTorso {
	"bip_foot_R" 1.0
	"bip_toe_R" 1.0
	"bip_pelvis" 1.0
	"bip_hip_R" 1.0
	"bip_knee_R" 1.0
	"bip_hip_L" 0.0
	"bip_collar_L" 0.0
	"bip_collar_R" 0.0

	}

$Weightlist SpymeleeRightArmBlend {
	"bip_pelvis" 1.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.7
	"bip_spine_1" 0.8
	"bip_spine_2" 0.9
	"bip_spine_3" 1.0
	"bip_collar_R" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_head" 0.5
	}

$Weightlist SpyRUN_Melee_ArmsBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_1" 1.0
	"bip_spine_2" 1.0
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
  "bip_head" 0.0
  "bip_neck" 0.0
	}

$weightlist SpyRUN_Melee_HipsTorso {
	"bip_pelvis" 0.5
	"bip_hip_R" 0.25
	"bip_hip_L" 0.25
	"bip_collar_L" 0.0
	"bip_collar_R" 0.0
	"bip_spine_0" 0.5
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

$Weightlist ArmLGestureBlendRunN {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_spine_2" 0.0
	"bip_spine_3" 0.0
	"bip_neck" 0.0
	"bip_collar_R" 0.5
	"bip_upperArm_R" 0.5
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}


$Weightlist SpyMeleeSwim {

	"bip_spine_1" 0.15
	"bip_spine_2" 0.25
	"bip_spine_3" 0.35
	"bip_collar_R" 1.0
	"bip_collar_L" 0.25
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	"bip_upperArm_L" 0.0
	"bip_lowerArm_L" 0.0
	"bip_head" 0.0
	}

	
	
$Weightlist armsblendstun {
  "bip_pelvis" 1.0
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


$pushd "../animations/dmx"


$sequence test_swingBlend "melee_swing" weightlist UpperbodyBlendNoPelvis worldspace



//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "primary_idle.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly


//-----------------------------------------------------------------------------------
// Primary
//-----------------------------------------------------------------------------------
$Shotgun_WeaponAims_leftHandIK		PRIMARY	$infoNode$
$MPGestureAttack AttackStand_PRIMARY  PRIMARY_fire          ACT_MP_ATTACK_STAND_PRIMARY
$MPGestureAttack AttackCrouch_PRIMARY PRIMARYPRIMARY_crouch_fire   ACT_MP_ATTACK_CROUCH_PRIMARY

$sequence AttackSwim_PRIMARY {
	PRIMARY_swim_fire
	subtract AttackSwim_PRIMARY 0
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule lhand touch "weapon_bone_1" usesource
 	activity ACT_MP_ATTACK_SWIM_PRIMARY 1
}

$MPGestureReload ReloadSwim_PRIMARY   PRIMARY_swim_reload   ACT_MP_RELOAD_SWIM_PRIMARY

$animation a_reload_PRIMARY_startpose PRIMARY_reload frames 0 0
$animation a_reload_crouch_PRIMARY_startpose PRIMARYPRIMARY_crouch_reload frames 0 0

$sequence layer_reload_standing_PRIMARY_arms "PRIMARY_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$sequence ReloadStand_PRIMARY {
	PRIMARY_reload
	frames 0 20
	numframes 21
	fps 30
	subtract ReloadStand_PRIMARY 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_PRIMARY_arms 0 4 21 21
 	activity ACT_MP_RELOAD_STAND_PRIMARY 1
}

$sequence layer_reload_standing_PRIMARY_arms_loop "PRIMARY_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_PRIMARY_loop {
	PRIMARY_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_PRIMARY_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_PRIMARY_arms_loop
 	activity ACT_MP_RELOAD_STAND_PRIMARY_LOOP 1
}

$sequence layer_reload_standing_PRIMARY_arms_end "PRIMARY_reload.dmx" weightlist ArmsBlend {
	frames 40 55
	numframes 15
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_PRIMARY_end {
	PRIMARY_reload
	frames 40 55
	numframes 15
	fps 30
	subtract a_reload_PRIMARY_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_PRIMARY_arms_end 0 0 8 15 spline
 	activity ACT_MP_RELOAD_STAND_PRIMARY_END 1
}


//crouch reload
$sequence layer_reload_crouch_PRIMARY_arms "PRIMARYPRIMARY_crouch_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$sequence ReloadCrouch_PRIMARY {
	PRIMARYPRIMARY_crouch_reload
	frames 0 20
	numframes 20
	fps 30
	subtract a_reload_crouch_PRIMARY_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_PRIMARY_arms 0 4 20 20
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY 1
}

$sequence layer_reload_crouch_PRIMARY_arms_loop "PRIMARYPRIMARY_crouch_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_PRIMARY_loop {
	PRIMARYPRIMARY_crouch_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_crouch_PRIMARY_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_crouch_PRIMARY_arms_loop
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_LOOP 1
}

$sequence layer_reload_crouch_PRIMARY_arms_end "PRIMARYPRIMARY_crouch_reload.dmx" weightlist ArmsBlend {
	frames 40 55
	numframes 15
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_PRIMARY_end {
	PRIMARYPRIMARY_crouch_reload
	frames 40 55
	numframes 15
	fps 30
	subtract a_reload_crouch_PRIMARY_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_PRIMARY_arms_end 0 0 8 15
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_END 1
}


//airwalk reloads
$sequence a_PRIMARY_reload_airwalk 	PRIMARY_reload
$sequence layer_reload_arms_PRIMARY "PRIMARY_reload.dmx" frames 0 20 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_airwalk {
	"PRIMARY_reload.dmx"
	frames 0 20
	subtract a_PRIMARY_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY 0 10 21 21
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY 1
}

$sequence layer_reload_arms_PRIMARY_loop "PRIMARY_reload.dmx" frames 20 40 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_airwalk_loop {
	"PRIMARY_reload.dmx"
	 frames 20 40
	 subtract a_PRIMARY_reload_airwalk 0
	 delta
	 ikrule lhand release
	 ikrule rhand release
	 iklock rfoot 1 0 iklock lfoot 1 0
 	 blendlayer layer_reload_arms_PRIMARY_loop -2 -2 21 21
 	 activity ACT_MP_RELOAD_AIRWALK_PRIMARY_LOOP 1
}


$sequence layer_reload_arms_PRIMARY_end "PRIMARY_reload.dmx" frames 40 55 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_airwalk_end {
	"PRIMARY_reload.dmx"
	frames 40 55
	subtract a_PRIMARY_reload_airwalk 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_end -2 -2 1 7
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_END 1
}

//Swim reloads
$sequence a_PRIMARY_reload_swim 	PRIMARY_reload
$sequence layer_reload_arms_PRIMARY_swim "PRIMARY_reload.dmx" frames 0 20 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_swim {
	"PRIMARY_reload.dmx"
	frames 0 20
	subtract a_PRIMARY_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_swim 0 10 21 21
 	activity ACT_MP_RELOAD_SWIM_PRIMARY 1
}

$sequence layer_reload_arms_PRIMARY_loop_swim "PRIMARY_reload.dmx" frames 20 40 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_swim_loop {
	"PRIMARY_reload.dmx"
	frames 20 40
	subtract a_PRIMARY_reload_swim 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_loop_swim -2 -2 21 21
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_LOOP 1
}


$sequence layer_reload_arms_PRIMARY_end_swim "PRIMARY_reload.dmx" frames 40 55 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_swim_end {
	"PRIMARY_reload.dmx"
	frames 40 55
	subtract a_PRIMARY_reload_swim 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_end_swim -2 -2 1 7
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_END 1
}
//-----------------------------------------------------------------------------------
// Secondary
//-----------------------------------------------------------------------------------
$MPWeaponAims		SECONDARY	$infoNode$

$MPGestureAttack AttackStand_SECONDARY  SECONDARY_fire          ACT_MP_ATTACK_STAND_SECONDARY
$MPGestureAttack AttackCrouch_SECONDARY SECONDARY_crouch_fire   ACT_MP_ATTACK_CROUCH_SECONDARY
$MPGestureAttack AttackSwim_SECONDARY   SECONDARY_swim_fire     ACT_MP_ATTACK_SWIM_SECONDARY


$sequence layer_reload_standing_arms_SECONDARY "SECONDARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 6 14 35 40
	hidden

}
$sequence layer_reload_crouching_arms_SECONDARY "SECONDARY_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 35 40
	hidden
}

$sequence layer_reload_swimming_arms_SECONDARY "SECONDARY_swim_reload.dmx" weightlist Spy_SecondarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 6 14 35 40
	hidden
}

$sequence layer_reload_airwalk_arms_SECONDARY "SECONDARY_swim_reload.dmx" weightlist Spy_SecondarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 6 14 35 40
	hidden
}

$MPGestureReload_IK ReloadStand_SECONDARY     SECONDARY_reload        				ACT_MP_RELOAD_STAND_SECONDARY    layer_reload_standing_arms_SECONDARY 0 4 35 40
$MPGestureReload_IK ReloadCrouch_SECONDARY    SECONDARY_crouch_reload 				ACT_MP_RELOAD_CROUCH_SECONDARY   layer_reload_crouching_arms_SECONDARY 0 4 35 40
$MPGestureReload_IK ReloadSwim_SECONDARY      SECONDARY_swim_reload           ACT_MP_RELOAD_SWIM_SECONDARY     layer_reload_swimming_arms_SECONDARY 0 10 30 40
$MPGestureReload_IK ReloadAirwalk_SECONDARY   SECONDARY_reload        ACT_MP_RELOAD_AIRWALK_SECONDARY  layer_reload_airwalk_arms_SECONDARY 0 10 30 40


//Hit flinch
$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

//place sapper gesture
$sequence layer_placeSapper_ArmL "secondary_placeSapper.dmx" {
	ikrule lhand release range 0 4 20 24
	weightlist LeftArmBlend
	hidden
}
$sequence SECONDARY_placeSapper "secondary_placeSapper.dmx" {
	subtract SECONDARY_placeSapper 0
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	addlayer layer_placeSapper_ArmL
	activity ACT_MP_ATTACK_STAND_GRENADE 1
}

//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPWeaponAims		MELEE	$infoNode$
$SPYMelee

//-----------------------------------------------------------------------------------
// PDA
//-----------------------------------------------------------------------------------
$MPWeaponAims		PDA	$infoNode$
$MPPDA

//-----------------------------------------------------------------------------------
// SAPPER
//-----------------------------------------------------------------------------------
$MPWeaponAims_lefthandIK	SAPPER	$infoNode$

//place sapper gesture
$sequence layer_a_placeSapper_ArmL "sapper_placeSapper.dmx" {
	ikrule lhand release range 0 4 20 24
	weightlist LeftArmBlend
	hidden
}
$sequence SAPPER_placeSapper "sapper_placeSapper.dmx" {
	subtract SAPPER_placeSapper 0
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	addlayer layer_a_placeSapper_ArmL
	activity ACT_MP_ATTACK_STAND_GRENADE_BUILDING 1
}


$include spy_movement.qci



//-----------------------------------------------------------------------------------
//HAND GESTURES
//If you use the macros TFLeftHandGesture, or TFRightHandGesture you need to make a weightlist called ArmLGestureBlend, or ArmRGestureBlend.
//i didnt add this to the global weightlist.qci because ppl like to tweak their values per char.
//-----------------------------------------------------------------------------------

//secondary gesture animations

$sequence layer_gesture_secondary_go_armL "gesture_secondary_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence layer_gesture_secondary_go_runN_armL "gesture_secondary_go_runN.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence gesture_secondary_go "gesture_secondary_go.dmx" {
	subtract gesture_secondary_go 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_secondary_go_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_secondary_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_secondary_go_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY 1
}

$TFLeftHandGesture gesture_secondary_cheer "gesture_secondary_cheer.dmx" 0 3 32 35 ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY
$TFLeftHandGestureIK gesture_secondary_help "gesture_secondary_help.dmx" 0 3 40 42 ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY "bip_head" 0 5 40 42
$TFLeftHandGesture gesture_secondary_positive "gesture_secondary_positive.dmx" 0 3 40 42 ACT_MP_GESTURE_VC_THUMBSUP_SECONDARY

$sequence layer_gesture_melee_go_armL "gesture_melee_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence layer_gesture_melee_go_runN_armL "gesture_melee_go.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence gesture_melee_go "gesture_melee_go.dmx" {
	subtract gesture_melee_go 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_melee_go_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_melee_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_melee_go_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_melee 1
}

//cheer
$sequence layer_gesture_melee_cheer_armL "gesture_melee_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 0 16 32 35 usesource
	hidden
}
$sequence layer_gesture_melee_cheer_runN_armL "gesture_melee_cheer.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 0 16 32 35 usesource
	hidden
}
$sequence gesture_melee_cheer "gesture_melee_cheer.dmx" {
	subtract gesture_melee_cheer 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_melee_cheer_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_melee_cheer_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_melee_cheer_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_melee 1
}

//help
$sequence layer_gesture_melee_help_armL "gesture_melee_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence layer_gesture_melee_help_runN_armL "gesture_melee_help.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence gesture_melee_help "gesture_melee_help.dmx" {
	subtract gesture_melee_help 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_melee_help_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_melee_help_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_melee_help_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_melee 1
}

//positive
$sequence layer_gesture_melee_positive_armL "gesture_melee_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence layer_gesture_melee_positive_runN_armL "gesture_melee_positive.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence gesture_melee_positive "gesture_melee_positive.dmx" {
	subtract gesture_melee_positive 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_melee_positive_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_melee_positive_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_melee_positive_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_melee 1
}


$sequence layer_gesture_PDA_go_armL "gesture_PDA_go.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 0 16 32 35 usesource
	hidden
}
$sequence layer_gesture_PDA_go_runN_armL "gesture_PDA_go.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 0 16 32 35 usesource
	hidden
}
$sequence gesture_PDA_go "gesture_PDA_go.dmx" {
	subtract gesture_PDA_go 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_PDA_go_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_PDA_go_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_PDA_go_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_PDA 1
}

//cheer
$sequence layer_gesture_PDA_cheer_armL "gesture_PDA_cheer.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 0 16 32 35 usesource
	hidden
}
$sequence layer_gesture_PDA_cheer_runN_armL "gesture_PDA_cheer.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 0 16 32 35 usesource
	hidden
}
$sequence gesture_PDA_cheer "gesture_PDA_cheer.dmx" {
	subtract gesture_PDA_cheer 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_PDA_cheer_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_PDA_cheer_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_PDA_cheer_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_PDA 1
}

//help
$sequence layer_gesture_PDA_help_armL "gesture_PDA_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence layer_gesture_PDA_help_runN_armL "gesture_PDA_help.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence gesture_PDA_help "gesture_PDA_help.dmx" {
	subtract gesture_PDA_help 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_PDA_help_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_PDA_help_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_PDA_help_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_PDA 1
}

//positive
$sequence layer_gesture_PDA_positive_armL "gesture_PDA_positive.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence layer_gesture_PDA_positive_runN_armL "gesture_PDA_positive.dmx" {
	weightlist ArmLGestureBlendRunN
	ikrule lhand touch "bip_head" range 8 16 32 42 usesource
	hidden
}
$sequence gesture_PDA_positive "gesture_PDA_positive.dmx" {
	subtract gesture_PDA_positive 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_PDA_positive_armL -0.8 -0.2 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_PDA_positive_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
  blendlayer layer_gesture_PDA_positive_runN_armL -2.0 -1.0 -0.8 -0.2 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_PDA 1
}
//Taunts
$sequence secondary_taunt "secondary_taunt.dmx" fps 30 hidden alignto a_reference
$sequence taunt01 "secondary_taunt.dmx" noanimation {
	numframes 130
	blendlayer secondary_taunt 0 5 124 129
} { event 5004 38 "Taunt.Spy01ClothesSwipe" } { event 5004 55 "Taunt.Spy01ClothesSwipe" } { event 5004 91 "Taunt.Spy01TieFix" }

$sequence layer_taunt03 "taunt03.dmx" fps 30 hidden
$sequence taunt03 "taunt03.dmx" noanimation {
	numframes 150
	blendlayer layer_taunt03 0 5 145 149
} { event 5004 17 "Taunt.Spy03KnifeCatch" } { event 5004 18 "Taunt.Spy03FootStomp" } { event 5004 29 "Taunt.Spy03FootStomp" }  { event 5004 48 "Taunt.Spy03FootStomp" }  { event 5004 59 "Taunt.Spy03FootStomp" }  { event 5004 62 "Taunt.Spy03FootStomp" }  { event 5004 69 "Taunt.Spy03FootStomp" }  { event 5004 87 "Taunt.Spy03FootStomp" }  { event 5004 106 "Taunt.Spy03FootStomp" }  { event 5004 118 "Taunt.Spy03FootStomp" }  { event 5004 120 "Taunt.Spy03FootStomp" }  { event 5004 143 "Taunt.Spy03FootStomp" }

$sequence layer_taunt04 "taunt04.dmx" fps 30 hidden
$sequence taunt04 "taunt04.dmx" noanimation event 7000 70 "cig_eject" {
	numframes 136
	blendlayer layer_taunt04 0 5 128 135
} { event 5004 69 "Taunt.Spy04CigFlick" }

$sequence layer_taunt05 "taunt05.dmx" fps 30 hidden
$sequence taunt05 "taunt05.dmx" noanimation {
	numframes 75
	blendlayer layer_taunt05 0 3 72 75
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


//SelectionMenu Animation

$sequence SelectionMenu_StartPose "SelectionMenu_Anim01.dmx" frames 1 1

$sequence SelectionMenu_Anim01 "SelectionMenu_Anim01.dmx" event AE_CL_PLAYSOUND 3 "Selection.SpyClothesRustle1" event AE_CL_PLAYSOUND 19 "Selection.SpyPuff" event AE_CL_PLAYSOUND 66 "Selection.SpyPuffAh" event AE_CL_PLAYSOUND 63 "Selection.SpyClothesRustle2"

$sequence SelectionMenu_Idle "SelectionMenu_Idle.dmx" loop


$popd
