// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/medic_user_animations.mdl

$definevariable infoNode "medicInfo"
$include "medic_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"


$ikchain medicHose "joint_hose05"

//------------------------------------------------------------------
// medic-specific weightlists
//------------------------------------------------------------------
$weightlist upperBodyNoFingers {
	"bip_pelvis" 1.0
	"bip_hip_L" 0.0
	"bip_hip_R" 0.0
	"bip_thumb_0_R" 0.0
	"bip_index_0_R" 0.0
	"bip_middle_0_R" 0.0
	"bip_ring_0_R" 0.0
	"bip_pinky_0_R" 0.0
	"bip_thumb_0_L" 0.0
	"bip_index_0_L" 0.0
	"bip_middle_0_L" 0.0
	"bip_ring_0_L" 0.0
	"bip_pinky_0_L" 0.0
}
$weightlist upperBodyNoFingersNoCoat {
	"bip_pelvis" 1.0
	"bip_hip_L" 0.0
	"bip_hip_R" 0.0
	"bip_thumb_0_R" 0.0
	"bip_index_0_R" 0.0
	"bip_middle_0_R" 0.0
	"bip_ring_0_R" 0.0
	"bip_pinky_0_R" 0.0
	"bip_thumb_0_L" 0.0
	"bip_index_0_L" 0.0
	"bip_middle_0_L" 0.0
	"bip_ring_0_L" 0.0
	"bip_pinky_0_L" 0.0
	"weapon_bone" 0.0
}
$weightlist armsblendMelee {
	"bip_pelvis" 0.0
	"bip_collar_r" 1.0
	"bip_collar_l" 1.0
}
$Weightlist RightArmBlendMelee {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	}
$Weightlist AirwalkNoiseBlend {
	"bip_pelvis" 1.0
	"bip_hip_R" 1.0
	"bip_hip_L" 1.0
	"bip_spine_0" 1.0
	"bip_thumb_0_R" 0.0
	"bip_index_0_R" 0.0
	"bip_middle_0_R" 0.0
	"bip_ring_0_R" 0.0
	"bip_pinky_0_R" 0.0
	"bip_thumb_0_L" 0.0
	"bip_index_0_L" 0.0
	"bip_middle_0_L" 0.0
	"bip_ring_0_L" 0.0
	"bip_pinky_0_L" 0.0
}
$Weightlist AirwalkNoiseBlend2 {
	"bip_pelvis" 1.0
	"bip_hip_R" 1.0
	"bip_hip_L" 1.0
	"bip_spine_0" 1.0
	"bip_collar_R" 0.0
	"bip_collar_L" 0.0
	"bip_thumb_0_R" 0.0
	"bip_index_0_R" 0.0
	"bip_middle_0_R" 0.0
	"bip_ring_0_R" 0.0
	"bip_pinky_0_R" 0.0
	"bip_thumb_0_L" 0.0
	"bip_index_0_L" 0.0
	"bip_middle_0_L" 0.0
	"bip_ring_0_L" 0.0
	"bip_pinky_0_L" 0.0
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
$Weightlist ArmRGestureBlend {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_spine_2" 0.1
	"bip_spine_3" 0.25
	"bip_neck" 0.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_collar_L" 0.0
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
$MPGestureAttack AttackStand_PRIMARY  PRIMARY_fire          ACT_MP_ATTACK_STAND_PRIMARY
$MPGestureAttack AttackCrouch_PRIMARY PRIMARY_fire   ACT_MP_ATTACK_CROUCH_PRIMARY
$MPGestureAttack AttackSwim_PRIMARY   PRIMARY_fire     ACT_MP_ATTACK_SWIM_PRIMARY
$sequence layer_reload_standing_arms_primary "primary_reload.dmx" weightlist LeftArmBlend {
	ikrule lhand touch "bip_pelvis" usesource range 6 10 12 14
	ikrule lhand touch "weapon_bone" usesource range 16 19 20 22
	ikrule lhand touch "weapon_bone" usesource range 31 34 45 45
	hidden
}
$MPGestureReload_IK ReloadStand_PRIMARY  PRIMARY_reload ACT_MP_RELOAD_STAND_PRIMARY layer_reload_standing_arms_primary 0 7 39 45
$MPGestureReload_IK ReloadCrouch_PRIMARY PRIMARY_reload ACT_MP_RELOAD_CROUCH_PRIMARY layer_reload_standing_arms_primary 0 7 39 45
$MPGestureReload_IK ReloadSwim_PRIMARY   PRIMARY_reload ACT_MP_RELOAD_SWIM_PRIMARY layer_reload_standing_arms_primary 0 7 39 45
$MPGestureReload_IK ReloadAirwalk_PRIMARY   PRIMARY_reload   ACT_MP_RELOAD_AIRWALK_PRIMARY layer_reload_standing_arms_primary 0 7 39 45


//Hit flinch
$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
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
$MPAimLayer_medic SECONDARY_aimmatrix_idle        SECONDARY_aimmatrix_idle        $infoNode$
$MPAimLayer_medic SECONDARY_aimmatrix_run         SECONDARY_aimmatrix_run         $infoNode$
$MPAimLayer_medic SECONDARY_aimmatrix_crouch_idle SECONDARY_aimmatrix_crouch_idle $infoNode$
$MPAimLayer_medic SECONDARY_aimmatrix_crouch_walk SECONDARY_aimmatrix_crouch_walk $infoNode$


$animation a_AttackStandBase secondary_fire frames 0 0
$sequence AttackStand_SECONDARY_Prefire secondary_fire {
	frames 0 12
	subtract a_AttackStandBase 0
	delta
	weightlist upperBodyNoFingers
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule rhand touch "joint_lever" usesource
	activity ACT_MP_ATTACK_STAND_PREFIRE 1
}

$sequence AttackStand_SECONDARY secondary_fire {
	frames 12 40
	loop
	subtract a_AttackStandBase 0
	delta
	weightlist upperBodyNoFingers
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule rhand touch "joint_lever" usesource
	activity ACT_MP_ATTACK_STAND_SECONDARY 1
}

$sequence layer_AttackStand_SECONDARY_Postfire secondary_fire {
	frames 40 48
	subtract a_AttackStandBase 0
	delta
	weightlist upperBodyNoFingers
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule rhand touch "joint_lever" range 0 0 1 2 usesource
	activity ACT_MP_ATTACK_STAND_POSTFIRE 1
}

$sequence AttackCrouch_SECONDARY_Prefire secondary_fire {
	frames 0 12
	subtract a_AttackStandBase 0
	delta
	weightlist upperBodyNoFingers
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule rhand touch "joint_lever" usesource
	activity ACT_MP_ATTACK_Crouch_PREFIRE 1
}

$sequence AttackCrouch_SECONDARY secondary_fire {
	frames 12 40
	loop
	subtract a_AttackStandBase 0
	delta
	weightlist upperBodyNoFingers
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule rhand touch "joint_lever" usesource
	activity ACT_MP_ATTACK_Crouch_SECONDARY 1
}

$sequence AttackCrouch_SECONDARY_Postfire secondary_fire {
	frames 40 48
	subtract a_AttackStandBase 0
	delta
	weightlist upperBodyNoFingers
	iklock rfoot 1 0 iklock lfoot 1 0
	ikrule rhand touch "joint_lever" usesource
	activity ACT_MP_ATTACK_Crouch_POSTFIRE 1
}

$MPGestureAttack AttackSwim_SECONDARY   SECONDARY_swim_fire     ACT_MP_ATTACK_SWIM_SECONDARY

//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPWeaponAims		MELEE	$infoNode$

$sequence layer_AttackStandMelee_arms "melee_swing.dmx" weightlist armsBlendMelee {
	fps 30
	hidden
}
$sequence layer_AttackStandMelee_runW_arms "melee_swing_runW.dmx" weightlist armsBlendMelee {
	fps 30
	hidden
}
$sequence layer_melee_swing {
	melee_swing
	fps 30
	subtract layer_melee_swing 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackStandMelee_arms 0 4 24 30 spline
}
$sequence layer_melee_swing_runW {
	melee_swing_runW
	fps 30
	subtract layer_melee_swing_runW 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_AttackStandMelee_runW_arms  0 4 23 27 spline
}

$sequence MELEE_swing {
	melee_swing
	noanimation
	numframes 31
	blendlayer layer_melee_swing -0.8 -0.6 1.0 2.0  spline poseparameter move_y
  blendlayer layer_melee_swing_runW -2.0 -1.0 -0.6 -0.2 spline poseparameter move_y
	fps 30
	activity ACT_MP_ATTACK_STAND_MELEE 1
}


$animation a_Melee_Crouch_Swing Melee_Crouch_Swing.dmx frames 0 0
$sequence armslayer_melee_Crouch_swing Melee_Crouch_Swing.dmx {
 weightlist armsBlendMelee
 hidden
}

$sequence bodylayer_Melee_Crouch_Swing Melee_Crouch_Swing.dmx subtract bodylayer_Melee_Crouch_Swing 0 {
 weightlist HipsTorso
 delta
 hidden
}

$sequence Melee_Crouch_Swing Melee_Crouch_Swing.dmx noanimation numframes 31 {
 addlayer bodylayer_Melee_Crouch_Swing
 blendlayer armslayer_Melee_Crouch_Swing 0 4 24 30
 iklock rfoot 1 0 iklock lfoot 1 0
 ikrule lhand release
 activity ACT_MP_ATTACK_CROUCH_MELEE 1
}

//swim melee attack
$sequence layerBlend_attackSwimMelee_S_arms "melee_swing_swimS.dmx" weightlist armsBlendMelee {
		fps 30
	hidden
}
$sequence layer_AttackSwimMelee_S_arms "melee_swing_swimS.dmx" noanimation numframes 31 {
	blendlayer layerBlend_attackSwimMelee_S_arms 0 4 26 30
}
$sequence AttackSwim_MELEE Melee_Crouch_Swing.dmx noanimation numframes 31 {
 addlayer bodylayer_Melee_Crouch_Swing
 blendlayer armslayer_Melee_Crouch_Swing 0.2 0.3 1.0 2.0  spline poseparameter move_x
 blendlayer layer_AttackSwimMelee_S_arms -2.0 -1.0 0.2 0.3 spline poseparameter move_x
 iklock rfoot 1 0 iklock lfoot 1 0
 ikrule lhand release
 activity ACT_MP_ATTACK_SWIM_MELEE 1
}


$include medic_movement.qci

$sequence layer_taunt01 "taunt01.dmx" fps 30 hidden
$sequence taunt01 "taunt01.dmx" noanimation numframes 121 {
	blendlayer layer_taunt01 0 6 110 120
	event AE_CL_PLAYSOUND 40 "Taunt.MedicGloveStretch"
	event AE_CL_PLAYSOUND 89 "Taunt.MedicGloveSnap"
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 120
}

$sequence layer_taunt02 "taunt02.dmx" fps 30 hidden
$sequence taunt02 "taunt02.dmx" noanimation numframes 76 {
	blendlayer layer_taunt02 0 6 70 76
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 75
}

$sequence layer_taunt03 "taunt03_violin.dmx" fps 30 hidden alignto Stand_MELEE
$sequence taunt03 "taunt03_violin.dmx" noanimation numframes 121 {
	blendlayer layer_taunt03 0 6 112 120
	event AE_WPN_PLAYWPNSOUND 22 "TAUNT"
}


$sequence layer_taunt06 "taunt06_selfmedication.dmx" fps 30 hidden
$sequence taunt06 "taunt06_selfmedication.dmx" noanimation numframes 121 {
	blendlayer layer_taunt06 0 6 112 120
}


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
$sequence gesture_primary_go "gesture_primary_go.dmx" {
	subtract gesture_primary_go 0
	delta
	weightlist hipsUpperBody
	ikrule lhand release range 0 4 26 30
	addlayer layer_gesture_primary_go_armL
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
	hidden
}
$sequence gesture_primary_positive "gesture_primary_positive.dmx" {
	subtract gesture_primary_positive 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_primary_positive_armL
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_PRIMARY 1
}


//--------------------------------------------------------------------------------------------------------------------
//secondary

$sequence layer_gesture_secondary_go_armR "gesture_secondary_go.dmx" {
	weightlist ArmRGestureBlend
	ikrule rhand release range 0 4 26 30
	ikrule rhand touch "weapon_bone_L" range 8 16 20 30 usesource
	hidden
}
$sequence gesture_secondary_go "gesture_secondary_go.dmx" {
	subtract gesture_secondary_go 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_secondary_go_armR 0 4 26 30 spline
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY 1
}

$sequence layer_gesture_secondary_help_armR "gesture_secondary_help.dmx" {
	weightlist ArmRGestureBlend
	ikrule rhand release range 0 4 26 30
	ikrule rhand touch "bip_head" range 2 12 24 30 usesource
	hidden
}
$sequence gesture_secondary_help "gesture_secondary_help.dmx" {
	subtract gesture_secondary_help 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_secondary_help_armR 0 4 26 30
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY 1
}

$sequence layer_gesture_secondary_positive_armR "gesture_secondary_positive.dmx" {
	weightlist ArmRGestureBlend
	ikrule rhand release range 0 4 36 40
	hidden
}
$sequence gesture_secondary_positive "gesture_secondary_positive.dmx" {
	subtract gesture_secondary_positive 0
	delta
	weightlist hipsUpperBody
	blendlayer layer_gesture_secondary_positive_armR 0 4 36 40
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_THUMBSUP_SECONDARY 1
}


$sequence layer_gesture_secondary_cheer_armR "gesture_secondary_cheer.dmx" {
	weightlist ArmRGestureBlend
	ikrule rhand release range 0 4 36 40
	ikrule rhand touch "bip_head" range 10 22 24 36 usesource
	hidden
}
$sequence gesture_secondary_cheer "gesture_secondary_cheer.dmx" {
	subtract gesture_secondary_cheer 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_secondary_cheer_armR
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY 1
}

//------------------------------------------------------------------------------------------------------
//melee

$sequence layer_gesture_melee_go_armL "gesture_melee_go.dmx" {
	weightlist ArmLGestureBlend
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


//-------------------------------------------------------------------------------------------------------
//SelectionMenu Animation

$sequence SelectionMenu_StartPose "SelectionMenu_Anim01.dmx" frames 0 0

$sequence SelectionMenu_Anim01 "SelectionMenu_Anim01.dmx" frames 0 80 event AE_CL_PLAYSOUND 29 "Selection.MedicFootStomp" event AE_CL_PLAYSOUND 30 "Selection.MedicFootSlide" event AE_CL_PLAYSOUND 43 "Selection.MedicHeelClick"

$sequence SelectionMenu_Idle "SelectionMenu_Anim01.dmx" frames 80 140 loop


$popd

