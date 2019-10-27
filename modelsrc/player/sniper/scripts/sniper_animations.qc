// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/sniper_user_animations.mdl

$definevariable infoNode "sniperInfo"
$include "sniper_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

//----------------------------------------------------------------------------------
//	Local Weightlists
//----------------------------------------------------------------------------------

$Weightlist ArmLGestureBlend {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_neck" 0.0
	"bip_collar_R" 0.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}

$Weightlist ArmLGestureBlend_RH {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_neck" 0.0
	"bip_collar_R" 0.7
	"bip_upperArm_L" 0.9
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	}

$Weightlist ArmLGestureBlend_Head {
	"bip_pelvis" 0.0
	"bip_spine_0" 0.0
	"bip_spine_1" 0.0
	"bip_neck" 0.5
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
$animation b_reference "item2_idle_deployed.dmx" lx ly lz
$sequence ragdollspawn "primary_idle.dmx" lx ly

//-----------------------------------------------------------------------------------
// Primary
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK	PRIMARY	$infoNode$
$MPAimLayer_leftHandIK  PRIMARY_aimmatrix_deployed        	primary_aimmatrix_deployed      $infoNode$
$MPAimLayer_leftHandIK  PRIMARY_crouch_aimmatrix_deployed	  primary_crouch_aimmatrix_deployed	$infoNode$
$MPGestureAttack AttackStand_PRIMARY   PRIMARY_fire         ACT_MP_ATTACK_STAND_PRIMARY  IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackCrouch_PRIMARY  PRIMARY_crouch_fire  ACT_MP_ATTACK_CROUCH_PRIMARY IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackSwim_PRIMARY    PRIMARY_fire         ACT_MP_ATTACK_SWIM_PRIMARY   IKrule lhand touch "weapon_bone" usesource

$MPGestureAttack AttackCrouch_PRIMARY_DEPLOYED  PRIMARY_DEPLOYED_crouch_fire   ACT_MP_ATTACK_CROUCH_PRIMARY_DEPLOYED
$MPGestureAttack AttackSwim_PRIMARY_DEPLOYED    PRIMARY_DEPLOYED_fire          ACT_MP_ATTACK_SWIM_PRIMARY_DEPLOYED
$MPGestureReload ReloadStand_PRIMARY_DEPLOYED   PRIMARY_DEPLOYED_reload        ACT_MP_RELOAD_STAND_PRIMARY_DEPLOYED IKrule lhand touch "weapon_bone" usesource
$MPGestureReload ReloadCrouch_PRIMARY_DEPLOYED  PRIMARY_DEPLOYED_crouch_reload ACT_MP_RELOAD_CROUCH_PRIMARY_DEPLOYED IKrule lhand touch "weapon_bone" usesource
$MPGestureReload ReloadSwim_PRIMARY_DEPLOYED    PRIMARY_DEPLOYED_swim_reload   ACT_MP_RELOAD_SWIM_PRIMARY_DEPLOYED IKrule lhand touch "weapon_bone" usesource

$MPGestureReload ReloadStand_PRIMARY  PRIMARY_reload        ACT_MP_RELOAD_STAND_PRIMARY IKrule lhand touch "weapon_bone" usesource
$MPGestureReload ReloadCrouch_PRIMARY  PRIMARY_crouch_reload ACT_MP_RELOAD_CROUCH_PRIMARY IKrule lhand touch "weapon_bone" usesource
$MPGestureReload ReloadSwim_PRIMARY   PRIMARY_swim_reload   ACT_MP_RELOAD_SWIM_PRIMARY IKrule lhand touch "weapon_bone" usesource

$sequence attackstand_Primary_deployed_fire {
	Primary_deployed_fire
	subtract attackstand_primary_deployed_fire 0
	delta
  ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_STAND_PRIMARY_DEPLOYED 1 
}

//hit flinch
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
$MPWeaponAims_leftHandIK	SECONDARY	$infoNode$

$MPWeaponFiring SECONDARY

$sequence layer_reload_standing_arms_SECONDARY "SECONDARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 5 35 40
	hidden
}

$MPGestureReload_IK ReloadStand_SECONDARY  SECONDARY_reload ACT_MP_RELOAD_STAND_SECONDARY 	layer_reload_standing_arms_SECONDARY 0 5 27 40
$MPGestureReload_IK ReloadAirwalk_SECONDARY  SECONDARY_reload ACT_MP_RELOAD_AIRWALK_SECONDARY 	layer_reload_standing_arms_SECONDARY 0 5 27 40
$MPGestureReload_IK ReloadCrouch_SECONDARY SECONDARY_reload ACT_MP_RELOAD_CROUCH_SECONDARY 	layer_reload_standing_arms_SECONDARY 0 5 27 40
$MPGestureReload_IK ReloadSwim_SECONDARY   SECONDARY_reload ACT_MP_RELOAD_SWIM_SECONDARY 	layer_reload_standing_arms_SECONDARY 0 5 27 40

//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPWeaponAims		MELEE	$infoNode$
$MPMelee

//swim melee attack

$sequence AttackSwim_MELEE {
	melee_swim_swing.dmx
	weightlist HipsUpperBody
	subtract AttackSwim_MELEE 0
	delta
	ikrule lhand release
	ikrule rhand release
}

$sequence layer_melee_swing_swimS {
	melee_swimS_swing
        weightlist HipsUpperBody
	subtract layer_melee_swing_swimS 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
}

$sequence MELEE_swim_swing {
	melee_swim_swing
	noanimation
	numframes 34
	blendlayer AttackSwim_MELEE 0.0 0.5 1.0 2.0  spline poseparameter move_x
        blendlayer layer_melee_swing_swims -2.0 -1.0 0.0 0.5 spline poseparameter move_x
	activity ACT_MP_ATTACK_SWIM_MELEE 1
}

//-----------------------------------------------------------------------------------
// Item1
//-----------------------------------------------------------------------------------
$MPWeaponAims		Item1	$infoNode$

$animation a_ITEM1_fire ITEM1_Fire.dmx frames 0 0
$sequence armslayer_ITEM1_fire ITEM1_fire.dmx {
 weightlist Melee_Armsblend
 hidden
}

$sequence bodylayer_ITEM1_fire ITEM1_fire.dmx subtract a_ITEM1_fire 0 {
 weightlist Melee_HipsTorso
 delta
 hidden
}

$sequence ITEM1_fire ITEM1_fire.dmx noanimation numframes 25 {
 addlayer bodylayer_ITEM1_fire
 blendlayer armslayer_ITEM1_fire 0 5 20 25
 iklock rfoot 1 0 iklock lfoot 1 0
 ikrule lhand release 
 activity ACT_MP_ATTACK_STAND_ITEM1 1
}

$animation a_ITEM1_Crouch_fire ITEM1_Crouch_fire.dmx frames 0 0
$sequence armslayer_ITEM1_Crouch_fire ITEM1_Crouch_fire.dmx {
 weightlist Melee_Armsblend
 hidden
}

$sequence bodylayer_ITEM1_Crouch_fire ITEM1_Crouch_fire.dmx subtract a_ITEM1_fire 0 {
 weightlist Melee_HipsTorso
 delta
 hidden
}

$sequence ITEM1_Crouch_fire ITEM1_Crouch_fire.dmx noanimation numframes 25 {
 addlayer bodylayer_ITEM1_Crouch_fire
 blendlayer armslayer_ITEM1_crouch_fire 0 5 20 25
 iklock rfoot 1 0 iklock lfoot 1 0
 ikrule lhand release
 activity ACT_MP_ATTACK_CROUCH_ITEM1 1
} 

$sequence layer_ITEM1_WepGrip "ITEM1_idle.dmx" frames 0 0 numframes 15 loop weightlist RWepGrip hidden


//-----------------------------------------------------------------------------------
// Item2
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK	item2	$infoNode$
$MPAimLayer_leftHandIK  item2_aimmatrix_deployed        	item2_aimmatrix_deployed      $infoNode$
$MPAimLayer_leftHandIK  item2_aimmatrix_deployed_walk      item2_aimmatrix_deployed_walk     $infoNode$
$MPAimLayer_leftHandIK  item2_crouch_aimmatrix_deployed	  item2_crouch_aimmatrix_deployed	$infoNode$


$weightlist UpperBody {
	"bip_pelvis" 0.0 
	"bip_spine_0" 0.5 
	"bip_spine_1" 0.75 
	"bip_spine_2" 1.0
	} 


$sequence ITEM2_fire {
	ITEM2_fire
	weightlist UpperBody
 	activity ACT_MP_ATTACK_STAND_ITEM2 1
 	IKrule lhand touch "weapon_bone" usesource
 	addlayer ITEM2_aimmatrix_deployed_walk
} 

$sequence ITEM2_reload {
	ITEM2_reload
	weightlist UpperBody
 	activity ACT_MP_RELOAD_STAND_ITEM2 1
 	IKrule lhand touch "weapon_bone" usesource
 	addlayer ITEM2_aimmatrix_deployed_walk
} 



$sequence ITEM2_crouch_fire {
	ITEM2_crouch_fire
	weightlist UpperBody
 	activity ACT_MP_ATTACK_CROUCH_ITEM2 1
 	IKrule lhand touch "weapon_bone" usesource
 	addlayer ITEM2_crouch_aimmatrix_deployed
} 


$sequence ITEM2_crouch_reload {
	ITEM2_crouch_reload
	weightlist UpperBody
 	activity ACT_MP_RELOAD_CROUCH_ITEM2 1
 	IKrule lhand touch "weapon_bone" usesource
 	addlayer ITEM2_crouch_aimmatrix_deployed
} 

//-----------------------------------------------------------------------------------
//HAND GESTURES
//If you use the macros TFLeftHandGesture, or TFRightHandGesture you need to make a weightlist called ArmLGestureBlend, or ArmRGestureBlend.
//i didnt add this to the global weightlist.qci because ppl like to tweak their values per char.
//-----------------------------------------------------------------------------------

//primary
$TFLeftHandGesture gesture_primary_go "gesture_primary_go.dmx" 0 5 30 35 ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY
$TFLeftHandGesture gesture_primary_cheer "gesture_primary_cheer.dmx" 0 5 40 45 ACT_MP_GESTURE_VC_FISTPUMP_PRIMARY
$TFLeftHandGestureIK gesture_primary_help "gesture_primary_help.dmx" 0 5 30 35 ACT_MP_GESTURE_VC_HANDMOUTH_PRIMARY "bip_head" 0 5 30 35
$TFLeftHandGesture gesture_primary_positive "gesture_primary_positive.dmx" 0 5 25 30 ACT_MP_GESTURE_VC_THUMBSUP_PRIMARY

//secondary
$TFLeftHandGesture gesture_secondary_go "gesture_secondary_go.dmx" 0 5 30 35 ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY
$TFLeftHandGesture gesture_secondary_cheer "gesture_secondary_cheer.dmx" 0 3 42 45 ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY
$TFLeftHandGestureIK gesture_secondary_help "gesture_secondary_help.dmx" 0 3 30 35 ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY "bip_head" 0 5 30 35
$TFLeftHandGesture gesture_secondary_positive "gesture_primary_positive.dmx" 0 5 25 30 ACT_MP_GESTURE_VC_THUMBSUP_SECONDARY

//melee go
$TFLeftHandGesture gesture_melee_go "gesture_melee_go.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_FINGERPOINT_MELEE


//melee cheer
$sequence layer_gesture_melee_cheer_armL "gesture_melee_cheer.dmx" {
	weightlist ArmLGestureBlend_RH
	ikrule lhand release range 0 5 30 35
	ikrule lhand touch "bip_head" range 0 10 30 35 usesource
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

$sequence layer_gesture_primary_help_runN_armL "gesture_melee_help_runN.dmx" {
	weightlist ArmLGestureBlend_Head
	ikrule lhand release range 0 5 25 30
	ikrule lhand touch "bip_head" range 0 10 25 30 usesource
	hidden
}
$sequence layer_gesture_melee_help_armL "gesture_melee_help.dmx" {
	weightlist ArmLGestureBlend
	ikrule lhand touch "bip_head" range 0 10 25 30 usesource
	hidden
}
$sequence gesture_melee_help "gesture_melee_help.dmx" {
	subtract gesture_melee_help 0
	delta
	weightlist hipsUpperBody
	addlayer layer_gesture_melee_help_armL
	blendlayer layer_gesture_melee_help_armL -2.0 -1.0 0.2 0.8  spline poseparameter move_x
  blendlayer layer_gesture_primary_help_runN_armL 0.2 0.8 1.0 2.0 spline poseparameter move_x
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_GESTURE_VC_HANDMOUTH_MELEE 1
}

$TFLeftHandGesture gesture_melee_positive "gesture_melee_positive.dmx" 0 5 25 30 ACT_MP_GESTURE_VC_THUMBSUP_MELEE

//-----------------------------------------------------------------------------------
// Misc
//-----------------------------------------------------------------------------------

$sequence primary_death_backstab "primary_death_backstab.dmx" fps 30 {
	frames 0 60
	}
	
//TAUNTS
$sequence layer_taunt01 "primary_taunt.dmx" fps 30 hidden
$sequence taunt01 "primary_taunt.dmx" noanimation {
	numframes 80
	blendlayer layer_taunt01  0 5 70 80
	}

$sequence taunt02 "taunt02_heelClick.dmx" {
	blendlayer SECONDARY_aimmatrix_idle  0 0 0 6
	blendlayer SECONDARY_aimmatrix_idle  73 81 85 85
	} { event 5004 21 "Taunt.Sniper02HealClick" } { event 5004 27 "Taunt.Sniper02FootStomp" } { event 5004 30 "Taunt.Sniper02FootStomp" }

$sequence melee_taunt "taunt03.dmx" fps 30 hidden
$sequence taunt03 "taunt03.dmx" noanimation {
	numframes 75
	blendlayer melee_taunt  0 5 70 75
	}

$sequence layer_taunt04 "taunt04_stab.dmx" fps 30 hidden localhierarchy "weapon_bone" "bip_hand_L" range 0 5 85 90 localhierarchy "weapon_bone_1" "bip_hand_L" range 0 5 85 90 localhierarchy "weapon_bone_2" "bip_hand_L" range 0 5 85 90  localhierarchy "weapon_bone_3" "bip_hand_L" range 0 5 85 90
$sequence taunt04 "taunt04_stab.dmx" noanimation {
	numframes 90
	blendlayer layer_taunt04  0 5 85 90
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

$sequence SelectionMenu_StartPose "SelectionMenu_Anim01.dmx" frames 0 0

$sequence SelectionMenu_Anim01 "SelectionMenu_Anim01.dmx" frames 0 80 event AE_CL_PLAYSOUND 29 "Selection.SniperHatTip"

$sequence SelectionMenu_Idle "SelectionMenu_Anim01.dmx" loop frames 80 140


$include sniper_movement.qci



$popd
