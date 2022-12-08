// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/pyro_user_animations.mdl

$definevariable infoNode "pyroInfo"
$include "pyro_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"


//----------------------------------------------------------------------------------
//	Local Weightlists
//----------------------------------------------------------------------------------

$Weightlist Airwalk_ArmsBlend {

	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_spine_1" 0.4
	"bip_spine_2" 0.6
	"bip_spine_3" 1.0
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
$MPAimLayer_leftHandIK PRIMARY_aimmatrix_idle        PRIMARY_aimmatrix_idle        $infoNode$
$MPAimLayer_leftHandIK PRIMARY_aimmatrix_run         PRIMARY_aimmatrix_run         $infoNode$
$MPAimLayer_leftHandIK PRIMARY_aimmatrix_walk        PRIMARY_aimmatrix_walk        $infoNode$
$MPAimLayer_leftHandIK PRIMARY_aimmatrix_crouch_idle PRIMARY_aimmatrix_crouch_idle $infoNode$

$MPWeaponReload		PRIMARY

$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

$sequence primary_fire primary_fire

//crouch fire
$sequence AttackCrouch_PRIMARY {
	primary_fire
	subtract primary_fire 0
	frames 6 51
        loop
	delta
	weightlist UpperbodyBlend
	activity ACT_MP_ATTACK_CROUCH_PRIMARY 1
}

$sequence AttackCrouch_PRIMARY_spoolup {
	primary_fire
	subtract primary_fire 0
	frames 0 6
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_ATTACK_CROUCH_PREFIRE 1
}

$sequence AttackCrouch_PRIMARY_spooldown {
	primary_fire
	subtract primary_fire 0
	frames 51 61
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_ATTACK_CROUCH_POSTFIRE 1
}

$sequence SECONDARYAttackCrouch_PRIMARY {
	primary_altFire
	subtract primary_fire 0
	frames 0 30
	delta
	activity ACT_MP_ATTACK_CROUCH_SECONDARYFIRE  1
}


//stand fire
$sequence AttackStand_PRIMARY {
	primary_fire
	subtract primary_fire 0
	frames 6 51
	delta
	weightlist UpperbodyBlend
	activity ACT_MP_ATTACK_STAND_PRIMARY 1
}

$sequence AttackStand_primary_spoolup {
	primary_fire
	subtract primary_fire 0
	frames 0 6
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_ATTACK_STAND_PREFIRE 1
}

$sequence AttackStand_primary_spooldown {
	primary_fire
	subtract primary_fire 0
	frames 51 61
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MP_ATTACK_STAND_POSTFIRE 1
}

$sequence SECONDARYAttackStand_PRIMARY {
	primary_altFire
	subtract primary_fire 0
	frames 0 30
	delta
	activity ACT_MP_ATTACK_STAND_SECONDARYFIRE 1
}


//swim fire
$sequence AttackSwim_PRIMARY {
	primary_fire
	subtract primary_fire 0
	frames 2 47
	delta
	weightlist UpperbodyBlend
	activity ACT_MP_ATTACK_SWIM_PRIMARY 1
}

$sequence AttackSwim_primary_spoolup {
	primary_fire
	subtract primary_fire 0
	frames 0 3
	delta
	activity ACT_MP_ATTACK_SWIM_PREFIRE 1
}

$sequence AttackSwim_primary_spooldown {
	primary_fire
	subtract primary_fire 0
	frames 47 57
	delta
	weightlist UpperbodyBlend
	activity ACT_MP_ATTACK_SWIM_POSTFIRE 1
}

$sequence SECONDARYAttackSwim_PRIMARY {
	primary_altFire
	subtract primary_fire 0
	frames 0 30
	delta
	weightlist UpperbodyBlend
	activity ACT_MP_ATTACK_SWIM_SECONDARYFIRE 1
}

//place sapper gesture
$sequence layer_placeSapper_ArmL "primary_placeSapper.dmx" {
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

$Shotgun_WeaponAims_leftHandIK		SECONDARY	$infoNode$
$MPWeaponFiring		SECONDARY
$MPWeaponReload		SECONDARY

//Reload loop
$sequence a_secondary_reload secondary_reload_loop

$sequence a_secondary_reload_loop {
	secondary_reload_loop frames 20 40
	subtract a_secondary_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY_LOOP 1
}

$sequence a_secondary_reload_end {
	secondary_reload_loop frames 40 55
	subtract a_secondary_reload 0
	delta
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_SECONDARY_END 1
}

$sequence a_secondary_crouch_reload_loop {
	secondary_reload_loop frames 20 40
	subtract a_secondary_reload 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_LOOP 1
}

$sequence a_secondary_crouch_reload_end {
	secondary_reload_loop frames 40 55
	subtract a_secondary_reload 0
	delta
	fadeout 1
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_SECONDARY_END 1
}

//-----------------------------------------------------------------------------------
// ITEM1
//-----------------------------------------------------------------------------------

$Shotgun_WeaponAims_leftHandIK		ITEM1	$infoNode$

$sequence layer_reload_flaregun_arms_ITEM1 "item1_fire.dmx" weightlist ArmLGestureBlend {
	ikrule lhand touch "weapon_bone" usesource range 7 13 46 47
	hidden
}

$sequence layer_reload_flaregun_airwalk_ITEM1 "item1_fire.dmx" weightlist ArmLGestureBlend {
	ikrule lhand touch "weapon_bone" usesource range 7 13 46 47
	hidden
}

$MPGestureAttack AttackStand_ITEM1  ITEM1_fire          ACT_MP_ATTACK_STAND_ITEM1  blendlayer layer_reload_flaregun_arms_ITEM1 0 5 50 60 {
  event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 20 "shell 1"
  event AE_CL_BODYGROUP_SET_VALUE_CMODEL_WPN 35 "shell 0"
}
$MPGestureAttack AttackCrouch_ITEM1 ITEM1_crouch_fire   ACT_MP_ATTACK_CROUCH_ITEM1 blendlayer layer_reload_flaregun_arms_ITEM1 0 5 50 60
$MPGestureAttack AttackSwim_ITEM1   ITEM1_swim_fire     ACT_MP_ATTACK_SWIM_ITEM1   blendlayer layer_reload_flaregun_arms_ITEM1 0 5 50 60
$MPGestureAttack AttackAirwalk_ITEM1   ITEM1_fire     ACT_MP_ATTACK_Airwalk_ITEM1   blendlayer layer_reload_flaregun_airwalk_ITEM1 0 5 50 60

//-----------------------------------------------------------------------------------
//airwalk reloads
//-----------------------------------------------------------------------------------

$sequence a_ITEM1_reload_airwalk 	ITEM1_reload
$sequence layer_reload_arms_ITEM1 "ITEM1_reload.dmx" frames 0 20 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence ITEM1_reload_airwalk {
	"ITEM1_reload.dmx"
	frames 0 20
	subtract a_ITEM1_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_ITEM1 0 10 21 21
 	activity ACT_MP_RELOAD_AIRWALK_ITEM1 1
}

$sequence layer_reload_arms_ITEM1_loop "ITEM1_reload.dmx" frames 20 40 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence ITEM1_reload_airwalk_loop {
	"ITEM1_reload.dmx"
	 frames 20 40
	 subtract a_ITEM1_reload_airwalk 0
	 delta
	 ikrule lhand release
	 ikrule rhand release
	 iklock rfoot 1 0 iklock lfoot 1 0
 	 blendlayer layer_reload_arms_ITEM1_loop -2 -2 21 21
 	 activity ACT_MP_RELOAD_AIRWALK_ITEM1_LOOP 1
}


$sequence layer_reload_arms_ITEM1_end "ITEM1_reload.dmx" frames 40 55 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence ITEM1_reload_airwalk_end {
	"ITEM1_reload.dmx"
	frames 40 55
	subtract a_ITEM1_reload_airwalk 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_ITEM1_end -2 -2 1 7
 	activity ACT_MP_RELOAD_AIRWALK_ITEM1_END 1
}

//-----------------------------------------------------------------------------------
//
//Swim reloads
//
//-----------------------------------------------------------------------------------

$sequence a_ITEM1_reload_swim 	ITEM1_reload
$sequence layer_reload_arms_ITEM1_swim "ITEM1_reload.dmx" frames 0 20 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence ITEM1_reload_swim {
	"ITEM1_reload.dmx"
	frames 0 20
	subtract a_ITEM1_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_ITEM1_swim 0 10 21 21
 	activity ACT_MP_RELOAD_SWIM_ITEM1 1
}

$sequence layer_reload_arms_ITEM1_loop_swim "ITEM1_reload.dmx" frames 20 40 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

//-----------------------------------------------------------------------------------
//airwalk reloads
//-----------------------------------------------------------------------------------

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

//-----------------------------------------------------------------------------------
//
//Swim reloads
//
//-----------------------------------------------------------------------------------

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
$MPWeaponAims_leftHandIK	MELEE	$infoNode$

//melee attack
$sequence AttackStand_Melee {
	Melee_Swing
	weightlist HipsUpperBody
	subtract AttackStand_Melee 0
	delta
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_STAND_MELEE 1
}

//crouch melee attack
$sequence AttackCrouch_Melee {
	Melee_crouch_Swing
	weightlist HipsUpperBody
	subtract AttackCrouch_Melee 0
	delta
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_CROUCH_MELEE 1
}

//swim melee attack
$sequence AttackSwim_MELEE {
	melee_swing.dmx
	weightlist HipsUpperBody
	subtract AttackSwim_MELEE 0
	delta
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
 	activity ACT_MP_ATTACK_SWIM_MELEE 1
}

$include pyro_movement.qci

//-----------------------------------------------------------------------------------
//
//TAUNTS
//
//-----------------------------------------------------------------------------------

$sequence layer_taunt01 "taunt01.dmx" fps 30 hidden localhierarchy "weapon_bone" "bip_hand_L" range 0 5 63 68
$sequence taunt01 "taunt01.dmx" noanimation {
	numframes 68
	blendlayer layer_taunt01  0 5 63 68
	} { event 5004 15 "Taunt.Pyro01FootStomp" } { event 5004 12 "Taunt.Pyro01Equipment2" } { event 5004 25 "Taunt.Pyro01Equipment1" } { event 5004 35 "Taunt.Pyro01Equipment1" } { event 5004 45 "Taunt.Pyro01Equipment1" }

$sequence layer_taunt02 "secondary_taunt.dmx" fps 46 hidden
$sequence taunt02 "secondary_taunt.dmx" noanimation {
	numframes 106
	event AE_WPN_HIDE 1
	event AE_CL_CREATE_PARTICLE_EFFECT 5 "pyrotaunt follow_attachment weapon_bone_L"
	event AE_DOTAUNTATTACK 50 "pyro_fireball"
	event AE_WPN_UNHIDE 105
	blendlayer layer_taunt02  0 5 101 106
	} { event 5004 60 "Taunt.Pyro02Fire" }

$sequence layer_taunt03 "taunt03.dmx" fps 32 hidden localhierarchy "weapon_bone" "bip_hand_L" range 0 10 90 100
$sequence taunt03 "taunt03.dmx" noanimation {
	numframes 100
	blendlayer layer_taunt03  0 0 94 99
	} { event 5004 16 "Taunt.Pyro03RockStar" } { event 5004 66 "Taunt.Pyro03RockStarEnd" }


//-----------------------------------------------------------------------------------
//HAND GESTURES
//If you use the macros TFLeftHandGesture, or TFRightHandGesture you need to make a weightlist called ArmLGestureBlend, or ArmRGestureBlend.
//i didnt add this to the global weightlist.qci because ppl like to tweak their values per char.
//-----------------------------------------------------------------------------------

//primary
$TFLeftHandGesture gesture_primary_go "gesture_primary_go.dmx" 0 3 37 40 ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY
$TFLeftHandGesture gesture_primary_cheer "gesture_primary_cheer.dmx" 0 3 33 35 ACT_MP_GESTURE_VC_FISTPUMP_PRIMARY
$TFLeftHandGesture gesture_primary_positive "gesture_primary_positive.dmx" 0 5 35 40 ACT_MP_GESTURE_VC_THUMBSUP_PRIMARY

$sequence layer_gesture_primary_help_armL "gesture_primary_help.dmx" {
	weightlist ArmLGestureBlend_RH
	ikrule lhand release range 0 4 35 40
	ikrule lhand touch "bip_head" range 8 12 35 40 usesource
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

//secondary
$TFLeftHandGesture gesture_secondary_go "gesture_secondary_go.dmx" 0 5 35 40 ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY
$TFLeftHandGesture gesture_secondary_cheer "gesture_secondary_cheer.dmx" 0 5 30 35 ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY
$TFLeftHandGestureIK gesture_secondary_help "gesture_secondary_help.dmx" 0 5 35 40 ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY "bip_head" 6 10 35 40
$TFLeftHandGesture gesture_secondary_positive "gesture_secondary_positive.dmx" 0 5 35 40 ACT_MP_GESTURE_VC_THUMBSUP_SECONDARY

//melee
$TFLeftHandGesture gesture_melee_go "gesture_melee_go.dmx" 0 3 37 40 ACT_MP_GESTURE_VC_FINGERPOINT_MELEE
$TFLeftHandGesture gesture_melee_cheer "gesture_melee_cheer.dmx" 0 3 33 35 ACT_MP_GESTURE_VC_FISTPUMP_MELEE
$TFLeftHandGestureIK gesture_melee_help "gesture_melee_help.dmx" 0 3 32 35 ACT_MP_GESTURE_VC_HANDMOUTH_MELEE "bip_head" 6 10 26 30
$TFLeftHandGesture gesture_melee_positive "gesture_melee_positive.dmx" 0 3 27 40 ACT_MP_GESTURE_VC_THUMBSUP_MELEE

//item1
$TFLeftHandGesture gesture_item1_go "gesture_item1_go.dmx" 0 5 35 40 ACT_MP_GESTURE_VC_FINGERPOINT_item1
$TFLeftHandGesture gesture_item1_cheer "gesture_item1_cheer.dmx" 0 5 30 35 ACT_MP_GESTURE_VC_FISTPUMP_item1
$TFLeftHandGestureIK gesture_item1_help "gesture_item1_help.dmx" 0 5 35 40 ACT_MP_GESTURE_VC_HANDMOUTH_item1 "bip_head" 6 10 35 40
$TFLeftHandGesture gesture_item1_positive "gesture_item1_positive.dmx" 0 5 35 40 ACT_MP_GESTURE_VC_THUMBSUP_item1

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
//
//CHARACTER SELECTION
//
//-----------------------------------------------------------------------------------

$sequence selectionMenu_StartPose "selectionMenu_Anim01.dmx" frames 0 0 fps 30

$sequence selectionMenu_Anim01 "selectionMenu_Anim01.dmx" frames 0 70  fps 30 event AE_CL_PLAYSOUND 4 "Selection.PyroFootStomp" event AE_CL_PLAYSOUND 7 "Selection.PyroClothesRustle" event AE_CL_PLAYSOUND 9 "Selection.PyroEquipment1" event AE_CL_PLAYSOUND 32 "Selection.PyroEquipment2"

$sequence selectionMenu_Idle "selectionMenu_Anim01.dmx" loop frames 70 120  fps 30




$popd