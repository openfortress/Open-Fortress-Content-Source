// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_legacy.mdl

$definevariable infoNode "mercenaryInfo"
$include "../mercenary_definebones.qci"

// include the file that sets up the ikchains
$include "../../../TF_animation_rules/ruleshierarchy.qci"
$include "../../../TF_animation_rules/TF_macros_list_merc.qci"

$pushd "../../animations/dmx"

//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "primary_idle.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly


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

$Weightlist CrowbarMercStandArmsBlend {
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

//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// LEGACY animations (primary, secondary etc)
// Borrowed from Soldier
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

$sequence layer_primary_jump_floatNoise primary_floatD subtract layer_primary_jump_floatNoise 0 delta realtime hidden

//Hit flinch
$sequence a_flinch01 "hit_flinch01.dmx" subtract a_flinch01 12 {
		delta
		activity ACT_MP_GESTURE_FLINCH_CHEST 1
}

//--------------------------------------------------------
// Secondary
//--------------------------------------------------------
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


//--------------------------------------------------------
// Hand Gesture anims for Voice commands
//--------------------------------------------------------

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


//--------------------------------------------------------
//secondary
//--------------------------------------------------------

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

//--------------------------------------------------------
//primary stun
//--------------------------------------------------------

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

//================================================================================================
//
// SWIMS
//
//================================================================================================

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

//================================================================================================
//
// IDLES
//
//================================================================================================


$sequence Stand_SECONDARY  SECONDARY_idle loop alignto a_reference addlayer SECONDARY_aimmatrix_idle activity ACT_MP_STAND_SECONDARY 1
$sequence Stand_LOSER  LOSER_idle loop alignto a_reference activity ACT_MP_STAND_LOSERSTATE 1

$sequence Crouch_SECONDARY SECONDARY_crouch_idle loop alignto a_reference addlayer SECONDARY_aimmatrix_crouch_idle  activity ACT_MP_CROUCH_SECONDARY 1
$sequence Crouch_LOSER LOSER_crouch_idle loop alignto a_reference activity ACT_MP_CROUCH_LOSERSTATE 1

$MPCrouchWalkWithWeapon       CrouchWalk_Secondary        0 0 0 0 0 0 0 0 Secondary_crouch_walkN        Secondary_crouch_walkCenter        Secondary_aimmatrix_idle        ACT_MP_CROUCHWALK_Secondary $infoNode$

//================================================================================================
//
// AIRWALKS (getting knocked around by explosions, etc)
//
//================================================================================================

$sequence Airwalk_SECONDARY "secondary_airwalk.dmx" fps 30 loop {
	addlayer secondary_aimmatrix_idle 
	ikrule lhand release  
	activity ACT_MP_AIRWALK_SECONDARY 1
}

$sequence Airwalk_LOSER "loser_airwalk.dmx" fps 30 loop {
	activity ACT_MP_AIRWALK_LOSERSTATE 1
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
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// START OF MELEE
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// CROWBAR
//-----------------------------------------------------------------------------------

$MPAimLayer MELEE_aimmatrix_idle        CROWBAR_aimmatrix_idle        $infoNode$
$MPAimLayer MELEE_aimmatrix_run         CROWBAR_aimmatrix_run         $infoNode$
$MPAimLayer MELEE_aimmatrix_crouch_idle CROWBAR_aimmatrix_crouch_idle $infoNode$

$MPGestureAttack Attack_Stand_MELEE  CROWBAR_fire          ACT_MP_ATTACK_STAND_MELEE weightlist CrowbarMercStandArmsBlend
$MPGestureAttack Attack_Crouch_MELEE CROWBAR_crouch_fire   ACT_MP_ATTACK_CROUCH_MELEE weightlist CrowbarMercStandArmsBlend
$MPGestureAttack Attack_Swim_MELEE   CROWBAR_swim_fire     ACT_MP_ATTACK_SWIM_MELEE weightlist CrowbarMercStandArmsBlend

$sequence Stand_Melee  CROWBAR_idle loop alignto a_reference addlayer MELEE_aimmatrix_idle activity ACT_MP_STAND_MELEE 1
$sequence Crouch_Melee CROWBAR_crouch_idle loop alignto a_reference addlayer MELEE_aimmatrix_crouch_idle activity ACT_MP_CROUCH_MELEE 1

// swim
$MPAimLayer MELEE_aimmatrix_swim        MELEE_aimmatrix_idle        $infoNode$
$MPswimWithWeapon Melee 0 0 0 0 0 0 0 0 CROWBAR_SwimN	CROWBAR_SwimCenter	MELEE_aimmatrix_swim	ACT_MP_SWIM_MELEE $infonode$

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------

//CROWBAR jump
$sequence a_jumpStart_MELEE CROWBAR_jump frames 0 25 addlayer MELEE_aimmatrix_swim alignto a_reference Z activity ACT_MP_JUMP_START_MELEE 1 LX LY 

$sequence a_jumpfloat_MELEE CROWBAR_jump frames 26 189 addlayer MELEE_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_MELEE 1 LX LY 

$sequence jumpLandPose_MELEE CROWBAR_jump frames 25 25 numframes 30 loop 

$sequence jumpLand_MELEE { 
	CROWBAR_jump_land 
	subtract jumpLand_MELEE 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MP_JUMP_LAND_MELEE 1 
}

//-----------------------------------------------------------------------------------
//  RUN
//-----------------------------------------------------------------------------------
$animation a_runCenter_CROWBAR  CROWBAR_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_CROWBAR CROWBAR_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_CROWBAR CROWBAR_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_CROWBAR CROWBAR_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_CROWBAR CROWBAR_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_CROWBAR CROWBAR_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_CROWBAR CROWBAR_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_CROWBAR CROWBAR_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_CROWBAR CROWBAR_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_MELEE {
	a_runsw_CROWBAR	a_runS_CROWBAR		a_runSE_CROWBAR
	a_runW_CROWBAR	a_runCenter_CROWBAR	a_runE_CROWBAR
	a_runNW_CROWBAR	a_runN_CROWBAR		a_runNE_CROWBAR
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer MELEE_aimmatrix_run
	activity ACT_MP_RUN_MELEE 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_MELEE 0 0 0 0 0 0 0 0 CROWBAR_crouch_walkN CROWBAR_crouch_walkCenter MELEE_aimmatrix_crouch_idle ACT_MP_CROUCHWALK_MELEE $infoNode$

//-----------------------------------------------------------------------------------
// Airwalk
//-----------------------------------------------------------------------------------
$sequence Airwalk_MELEE "CROWBAR_airwalk.dmx" fps 30 loop {
	addlayer MELEE_aimmatrix_idle 
	activity ACT_MP_AIRWALK_MELEE 1
}

//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// END OF MELEE
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
//SPACE
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// START OF PRIMARY
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// Supershotgun
//-----------------------------------------------------------------------------------

$MPAimLayer_lefthandIK PRIMARY_aimmatrix_idle        SUPERSHOTGUN_aimmatrix_idle        $infoNode$
$MPAimLayer_lefthandIK PRIMARY_aimmatrix_run         SUPERSHOTGUN_aimmatrix_run         $infoNode$
$MPAimLayer_lefthandIK PRIMARY_aimmatrix_crouch_idle SUPERSHOTGUN_aimmatrix_crouch_idle $infoNode$

$MPGestureAttack Attack_Stand_PRIMARY  SUPERSHOTGUN_fire          ACT_MP_ATTACK_STAND_PRIMARY
$MPGestureAttack Attack_Crouch_PRIMARY SUPERSHOTGUN_crouch_fire   ACT_MP_ATTACK_CROUCH_PRIMARY
$MPGestureAttack Attack_Swim_PRIMARY   SUPERSHOTGUN_swim_fire     ACT_MP_ATTACK_SWIM_PRIMARY

$sequence layer_reload_standing_arms_SUPERSHOTGUN "SUPERSHOTGUN_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden

}
$sequence layer_reload_crouching_arms_SUPERSHOTGUN "SUPERSHOTGUN_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}	

$sequence layer_reload_swimming_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}

$sequence layer_reload_airwalk_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 4 45 51
	hidden
}

$MPGestureReload_IK ReloadStand_PRIMARY     SUPERSHOTGUN_reload			ACT_MP_RELOAD_STAND_PRIMARY    layer_reload_standing_arms_SUPERSHOTGUN 0 4 45 51
$MPGestureReload_IK ReloadCrouch_PRIMARY   SUPERSHOTGUN_crouch_reload		ACT_MP_RELOAD_CROUCH_PRIMARY   layer_reload_crouching_arms_SUPERSHOTGUN 0 4 45 51
$MPGestureReload_IK ReloadSwim_PRIMARY      SUPERSHOTGUN_swim_reload		ACT_MP_RELOAD_SWIM_PRIMARY     layer_reload_swimming_arms_SUPERSHOTGUN 0 4 45 51
$MPGestureReload_IK ReloadAirwalk_PRIMARY   SUPERSHOTGUN_reload			ACT_MP_RELOAD_AIRWALK_PRIMARY  layer_reload_airwalk_arms_SUPERSHOTGUN 0 4 45 51

$sequence Stand_PRIMARY  SUPERSHOTGUN_idle loop alignto a_reference addlayer PRIMARY_aimmatrix_idle 					activity ACT_MP_STAND_PRIMARY 1
$sequence Crouch_PRIMARY SUPERSHOTGUN_crouch_idle loop alignto a_reference addlayer PRIMARY_aimmatrix_crouch_idle  	activity ACT_MP_CROUCH_PRIMARY 1

// swim
$MPAimLayer_lefthandIK PRIMARY_aimmatrix_swim        SUPERSHOTGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon PRIMARY 0 0 0 0 0 0 0 0 SUPERSHOTGUN_SwimN	SUPERSHOTGUN_SwimCenter	PRIMARY_aimmatrix_swim	ACT_MP_SWIM_PRIMARY $infonode$

//SUPERSHOTGUN jump
$sequence a_jumpStart_PRIMARY SUPERSHOTGUN_jump frames 0 25 addlayer PRIMARY_aimmatrix_swim alignto a_reference Z activity ACT_MP_JUMP_START_PRIMARY 1 LX LY
$sequence a_jumpfloat_PRIMARY SUPERSHOTGUN_jump frames 26 189 addlayer PRIMARY_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_PRIMARY 1 LX LY
$sequence jumpLandPose_PRIMARY SUPERSHOTGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_PRIMARY { 
	PRIMARY_jump_land 
	subtract jumpLand_PRIMARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MP_JUMP_LAND_PRIMARY 1 
}

// run
$animation a_runCenter_SUPERSHOTGUN  SUPERSHOTGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_SUPERSHOTGUN SUPERSHOTGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_SUPERSHOTGUN SUPERSHOTGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_SUPERSHOTGUN SUPERSHOTGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_SUPERSHOTGUN SUPERSHOTGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_SUPERSHOTGUN SUPERSHOTGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_SUPERSHOTGUN SUPERSHOTGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_SUPERSHOTGUN SUPERSHOTGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_SUPERSHOTGUN SUPERSHOTGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_PRIMARY {
	a_runsw_SUPERSHOTGUN	a_runS_SUPERSHOTGUN		a_runSE_SUPERSHOTGUN
	a_runW_SUPERSHOTGUN	a_runCenter_SUPERSHOTGUN	a_runE_SUPERSHOTGUN
	a_runNW_SUPERSHOTGUN	a_runN_SUPERSHOTGUN		a_runNE_SUPERSHOTGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer PRIMARY_aimmatrix_run
	activity ACT_MP_RUN_PRIMARY 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_PRIMARY 0 0 0 0 0 0 0 0 SUPERSHOTGUN_crouch_walkN SUPERSHOTGUN_crouch_walkCenter PRIMARY_aimmatrix_crouch_idle ACT_MP_CROUCHWALK_PRIMARY $infoNode$

// airwalk
$sequence Airwalk_PRIMARY "SUPERSHOTGUN_airwalk.dmx" fps 30 loop {
	addlayer PRIMARY_aimmatrix_idle 
	activity ACT_MP_AIRWALK_PRIMARY 1
}
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
// END OF PRIMARY
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
$popd