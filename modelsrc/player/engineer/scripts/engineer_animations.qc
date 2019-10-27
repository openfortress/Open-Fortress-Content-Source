// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/engineer_user_animations.mdl

$definevariable infoNode "engineerInfo"
$include "engineer_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

//----------------------------------------------------------------------------------
//	Local Weightlists
//----------------------------------------------------------------------------------
$Weightlist EngineermeleeRightArmBlend {
	"bip_pelvis" 0.5
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.7
	"bip_spine_1" 0.8
	"bip_spine_2" 0.9
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	"bip_head" 0.7
	}

$Weightlist Airwalk_ArmsBlend {

	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.2
	"bip_spine_1" 0.4
	"bip_spine_2" 0.6
	"bip_spine_3" 1.0
	"prp_legPouch" 0.4
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
$Shotgun_WeaponAims_leftHandIK	PRIMARY	$infoNode$
$MPWeaponFiring			PRIMARY
$MPWeaponReload			PRIMARY

//loopable reloads
$sequence a_primary_reload primary_reload

$sequence a_primary_reload_loop {
	primary_reload_loop frames 20 40
	subtract a_primary_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_PRIMARY_LOOP 2
}

$sequence b_primary_reload_loop {
	primary_reload_loop frames 40 60
	subtract a_primary_reload 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_PRIMARY_LOOP 1
}

$sequence primary_reload_end {
	primary_reload_loop frames 60 75
	subtract a_primary_reload 0
	delta
	fadeout 1.0
	ikrule lhand "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_STAND_PRIMARY_END 1
}

$sequence a_primarycrouch_reload primary_crouch_reload

$sequence ReloadCrouch_PRIMARY_end {
	primary_crouch_reload frames 60 75
	subtract a_primarycrouch_reload 0
	delta
	fadeout 0.7
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_END 1
}

$sequence primary_reloadcrouch {
	primary_crouch_reload frames 0 20
	subtract a_primarycrouch_reload 0
	delta
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY 100
}

$sequence a_primary_reloadcrouch_loop {
	primary_crouch_reload frames 20 40
	subtract a_primarycrouch_reload 0
	delta
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_LOOP 2
}

$sequence b_primary_reloadcrouch_loop {
	primary_crouch_reload frames 20 40
	subtract a_primarycrouch_reload 0
	delta
	ikrule lhand touch "weapon_bone_1" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_RELOAD_CROUCH_PRIMARY_LOOP 1
}

//airwalk reloads
$sequence a_primary_reload_airwalk 	primary_reload_airwalk
$sequence layer_reload_arms_PRIMARY "primary_reload_airwalk.dmx" frames 0 20 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_airwalk {
	"primary_reload_airwalk.dmx"
	frames 0 20
	subtract a_primary_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY 0 10 21 21
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY 1
}

$sequence layer_reload_arms_PRIMARY_loop "primary_reload_airwalk.dmx" frames 40 60 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_airwalk_loop {
	"primary_reload_airwalk.dmx"
	frames 40 60
	subtract a_primary_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_loop -2 -2 21 21
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_LOOP 1
}


$sequence layer_reload_arms_PRIMARY_end "Primary_reload_airwalk.dmx" frames 60 75 weightlist Airwalk_ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_airwalk_end {
	"primary_reload_airwalk.dmx"
	frames 60 75
	subtract a_primary_reload_airwalk 0
	delta
	fadeout 0.7
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_end -2 -2 1 7
 	activity ACT_MP_RELOAD_AIRWALK_PRIMARY_END 1
}

//Swim reloads
$sequence a_primary_reload_swim 	primary_reload
$sequence layer_reload_arms_PRIMARY_swim "primary_reload.dmx" frames 0 20 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_swim {
	"primary_reload_loop.dmx"
	frames 0 20
	subtract a_primary_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_swim 0 10 21 21
 	activity ACT_MP_RELOAD_SWIM_PRIMARY 1
}

$sequence layer_reload_arms_PRIMARY_loop_swim "primary_reload.dmx" frames 40 60 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_swim_loop {
	"primary_reload.dmx"
	frames 40 60
	subtract a_primary_reload_swim 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_loop_swim -2 -2 21 21
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_LOOP 1
}


$sequence layer_reload_arms_PRIMARY_end_swim "Primary_reload.dmx" frames 60 75 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence PRIMARY_reload_swim_end {
	"primary_reload.dmx"
	frames 60 75
	subtract a_primary_reload_swim 0
	delta
	fadeout 0.7
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_PRIMARY_end_swim -2 -2 1 7
 	activity ACT_MP_RELOAD_SWIM_PRIMARY_END 1
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
$MPWeaponAims		SECONDARY	$infoNode$

$MPGestureAttack AttackStand_SECONDARY  SECONDARY_fire          ACT_MP_ATTACK_STAND_SECONDARY
$MPGestureAttack AttackSwim_SECONDARY   SECONDARY_swim_fire     ACT_MP_ATTACK_SWIM_SECONDARY

//Secondary Crouch Fire
$sequence AttackCrouch_SECONDARY {
	SECONDARY_crouch_fire
	weightlist HipsUpperBody
	subtract AttackCrouch_SECONDARY 0
	delta
	weightlist HipsUpperBody
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MP_ATTACK_CROUCH_SECONDARY 1
}

//Secondary Reloads
$sequence layer_reload_standing_arms_SECONDARY "SECONDARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 5 9 23 28
	hidden
}

//Secondary Reloads
$sequence layer_reload_airwalk_arms_SECONDARY "SECONDARY_reload_airwalk.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 5 9 23 28
	hidden
}

$sequence layer_reload_crouch_arms_SECONDARY "SECONDARY_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 5 9 23 28
	hidden
}

$MPGestureReload_IK ReloadStand_SECONDARY     SECONDARY_reload                ACT_MP_RELOAD_STAND_SECONDARY    layer_reload_standing_arms_SECONDARY 0 7 25 28
{
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 16 "magazine 0"
}
$MPGestureReload_IK ReloadAirwalk_SECONDARY   SECONDARY_reload_airwalk        ACT_MP_RELOAD_AIRWALK_SECONDARY   layer_reload_airwalk_arms_SECONDARY 0 7 25 28
{
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 16 "magazine 0"
}
$MPGestureReload_IK ReloadCrouch_SECONDARY    SECONDARY_reload 	              ACT_MP_RELOAD_CROUCH_SECONDARY   layer_reload_crouch_arms_SECONDARY 0 7 25 28
{
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 16 "magazine 0"
}
$MPGestureReload_IK ReloadSwim_SECONDARY      SECONDARY_reload                ACT_MP_RELOAD_SWIM_SECONDARY     layer_reload_standing_arms_SECONDARY 0 7 25 28
{
	event AE_CL_MAG_EJECT 3
	event AE_CL_BODYGROUP_SET_VALUE 3 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 16 "magazine 0"
}

$sequence xReloadPrim Primary_reload

//-----------------------------------------------------------------------------------
// Melee
//-----------------------------------------------------------------------------------
$MPAimLayer Melee_aimmatrix_idle        Melee_aimmatrix_idle         $infoNode$
$MPAimLayer_leftHandIK Melee_aimmatrix_run         Melee_aimmatrix_run          $infoNode$
$MPAimLayer Melee_aimmatrix_walk        Melee_aimmatrix_walk         $infoNode$
$MPAimLayer_leftHandIK Melee_aimmatrix_crouch_idle Melee_aimmatrix_crouch_idle  $infoNode$

$EngineerMelee

//swim melee attack
$sequence AttackSwim_MELEE {
	melee_swim_swing.dmx
	weightlist HipsUpperBody
	subtract AttackSwim_MELEE 0
	delta
	ikrule lhand release
	ikrule rhand release
 	activity ACT_MP_ATTACK_SWIM_MELEE 1
}

$sequence melee_raw melee_swing
$sequence melee_crouchraw melee_crouch_swing

//-----------------------------------------------------------------------------------
// PDA
//-----------------------------------------------------------------------------------
$MPWeaponAims		PDA	$infoNode$
$MPPDA

$sequence layer_fire_standing_arms_PDA "PDA_fire.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 10 16 24
	hidden
}
$MPGestureAttack AttackStand_PDA  PDA_fire          ACT_MP_ATTACK_STAND_PDA /*layer_fire_standing_arms_PDA 0 10 16 24 */
$MPGestureAttack AttackCrouch_PDA PDA_crouch_fire   ACT_MP_ATTACK_CROUCH_PDA
$MPGestureAttack AttackSwim_PDA   PDA_swim_fire     ACT_MP_ATTACK_SWIM_PDA

//-----------------------------------------------------------------------------------
// Build
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK		BUILDING	$infoNode$


//-----------------------------------------------------------------------------------
//HAND GESTURES
//If you use the macros TFLeftHandGesture, or TFRightHandGesture you need to make a weightlist called ArmLGestureBlend, or ArmRGestureBlend.
//i didnt add this to the global weightlist.qci because ppl like to tweak their values per char.
//-----------------------------------------------------------------------------------

//primary
$TFLeftHandGesture gesture_primary_go "gesture_primary_go.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY
$TFLeftHandGesture gesture_primary_cheer "gesture_primary_cheer.dmx" 0 3 42 45 ACT_MP_GESTURE_VC_FISTPUMP_PRIMARY
$TFLeftHandGestureIK gesture_primary_help "gesture_primary_help.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_HANDMOUTH_PRIMARY "bip_head" 6 10 26 30

//secondary
$TFLeftHandGesture gesture_secondary_go "gesture_secondary_go.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY
$TFLeftHandGesture gesture_secondary_cheer "gesture_secondary_cheer.dmx" 0 3 42 45 ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY
$TFLeftHandGestureIK gesture_secondary_help "gesture_secondary_help.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY "bip_head" 6 10 26 30

//melee
$TFLeftHandGesture gesture_melee_go "gesture_melee_go.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_FINGERPOINT_MELEE
$TFLeftHandGesture gesture_melee_cheer "gesture_melee_cheer.dmx" 0 3 42 45 ACT_MP_GESTURE_VC_FISTPUMP_MELEE
$TFLeftHandGestureIK gesture_melee_help "gesture_melee_help.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_HANDMOUTH_MELEE "bip_head" 6 10 26 30

//pda
$TFLeftHandGesture gesture_PDA_go "gesture_PDA_go.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_FINGERPOINT_PDA
$TFLeftHandGesture gesture_PDA_cheer "gesture_PDA_cheer.dmx" 0 3 42 45 ACT_MP_GESTURE_VC_FISTPUMP_PDA
$TFLeftHandGestureIK gesture_PDA_help "gesture_PDA_help.dmx" 0 3 27 30 ACT_MP_GESTURE_VC_HANDMOUTH_PDA "bip_head" 6 10 26 30


//-----------------------------------------------------------------------------------
//TAUNTS
//-----------------------------------------------------------------------------------
$sequence layer_taunt01 "taunt01.dmx" fps 23 hidden
$sequence taunt01 "taunt01.dmx" noanimation fps 23 activity ACT_MP_TAUNT 1 {
	numframes 106
	blendlayer layer_taunt01 0 5 102 106
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 105
	} { event 5004 10 "Taunt.Engineer01HandClap" } { event 5004 59 "Taunt.Engineer01HandClap2" } { event 5004 22 "Taunt.Engineer01FootStomp" } { event 5004 29 "Taunt.Engineer01FootStomp" } { event 5004 68 "Taunt.Engineer01FootStomp" } { event 5004 37 "Taunt.Engineer01FootStompLight" } { event 5004 42 "Taunt.Engineer01FootStompLight" } { event 5004 47 "Taunt.Engineer01FootStompLight" } { event 5004 56 "Taunt.Engineer01FootStomp" } { event 5004 57 "Taunt.Engineer01FootStompLight" } { event 5004 60 "Taunt.Engineer01FootStompLight" } { event 5004 79 "Taunt.Engineer01FootStompLight" } { event 5004 86 "Taunt.Engineer01FootStompLight" } { event 5004 88 "Taunt.Engineer01FootStomp" }

$sequence layer_taunt02 "secondary_taunt.dmx" fps 30 hidden
$sequence taunt02 "secondary_taunt.dmx" noanimation activity ACT_MP_TAUNT 1 {
	numframes 90
	blendlayer layer_taunt02  0 5 85 90
	} { event 5004 9 "Taunt.Engineer02PistolTwirl" }

$sequence layer_taunt03 "melee_taunt.dmx" fps 30 hidden
$sequence taunt03 "melee_taunt.dmx" noanimation activity ACT_MP_TAUNT 1 {
	numframes 138
	blendlayer layer_taunt03  0 5 133 138
	} { event 5004 38 "Taunt.Engineer01HandClap" } { event 5004 37 "Taunt.Engineer01FootStompLight" } { event 5004 49 "Taunt.Engineer01FootStompLight" } { event 5004 40 "Taunt.Engineer01FootStomp" }


$include engineer_Movement.qci

//Flinch anims
$sequence a_flinch01 "upper_small_slow_flinch.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

$sequence a_flinch02 "hit_flinch03.dmx" subtract a_flinch02 10 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

$sequence a_flinch04 "upper_small_slower_flinch.dmx" subtract a_flinch04 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
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
//SelectionMenu Animation
//-----------------------------------------------------------------------------------

$sequence SelectionMenu_StartPose "SelectionMenu_Anim01.dmx" frames 0 0

$sequence SelectionMenu_Anim01 "SelectionMenu_Anim01.dmx" frames 0 150 { event 5004 17 "Selection.EngineerFootStomp" } { event 5004 23 "Selection.EngineerWrenchShoulder" } { event 5004 40 "Selection.EngineerClothesRustle" }

$sequence SelectionMenu_Idle "SelectionMenu_Anim01.dmx" frames 150 200 loop


$popd

$popd


