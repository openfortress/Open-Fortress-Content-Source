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
// Loadout Poses
//-----------------------------------------------------------------------------------
$sequence loadout_idle 				"loadout_idle.dmx" 			 loop fps 24 snap activity ACT_MERC_LOADOUT 1 // Super Shotgun
$sequence loadout_dynamite 			"loadout_dynamite.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_DYNAMITE 1
$sequence loadout_pistol 			"loadout_pistol.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_PISTOL 1
$sequence loadout_pistol_alt 		"loadout_pistol_alt.dmx" 	 loop fps 24 snap activity ACT_MERC_LOADOUT_PISTOL_ALT 1
$sequence loadout_shotgun 			"loadout_shotgun.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_SHOTGUN 1
$sequence loadout_tommygun 			"loadout_tommygun.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_TOMMYGUN 1
$sequence loadout_rocketlauncher 	"loadout_rocketlauncher.dmx" loop fps 24 snap activity ACT_MERC_LOADOUT_ROCKETLAUNCHER 1
$sequence loadout_chainsaw 			"loadout_chainsaw.dmx" 		 loop fps 24 snap activity ACT_MERC_LOADOUT_CHAINSAW 1

//-----------------------------------------------------------------------------------
// Winscreen anims
//-----------------------------------------------------------------------------------
$sequence winpanel_first 	"winpanel_first.dmx"  fps 30 snap activity ACT_MERC_WINPANEL_FIRST  1
$sequence winpanel_second 	"winpanel_second.dmx" fps 30 snap activity ACT_MERC_WINPANEL_SECOND 1
$sequence winpanel_third 	"winpanel_third.dmx"  fps 30 snap activity ACT_MERC_WINPANEL_THIRD  1


//-----------------------------------------------------------------------------------
// Lightning Gun
//-----------------------------------------------------------------------------------
$MPAimLayer_leftHandIK LIGHTNING_GUN_aimmatrix_idle        LIGHTNING_GUN_aimmatrix_idle        $infoNode$
$MPAimLayer_leftHandIK LIGHTNING_GUN_aimmatrix_run         LIGHTNING_GUN_aimmatrix_run         $infoNode$
$MPAimLayer_leftHandIK LIGHTNING_GUN_aimmatrix_crouch_idle LIGHTNING_GUN_aimmatrix_crouch_idle $infoNode$

$MPGestureAttack AttackStand_LIGHTNING_GUN  LIGHTNING_GUN_fire          ACT_MERC_ATTACK_STAND_LIGHTNING_GUN
$MPGestureAttack AttackCrouch_LIGHTNING_GUN LIGHTNING_GUN_fire   		ACT_MERC_ATTACK_CROUCH_LIGHTNING_GUN
$MPGestureAttack AttackSwim_LIGHTNING_GUN   LIGHTNING_GUN_fire     		ACT_MERC_ATTACK_SWIM_LIGHTNING_GUN

$sequence Stand_LIGHTNING_GUN  LIGHTNING_GUN_idle loop alignto a_reference addlayer LIGHTNING_GUN_aimmatrix_idle activity ACT_MERC_STAND_LIGHTNING_GUN 1
$sequence Crouch_LIGHTNING_GUN LIGHTNING_GUN_crouch_idle loop alignto a_reference addlayer LIGHTNING_GUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_LIGHTNING_GUN 1

$MPAimLayer_leftHandIK  LIGHTNING_GUN_aimmatrix_swim         LIGHTNING_GUN_aimmatrix_idle              $infoNode$
$MPswimWithWeapon LIGHTNING_GUN 0 0 0 0 0 0 0 0 LIGHTNING_GUN_SwimN	LIGHTNING_GUN_SwimCenter	LIGHTNING_GUN_aimmatrix_swim	ACT_MERC_SWIM_LIGHTNING_GUN $infonode$

//LIGHTNING_GUN Jump

$sequence a_jumpStart_LIGHTNING_GUN LIGHTNING_GUN_jump frames 0 25 addlayer LIGHTNING_GUN_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_LIGHTNING_GUN 1 LX LY
$sequence a_jumpfloat_LIGHTNING_GUN LIGHTNING_GUN_jump frames 25 44 addlayer LIGHTNING_GUN_aimmatrix_swim loop  fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_LIGHTNING_GUN 1 LX LY
$sequence jumpLandPose_LIGHTNING_GUN LIGHTNING_GUN_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_LIGHTNING_GUN { 
	LIGHTNING_GUN_jump_land 
  ikrule lhand touch "weapon_bone" usesource
	subtract jumpland_LIGHTNING_GUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_LIGHTNING_GUN 1 
}

$animation a_runCenter_LIGHTNING_GUN  LIGHTNING_GUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_LIGHTNING_GUN LIGHTNING_GUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_LIGHTNING_GUN LIGHTNING_GUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_LIGHTNING_GUN LIGHTNING_GUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_LIGHTNING_GUN LIGHTNING_GUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_LIGHTNING_GUN LIGHTNING_GUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_LIGHTNING_GUN LIGHTNING_GUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_LIGHTNING_GUN LIGHTNING_GUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_LIGHTNING_GUN LIGHTNING_GUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_LIGHTNING_GUN {
	a_runsw_LIGHTNING_GUN	a_runS_LIGHTNING_GUN		a_runSE_LIGHTNING_GUN
	a_runW_LIGHTNING_GUN	a_runCenter_LIGHTNING_GUN	a_runE_LIGHTNING_GUN
	a_runNW_LIGHTNING_GUN	a_runN_LIGHTNING_GUN		a_runNE_LIGHTNING_GUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer LIGHTNING_GUN_aimmatrix_run
	activity ACT_MERC_RUN_LIGHTNING_GUN 1
	{ event 7001 7 "right" }
	{ event 7001 17 "left" }
}

// LIGHTNING_GUN crouch walk
$MPCrouchWalkWithWeapon Crouch_Walk_LIGHTNING_GUN        0 0 0 0 0 0 0 0 LIGHTNING_GUN_crouch_walkN        LIGHTNING_GUN_Crouch_walkCenter        LIGHTNING_GUN_aimmatrix_crouch_idle        ACT_MERC_CROUCHWALK_LIGHTNING_GUN $infoNode$

// airwalk
$sequence Airwalk_LIGHTNING_GUN "LIGHTNING_GUN_airwalk.dmx" fps 30 loop {
	addlayer LIGHTNING_GUN_aimmatrix_swim 
	activity ACT_MERC_AIRWALK_LIGHTNING_GUN 1
}

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
$sequence layer_taunt01 "taunt_knuckles.dmx" fps 30 hidden
$sequence taunt01 "taunt_knuckles.dmx" noanimation {
	numframes 109
	blendlayer layer_taunt01  0 5 95 108
 	event AE_CL_BODYGROUP_SET_VALUE 18 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 108 "rocket 0"
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 108
	}{ event 5004 18 "Weapon_Fist.HitHand" }{ event 5004 29 "Taunt.SoldierKnuckleCrack" }{ event 5004 55 "Weapon_Fist.HitHand" }{ event 5004 63 "Taunt.SoldierKnuckleCrack" }

$sequence layer_taunt02 "taunt_soclose.dmx" fps 30 hidden
$sequence taunt02 "taunt_soclose.dmx" noanimation {
	numframes 104
	blendlayer layer_taunt02  0 5 89 104
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 100
	} { event 5004 13 "Taunt.mercenary01ClothesSwipe" } { event 5004 24 "Taunt.mercenary01HeelClick" } { event 5004 80 "Taunt.mercenary01ClothesRustle" }
	
	
$sequence layer_taunt03 "taunt_groovy.dmx" fps 30 hidden
$sequence taunt03 "taunt_groovy.dmx" noanimation {
	numframes 61
	blendlayer layer_taunt03 0 5 52 60
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 60
	}{ event 5004 17 "Taunt.mercenary01ClothesSwipe" }{ event 5004 17 "Taunt.mercenary01HeelClick" }{ event 5004 47 "Taunt.mercenary01ClothesRustle" }{ event 5004 59 "Taunt.mercenary01HelmetJostle" }

$sequence layer_taunt04 "taunt_threat.dmx" fps 30 hidden
$sequence taunt04 "taunt_threat.dmx" noanimation {
	numframes 71
	blendlayer layer_taunt04  0 5 65 70
	event AE_WPN_HIDE 1
	event AE_WPN_UNHIDE 70
	} { event 5004 12 "Taunt.mercenary01ClothesSwipe" } { event 5004 19 "Taunt.mercenary01HeelClick" } { event 5004 35 "Taunt.mercenary01ClothesRustle" } { event 5004 65 "Taunt.mercenary01HeelClick" }
	

$sequence layer_taunt05 "taunt_bombscare.dmx" fps 30 hidden
$sequence taunt05 "taunt_bombscare.dmx" noanimation {
	numframes 246
	blendlayer layer_taunt05  0 5 240 246
	} { event 5004 27 "Taunt.mercenary03FootStomp" } { event 5004 79 "Taunt.mercenary03HelmetHit" } { event 5004 89 "Taunt.mercenary03HelmetHit" } { event 5004 99 "Taunt.mercenary03HelmetHit" } { event 5004 27 "Taunt.mercenary03ClothesRustle" } { event 5004 60 "Taunt.mercenary03ClothesSwipe" } { event 5004 40 "Taunt.mercenary03HelmetJostle" }

//CHARACTER SELECTION

$sequence selectionMenu_all "selectionMenu_Anim01.dmx" fps 30 event AE_CL_PLAYSOUND 20 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 24 "Selection.mercenaryEquipment" event AE_CL_PLAYSOUND 36 "Selection.mercenaryClothesRustle" event AE_CL_PLAYSOUND 47 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 64 "Selection.mercenaryClothesRustle" event AE_CL_PLAYSOUND 73 "Selection.mercenaryLauncherGrab" event AE_CL_PLAYSOUND 94 "Selection.mercenaryLauncherSetStart" event AE_CL_PLAYSOUND 103 "Selection.mercenaryLauncherSetStop" event AE_CL_PLAYSOUND 103 "Selection.mercenaryLauncherHitGround" //hidden localhierarchy "weapon_bone" "bip_foot_R"

// HEADSHOT ANIM

$sequence primary_death_headshot "primary_death_headshot.dmx" ikrule lhand release ikrule rhand release ikrule lfoot release ikrule rfoot release

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

$sequence Crouch_PRIMARY PRIMARY_crouch_idle loop alignto a_reference addlayer PRIMARY_aimmatrix_crouch_idle  activity ACT_MP_CROUCH_PRIMARY 1
$sequence Crouch_SECONDARY SECONDARY_crouch_idle loop alignto a_reference addlayer SECONDARY_aimmatrix_crouch_idle  activity ACT_MP_CROUCH_SECONDARY 1
$sequence Crouch_MELEE MELEE_crouch_idle loop alignto a_reference addlayer MELEE_aimmatrix_crouch_idle  activity ACT_MP_CROUCH_MELEE 1
$sequence Crouch_LOSER LOSER_crouch_idle loop alignto a_reference activity ACT_MP_CROUCH_LOSERSTATE 1


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
$sequence a_jumpStart_melee melee_jump addlayer melee_aimmatrix_swim frames 0 25 alignto a_reference Z activity ACT_MP_JUMP_START_melee 1 LX LY
$sequence a_jumpfloat_melee melee_jump addlayer melee_aimmatrix_swim frames 26 103	loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_melee 1 LX LY
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

$Weightlist PistolMercenarySwimReloadArmsBlend {
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
	
$Weightlist RevolverMercenarySwimReloadArmsBlend {
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
$MPGestureReload_IK ReloadCrouch_PISTOL_AKIMBO    PISTOL_AKIMBO_crouch_reload 	      ACT_MERC_RELOAD_CROUCH_PISTOL_AKIMBO   layer_reload_crouch_arms_PISTOL_AKIMBO 0 4 76 86
$MPGestureReload_IK ReloadSwim_PISTOL_AKIMBO      PISTOL_AKIMBO_swim_reload           ACT_MERC_RELOAD_SWIM_PISTOL_AKIMBO     layer_reload_standing_arms_PISTOL_AKIMBO 0 4 76 86
$MPGestureReload_IK ReloadAirwalk_PISTOL_AKIMBO   PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_AIRWALK_PISTOL_AKIMBO  layer_reload_airwalk_arms_PISTOL_AKIMBO 0 4 76 86

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

//-----------------------------------------------------------------------------------
// Mercenary Pistol
//-----------------------------------------------------------------------------------
$MPWeaponAims		PISTOL_MERCENARY	$infoNode$

$MPGestureAttack AttackStand_PISTOL_MERCENARY  PISTOL_MERCENARY_fire          ACT_MERC_ATTACK_STAND_PISTOL_MERCENARY
$MPGestureAttack AttackCrouch_PISTOL_MERCENARY PISTOL_MERCENARY_crouch_fire   ACT_MERC_ATTACK_CROUCH_PISTOL_MERCENARY
$MPGestureAttack AttackSwim_PISTOL_MERCENARY   PISTOL_MERCENARY_swim_fire     ACT_MERC_ATTACK_SWIM_PISTOL_MERCENARY


$sequence layer_reload_standing_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden

}
$sequence layer_reload_crouching_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden
}

$sequence layer_reload_swimming_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_swim_reload.dmx" weightlist PistolMercenarySwimReloadArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden
}

$sequence layer_reload_airwalk_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_swim_reload.dmx" weightlist PistolMercenarySwimReloadArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden
}

$MPGestureReload_IK ReloadStand_PISTOL_MERCENARY     PISTOL_MERCENARY_reload        				ACT_MERC_RELOAD_STAND_PISTOL_MERCENARY    layer_reload_standing_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$MPGestureReload_IK ReloadCrouch_PISTOL_MERCENARY    PISTOL_MERCENARY_crouch_reload 				ACT_MERC_RELOAD_CROUCH_PISTOL_MERCENARY   layer_reload_crouching_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$MPGestureReload_IK ReloadSwim_PISTOL_MERCENARY      PISTOL_MERCENARY_swim_reload           ACT_MERC_RELOAD_SWIM_PISTOL_MERCENARY     layer_reload_swimming_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$MPGestureReload_IK ReloadAirwalk_PISTOL_MERCENARY   PISTOL_MERCENARY_reload        ACT_MERC_RELOAD_AIRWALK_PISTOL_MERCENARY  layer_reload_airwalk_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$sequence Stand_PISTOL_MERCENARY  PISTOL_MERCENARY_idle loop alignto a_reference addlayer PISTOL_MERCENARY_aimmatrix_idle activity ACT_MERC_STAND_PISTOL_MERCENARY 1
$sequence Crouch_PISTOL_MERCENARY PISTOL_MERCENARY_crouch_idle loop alignto a_reference addlayer PISTOL_MERCENARY_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_PISTOL_MERCENARY 1

//quick swim tests
$MPAimLayer PISTOL_MERCENARY_aimmatrix_swim        PISTOL_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon PISTOL_MERCENARY 0 0 0 0 0 0 0 0 PISTOL_MERCENARY_SwimN	PISTOL_MERCENARY_SwimCenter	PISTOL_MERCENARY_aimmatrix_swim	ACT_MERC_SWIM_PISTOL_MERCENARY $infonode$

//PISTOL_MERCENARY jump
$sequence a_jumpStart_PISTOL_MERCENARY PISTOL_MERCENARY_jump frames 0 25 addlayer PISTOL_MERCENARY_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_PISTOL_MERCENARY 1 LX LY
$sequence a_jumpfloat_PISTOL_MERCENARY PISTOL_MERCENARY_jump frames 26 44 loop addlayer PISTOL_MERCENARY_aimmatrix_swim fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_PISTOL_MERCENARY 1 LX LY
$sequence jumpLandPose_PISTOL_MERCENARY PISTOL_MERCENARY_jump frames 25 25 numframes 30 loop
$sequence jumpLand_PISTOL_MERCENARY { 
	PISTOL_MERCENARY_jump_land 
	subtract jumpLand_PISTOL_MERCENARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_PISTOL_MERCENARY 1 
}

// run PISTOL_MERCENARY
$animation a_runCenter_PISTOL_MERCENARY  PISTOL_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_PISTOL_MERCENARY PISTOL_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_PISTOL_MERCENARY PISTOL_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_PISTOL_MERCENARY PISTOL_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_PISTOL_MERCENARY PISTOL_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_PISTOL_MERCENARY PISTOL_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_PISTOL_MERCENARY PISTOL_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_PISTOL_MERCENARY PISTOL_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_PISTOL_MERCENARY PISTOL_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_PISTOL_MERCENARY {
	a_runsw_PISTOL_MERCENARY	a_runS_PISTOL_MERCENARY		a_runSE_PISTOL_MERCENARY
	a_runW_PISTOL_MERCENARY	a_runCenter_PISTOL_MERCENARY	a_runE_PISTOL_MERCENARY
	a_runNW_PISTOL_MERCENARY	a_runN_PISTOL_MERCENARY		a_runNE_PISTOL_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer PISTOL_MERCENARY_aimmatrix_run
	activity ACT_MERC_RUN_PISTOL_MERCENARY 1
	{ event 7001 7 "right" }
    { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_PISTOL_MERCENARY 0 0 0 0 0 0 0 0 PISTOL_MERCENARY_crouch_walkN PISTOL_MERCENARY_crouch_walkCenter PISTOL_MERCENARY_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_PISTOL_MERCENARY $infoNode$

$sequence Airwalk_PISTOL_MERCENARY "PISTOL_MERCENARY_airwalk.dmx" fps 30 loop {
	addlayer PISTOL_MERCENARY_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_PISTOL_MERCENARY 1
}

//-----------------------------------------------------------------------------------
// SMG Mercenary
//-----------------------------------------------------------------------------------
$Shotgun_WeaponAims_leftHandIK	SMG_MERCENARY	$infoNode$

$MPGestureAttack AttackStand_SMG_MERCENARY  SMG_MERCENARY_fire          ACT_MERC_ATTACK_STAND_SMG_MERCENARY
$MPGestureAttack AttackCrouch_SMG_MERCENARY SMG_MERCENARY_crouch_fire   ACT_MERC_ATTACK_CROUCH_SMG_MERCENARY
$MPGestureAttack AttackSwim_SMG_MERCENARY   SMG_MERCENARY_swim_fire     ACT_MERC_ATTACK_SWIM_SMG_MERCENARY

$sequence layer_reload_standing_arms_SMG_MERCENARY "SMG_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource range 0 10 17 19
	ikrule lhand touch "bip_pelvis" usesource range 23 27 29 32
	ikrule lhand touch "weapon_bone_1" usesource range 32 34 46 50
	hidden
}

$sequence layer_reload_crouching_arms_SMG_MERCENARY "SMG_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource range 0 10 17 19
	ikrule lhand touch "bip_pelvis" usesource range 23 27 29 32
	ikrule lhand touch "weapon_bone_1" usesource range 32 34 46 50
	hidden
}

$MPGestureReload_IK ReloadStand_SMG_MERCENARY  SMG_MERCENARY_reload ACT_MERC_RELOAD_STAND_SMG_MERCENARY 	layer_reload_standing_arms_SMG_MERCENARY 0 5 50 60
$MPGestureReload_IK ReloadAirwalk_SMG_MERCENARY  SMG_MERCENARY_reload ACT_MERC_RELOAD_AIRWALK_SMG_MERCENARY 	layer_reload_standing_arms_SMG_MERCENARY 0 5 50 60
$MPGestureReload_IK ReloadCrouch_SMG_MERCENARY SMG_MERCENARY_reload ACT_MERC_RELOAD_CROUCH_SMG_MERCENARY 	layer_reload_crouching_arms_SMG_MERCENARY 0 5 50 60
$MPGestureReload_IK ReloadSwim_SMG_MERCENARY   SMG_MERCENARY_reload ACT_MERC_RELOAD_SWIM_SMG_MERCENARY 	layer_reload_standing_arms_SMG_MERCENARY 0 5 50 60

$sequence Stand_SMG_MERCENARY  SMG_MERCENARY_idle loop addlayer SMG_MERCENARY_aimmatrix_idle activity ACT_MERC_STAND_SMG_MERCENARY 1
$sequence Crouch_SMG_MERCENARY SMG_MERCENARY_crouch_idle loop addlayer SMG_MERCENARY_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_SMG_MERCENARY 1

$MPAimLayer_lefthandIK_smg  SMG_MERCENARY_aimmatrix_swim        SMG_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon SMG_MERCENARY 0 0 0 0 0 0 0 0 SMG_MERCENARY_SwimN	SMG_MERCENARY_SwimCenter	SMG_MERCENARY_aimmatrix_swim	ACT_MERC_SWIM_SMG_MERCENARY $infonode$

//SMG_MERCENARY Jump

$sequence a_jumpStart_SMG_MERCENARY SMG_MERCENARY_jump frames 0 25 addlayer SMG_MERCENARY_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_SMG_MERCENARY 1 LX LY
$sequence a_jumpfloat_SMG_MERCENARY SMG_MERCENARY_jump frames 25 44 addlayer SMG_MERCENARY_aimmatrix_swim loop fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_SMG_MERCENARY 1 LX LY
$sequence jumpLandPose_SMG_MERCENARY SMG_MERCENARY_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_SMG_MERCENARY { 
	SMG_MERCENARY_jump_land 
	subtract jumpland_SMG_MERCENARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_SMG_MERCENARY 1 
}

// smg_mercenary run

$animation a_runCenter_SMG_MERCENARY  SMG_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_runS_SMG_MERCENARY SMG_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSE_SMG_MERCENARY SMG_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runE_SMG_MERCENARY SMG_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNE_SMG_MERCENARY SMG_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runN_SMG_MERCENARY SMG_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNW_SMG_MERCENARY SMG_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runW_SMG_MERCENARY SMG_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSW_SMG_MERCENARY SMG_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$sequence Run_SMG_MERCENARY {
	a_runsw_SMG_MERCENARY	a_runS_SMG_MERCENARY		a_runSE_SMG_MERCENARY
	a_runW_SMG_MERCENARY	a_runCenter_SMG_MERCENARY	a_runE_SMG_MERCENARY
	a_runNW_SMG_MERCENARY	a_runN_SMG_MERCENARY		a_runNE_SMG_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer SMG_MERCENARY_aimmatrix_run
	activity ACT_MERC_RUN_SMG_MERCENARY 1
	{ event 7001 7 "right" }
	{ event 7001 16 "left" }
}

// smg mercenary crouch walk
$MPCrouchWalkWithWeapon Crouch_Walk_SMG_MERCENARY        0 0 0 0 0 0 0 0 SMG_MERCENARY_crouch_walkN        SMG_MERCENARY_Crouch_walkCenter        SMG_MERCENARY_aimmatrix_crouch_idle        ACT_MERC_CROUCHWALK_SMG_MERCENARY $infoNode$

$sequence Airwalk_SMG_MERCENARY "SMG_MERCENARY_airwalk.dmx" fps 30 loop {
    addlayer SMG_MERCENARY_aimmatrix_swim
	activity ACT_MERC_AIRWALK_SMG_MERCENARY 1
}

//-----------------------------------------------------------------------------------
// Flamethrower
//-----------------------------------------------------------------------------------
$MPAimLayer_leftHandIK FLAMETHROWER_aimmatrix_idle        FLAMETHROWER_aimmatrix_idle        $infoNode$
$MPAimLayer_leftHandIK FLAMETHROWER_aimmatrix_run         FLAMETHROWER_aimmatrix_run         $infoNode$
$MPAimLayer_leftHandIK FLAMETHROWER_aimmatrix_walk        FLAMETHROWER_aimmatrix_walk        $infoNode$
$MPAimLayer_leftHandIK FLAMETHROWER_aimmatrix_crouch_idle FLAMETHROWER_aimmatrix_crouch_idle $infoNode$

$sequence FLAMETHROWER_fire FLAMETHROWER_fire

//crouch fire
$sequence AttackCrouch_FLAMETHROWER {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 6 51
        loop
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_ATTACK_CROUCH_FLAMETHROWER 1
}

$sequence AttackCrouch_FLAMETHROWER_spoolup {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 0 6
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_ATTACK_CROUCH_PREFIRE 1
}

$sequence AttackCrouch_FLAMETHROWER_spooldown {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 51 61
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_ATTACK_CROUCH_POSTFIRE 1
}

// uncomment when airblast is added
//$sequence SECONDARYAttackCrouch_FLAMETHROWER {
//	FLAMETHROWER_altFire
//	subtract FLAMETHROWER_fire 0
//	frames 0 30
//	delta
//	activity ACT_MERC_ATTACK_CROUCH_SECONDARYFIRE  1
//}


//stand fire
$sequence AttackStand_FLAMETHROWER {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 6 51
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_ATTACK_STAND_FLAMETHROWER 1
}

$sequence AttackStand_FLAMETHROWER_spoolup {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 0 6
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_ATTACK_STAND_PREFIRE 1
}

$sequence AttackStand_FLAMETHROWER_spooldown {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 51 61
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_ATTACK_STAND_POSTFIRE 1
}

// uncomment when airblast is added
//$sequence SECONDARYAttackStand_FLAMETHROWER {
//	FLAMETHROWER_altFire
//	subtract FLAMETHROWER_fire 0
//	frames 0 30
//	delta
//	activity ACT_MERC_ATTACK_STAND_SECONDARYFIRE 1
//}


//swim fire
$sequence AttackSwim_FLAMETHROWER {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 2 47
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_ATTACK_SWIM_FLAMETHROWER 1
}

$sequence AttackSwim_FLAMETHROWER_spoolup {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 0 3
	delta
	activity ACT_MERC_ATTACK_SWIM_PREFIRE 1
}

$sequence AttackSwim_FLAMETHROWER_spooldown {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 47 57
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_ATTACK_SWIM_POSTFIRE 1
}

// uncomment when airblast is added
//$sequence SECONDARYAttackSwim_FLAMETHROWER {
//	FLAMETHROWER_altFire
//	subtract FLAMETHROWER_fire 0
//	frames 0 30
//	delta
//	weightlist UpperbodyBlend
//	activity ACT_MERC_ATTACK_SWIM_SECONDARYFIRE 1
//}

$sequence Stand_FLAMETHROWER  FLAMETHROWER_idle loop alignto a_reference addlayer FLAMETHROWER_aimmatrix_idle activity ACT_MERC_STAND_FLAMETHROWER 1
$sequence Crouch_FLAMETHROWER FLAMETHROWER_crouch_idle loop alignto a_reference addlayer FLAMETHROWER_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_FLAMETHROWER 1

$MPAimLayer_leftHandIK  FLAMETHROWER_aimmatrix_swim         FLAMETHROWER_aimmatrix_idle              $infoNode$
$MPswimWithWeapon FLAMETHROWER 0 0 0 0 0 0 0 0 FLAMETHROWER_SwimN	FLAMETHROWER_SwimCenter	FLAMETHROWER_aimmatrix_swim	ACT_MERC_SWIM_FLAMETHROWER $infonode$

//FLAMETHROWER Jump

$sequence a_jumpStart_FLAMETHROWER FLAMETHROWER_jump frames 0 25 addlayer FLAMETHROWER_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_FLAMETHROWER 1 LX LY
$sequence a_jumpfloat_FLAMETHROWER FLAMETHROWER_jump frames 25 44 addlayer FLAMETHROWER_aimmatrix_swim loop  fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_FLAMETHROWER 1 LX LY
$sequence jumpLandPose_FLAMETHROWER FLAMETHROWER_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_FLAMETHROWER { 
	FLAMETHROWER_jump_land 
  ikrule lhand touch "weapon_bone" usesource
	subtract jumpland_FLAMETHROWER 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_FLAMETHROWER 1 
}

$animation a_runCenter_FLAMETHROWER  FLAMETHROWER_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_FLAMETHROWER FLAMETHROWER_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_FLAMETHROWER FLAMETHROWER_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_FLAMETHROWER FLAMETHROWER_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_FLAMETHROWER FLAMETHROWER_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_FLAMETHROWER FLAMETHROWER_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_FLAMETHROWER FLAMETHROWER_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_FLAMETHROWER FLAMETHROWER_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_FLAMETHROWER FLAMETHROWER_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_FLAMETHROWER {
	a_runsw_FLAMETHROWER	a_runS_FLAMETHROWER		a_runSE_FLAMETHROWER
	a_runW_FLAMETHROWER	a_runCenter_FLAMETHROWER	a_runE_FLAMETHROWER
	a_runNW_FLAMETHROWER	a_runN_FLAMETHROWER		a_runNE_FLAMETHROWER
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer FLAMETHROWER_aimmatrix_run
	activity ACT_MERC_RUN_FLAMETHROWER 1
	{ event 7001 7 "right" }
	{ event 7001 17 "left" }
}

// flamethrower crouch walk
$MPCrouchWalkWithWeapon Crouch_Walk_FLAMETHROWER        0 0 0 0 0 0 0 0 FLAMETHROWER_crouch_walkN        FLAMETHROWER_Crouch_walkCenter        FLAMETHROWER_aimmatrix_crouch_idle        ACT_MERC_CROUCHWALK_FLAMETHROWER $infoNode$

// airwalk
$sequence Airwalk_FLAMETHROWER "FLAMETHROWER_airwalk.dmx" fps 30 loop {
	addlayer FLAMETHROWER_aimmatrix_swim 
	activity ACT_MERC_AIRWALK_FLAMETHROWER 1
}

//-----------------------------------------------------------------------------------
// Revolver Mercenary
//-----------------------------------------------------------------------------------

$MPWeaponAims		REVOLVER_MERCENARY	$infoNode$

$MPGestureAttack AttackStand_REVOLVER_MERCENARY  REVOLVER_MERCENARY_fire          ACT_MERC_ATTACK_STAND_REVOLVER_MERCENARY
$MPGestureAttack AttackCrouch_REVOLVER_MERCENARY REVOLVER_MERCENARY_crouch_fire   ACT_MERC_ATTACK_CROUCH_REVOLVER_MERCENARY
$MPGestureAttack AttackSwim_REVOLVER_MERCENARY   REVOLVER_MERCENARY_swim_fire     ACT_MERC_ATTACK_SWIM_REVOLVER_MERCENARY

$sequence layer_reload_standing_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden

}
$sequence layer_reload_crouching_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden
}

$sequence layer_reload_swimming_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_swim_reload.dmx" weightlist RevolverMercenarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden
}

$sequence layer_reload_airwalk_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_swim_reload.dmx" weightlist RevolverMercenarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden
}

$MPGestureReload_IK ReloadStand_REVOLVER_MERCENARY     REVOLVER_MERCENARY_reload        				ACT_MERC_RELOAD_STAND_REVOLVER_MERCENARY    layer_reload_standing_arms_REVOLVER_MERCENARY 0 6 50 60
$MPGestureReload_IK ReloadCrouch_REVOLVER_MERCENARY    REVOLVER_MERCENARY_crouch_reload 				ACT_MERC_RELOAD_CROUCH_REVOLVER_MERCENARY   layer_reload_crouching_arms_REVOLVER_MERCENARY 0 6 50 60
$MPGestureReload_IK ReloadSwim_REVOLVER_MERCENARY      REVOLVER_MERCENARY_swim_reload           ACT_MERC_RELOAD_SWIM_REVOLVER_MERCENARY     layer_reload_swimming_arms_REVOLVER_MERCENARY 0 6 50 60
$MPGestureReload_IK ReloadAirwalk_REVOLVER_MERCENARY   REVOLVER_MERCENARY_reload        ACT_MERC_RELOAD_AIRWALK_REVOLVER_MERCENARY  layer_reload_airwalk_arms_REVOLVER_MERCENARY 0 6 50 60

$sequence Stand_REVOLVER_MERCENARY  REVOLVER_MERCENARY_idle loop alignto a_reference addlayer REVOLVER_MERCENARY_aimmatrix_idle activity ACT_MERC_STAND_REVOLVER_MERCENARY 1
$sequence Crouch_REVOLVER_MERCENARY REVOLVER_MERCENARY_crouch_idle loop alignto a_reference addlayer REVOLVER_MERCENARY_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_REVOLVER_MERCENARY 1

// swim
$MPAimLayer REVOLVER_MERCENARY_aimmatrix_swim        REVOLVER_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon REVOLVER_MERCENARY 0 0 0 0 0 0 0 0 REVOLVER_MERCENARY_SwimN	REVOLVER_MERCENARY_SwimCenter	REVOLVER_MERCENARY_aimmatrix_swim	ACT_MERC_SWIM_REVOLVER_MERCENARY $infonode$

//REVOLVER_MERCENARY jump
$sequence a_jumpStart_REVOLVER_MERCENARY REVOLVER_MERCENARY_jump frames 0 25 addlayer REVOLVER_MERCENARY_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_REVOLVER_MERCENARY 1 LX LY
$sequence a_jumpfloat_REVOLVER_MERCENARY REVOLVER_MERCENARY_jump frames 26 189 addlayer REVOLVER_MERCENARY_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_REVOLVER_MERCENARY 1 LX LY
$sequence jumpLandPose_REVOLVER_MERCENARY REVOLVER_MERCENARY_jump frames 25 25 numframes 30 loop
$sequence jumpLand_REVOLVER_MERCENARY { 
	REVOLVER_MERCENARY_jump_land 
	subtract jumpLand_REVOLVER_MERCENARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_REVOLVER_MERCENARY 1 
}

// run
$animation a_runCenter_REVOLVER_MERCENARY  REVOLVER_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_REVOLVER_MERCENARY REVOLVER_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_REVOLVER_MERCENARY REVOLVER_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_REVOLVER_MERCENARY REVOLVER_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_REVOLVER_MERCENARY REVOLVER_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_REVOLVER_MERCENARY REVOLVER_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_REVOLVER_MERCENARY REVOLVER_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_REVOLVER_MERCENARY REVOLVER_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_REVOLVER_MERCENARY REVOLVER_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_REVOLVER_MERCENARY {
	a_runsw_REVOLVER_MERCENARY	a_runS_REVOLVER_MERCENARY		a_runSE_REVOLVER_MERCENARY
	a_runW_REVOLVER_MERCENARY	a_runCenter_REVOLVER_MERCENARY	a_runE_REVOLVER_MERCENARY
	a_runNW_REVOLVER_MERCENARY	a_runN_REVOLVER_MERCENARY		a_runNE_REVOLVER_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer REVOLVER_MERCENARY_aimmatrix_run
	activity ACT_MERC_RUN_REVOLVER_MERCENARY 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_REVOLVER_MERCENARY 0 0 0 0 0 0 0 0 REVOLVER_MERCENARY_crouch_walkN REVOLVER_MERCENARY_crouch_walkCenter REVOLVER_MERCENARY_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_REVOLVER_MERCENARY $infoNode$

// airwalk
$sequence Airwalk_REVOLVER_MERCENARY "REVOLVER_MERCENARY_airwalk.dmx" fps 30 loop {
	addlayer REVOLVER_MERCENARY_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_REVOLVER_MERCENARY 1
}

//-----------------------------------------------------------------------------------
// Supershotgun
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		SUPERSHOTGUN	$infoNode$

$MPGestureAttack AttackStand_SUPERSHOTGUN  SUPERSHOTGUN_fire          ACT_MERC_ATTACK_STAND_SUPERSHOTGUN
$MPGestureAttack AttackCrouch_SUPERSHOTGUN SUPERSHOTGUN_crouch_fire   ACT_MERC_ATTACK_CROUCH_SUPERSHOTGUN
$MPGestureAttack AttackSwim_SUPERSHOTGUN   SUPERSHOTGUN_swim_fire     ACT_MERC_ATTACK_SWIM_SUPERSHOTGUN

$sequence layer_reload_standing_arms_SUPERSHOTGUN "SUPERSHOTGUN_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden

}
$sequence layer_reload_crouching_arms_SUPERSHOTGUN "SUPERSHOTGUN_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_swimming_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_airwalk_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$MPGestureReload_IK ReloadStand_SUPERSHOTGUN     SUPERSHOTGUN_reload        				ACT_MERC_RELOAD_STAND_SUPERSHOTGUN    layer_reload_standing_arms_SUPERSHOTGUN 0 4 55 67
$MPGestureReload_IK ReloadCrouch_SUPERSHOTGUN    SUPERSHOTGUN_crouch_reload 				ACT_MERC_RELOAD_CROUCH_SUPERSHOTGUN   layer_reload_crouching_arms_SUPERSHOTGUN 0 4 55 67
$MPGestureReload_IK ReloadSwim_SUPERSHOTGUN      SUPERSHOTGUN_swim_reload           ACT_MERC_RELOAD_SWIM_SUPERSHOTGUN     layer_reload_swimming_arms_SUPERSHOTGUN 0 4 55 67
$MPGestureReload_IK ReloadAirwalk_SUPERSHOTGUN   SUPERSHOTGUN_reload        ACT_MERC_RELOAD_AIRWALK_SUPERSHOTGUN  layer_reload_airwalk_arms_SUPERSHOTGUN 0 4 55 67

$sequence Stand_SUPERSHOTGUN  SUPERSHOTGUN_idle loop alignto a_reference addlayer SUPERSHOTGUN_aimmatrix_idle activity ACT_MERC_STAND_SUPERSHOTGUN 1
$sequence Crouch_SUPERSHOTGUN SUPERSHOTGUN_crouch_idle loop alignto a_reference addlayer SUPERSHOTGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_SUPERSHOTGUN 1

// swim
$MPAimLayer_lefthandIK SUPERSHOTGUN_aimmatrix_swim        SUPERSHOTGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon SUPERSHOTGUN 0 0 0 0 0 0 0 0 SUPERSHOTGUN_SwimN	SUPERSHOTGUN_SwimCenter	SUPERSHOTGUN_aimmatrix_swim	ACT_MERC_SWIM_SUPERSHOTGUN $infonode$

//SUPERSHOTGUN jump
$sequence a_jumpStart_SUPERSHOTGUN SUPERSHOTGUN_jump frames 0 25 addlayer SUPERSHOTGUN_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_SUPERSHOTGUN 1 LX LY
$sequence a_jumpfloat_SUPERSHOTGUN SUPERSHOTGUN_jump frames 26 189 addlayer SUPERSHOTGUN_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_SUPERSHOTGUN 1 LX LY
$sequence jumpLandPose_SUPERSHOTGUN SUPERSHOTGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_SUPERSHOTGUN { 
	SUPERSHOTGUN_jump_land 
	subtract jumpLand_SUPERSHOTGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_SUPERSHOTGUN 1 
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
$sequence Run_SUPERSHOTGUN {
	a_runsw_SUPERSHOTGUN	a_runS_SUPERSHOTGUN		a_runSE_SUPERSHOTGUN
	a_runW_SUPERSHOTGUN	a_runCenter_SUPERSHOTGUN	a_runE_SUPERSHOTGUN
	a_runNW_SUPERSHOTGUN	a_runN_SUPERSHOTGUN		a_runNE_SUPERSHOTGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer SUPERSHOTGUN_aimmatrix_run
	activity ACT_MERC_RUN_SUPERSHOTGUN 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_SUPERSHOTGUN 0 0 0 0 0 0 0 0 SUPERSHOTGUN_crouch_walkN SUPERSHOTGUN_crouch_walkCenter SUPERSHOTGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_SUPERSHOTGUN $infoNode$

// airwalk
$sequence Airwalk_SUPERSHOTGUN "SUPERSHOTGUN_airwalk.dmx" fps 30 loop {
	addlayer SUPERSHOTGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_SUPERSHOTGUN 1
}

//-----------------------------------------------------------------------------------
// Railgun (also re-used for sniper rifle)
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK	RAILGUN	$infoNode$
$MPAimLayer_leftHandIK  RAILGUN_aimmatrix_deployed        	RAILGUN_aimmatrix_deployed      $infoNode$
$MPAimLayer_leftHandIK  RAILGUN_crouch_aimmatrix_deployed	  RAILGUN_crouch_aimmatrix_deployed	$infoNode$
$MPGestureAttack AttackStand_RAILGUN   RAILGUN_fire         ACT_MERC_ATTACK_STAND_RAILGUN  IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackCrouch_RAILGUN  RAILGUN_crouch_fire  ACT_MERC_ATTACK_CROUCH_RAILGUN IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackSwim_RAILGUN    RAILGUN_fire         ACT_MERC_ATTACK_SWIM_RAILGUN   IKrule lhand touch "weapon_bone" usesource

$MPGestureAttack AttackCrouch_RAILGUN_DEPLOYED  RAILGUN_DEPLOYED_crouch_fire   ACT_MERC_ATTACK_CROUCH_RAILGUN_DEPLOYED
$MPGestureAttack AttackSwim_RAILGUN_DEPLOYED    RAILGUN_DEPLOYED_fire          ACT_MERC_ATTACK_SWIM_RAILGUN_DEPLOYED
$MPGestureReload ReloadStand_RAILGUN_DEPLOYED   RAILGUN_idle_deployed          ACT_MERC_RELOAD_STAND_RAILGUN_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadCrouch_RAILGUN_DEPLOYED  RAILGUN_idle_deployed          ACT_MERC_RELOAD_CROUCH_RAILGUN_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadSwim_RAILGUN_DEPLOYED    RAILGUN_idle_deployed          ACT_MERC_RELOAD_SWIM_RAILGUN_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0

$MPGestureReload ReloadStand_RAILGUN  RAILGUN_idle        ACT_MERC_RELOAD_STAND_RAILGUN IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadCrouch_RAILGUN  RAILGUN_idle ACT_MERC_RELOAD_CROUCH_RAILGUN IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadSwim_RAILGUN   RAILGUN_idle   ACT_MERC_RELOAD_SWIM_RAILGUN IKrule lhand touch "weapon_bone" usesource frames 0 0

$sequence attackstand_RAILGUN_deployed_fire {
	RAILGUN_deployed_fire
	subtract attackstand_RAILGUN_deployed_fire 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MERC_ATTACK_STAND_RAILGUN_DEPLOYED 1 
}

$sequence Stand_RAILGUN  RAILGUN_idle loop addlayer RAILGUN_aimmatrix_idle activity ACT_MERC_STAND_RAILGUN 1
$sequence Crouch_RAILGUN RAILGUN_crouch_idle loop addlayer RAILGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_RAILGUN 1

//RAILGUN Jump

$sequence a_jumpStart_RAILGUN RAILGUN_jump addlayer RAILGUN_aimmatrix_idle frames 0 25 alignto a_reference Z activity ACT_MERC_JUMP_START_RAILGUN 1 LX LY
$sequence a_jumpfloat_RAILGUN RAILGUN_jump addlayer RAILGUN_aimmatrix_idle frames 26 66 loop  fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_RAILGUN 1 LX LY
$sequence jumpLandPose_RAILGUN RAILGUN_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_RAILGUN { 
	RAILGUN_jump_land 
	subtract jumpland_RAILGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_RAILGUN 1 
}


$MPAimLayer_lefthandIK  RAILGUN_aimmatrix_swim        RAILGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon RAILGUN 0 0 0 0 0 0 0 0 RAILGUN_SwimN	RAILGUN_SwimCenter	RAILGUN_aimmatrix_swim	ACT_MERC_SWIM_RAILGUN $infonode$
$MPswimWithWeapon RAILGUN_deployed 0 0 0 0 0 0 0 0 RAILGUN_deployed_SwimN RAILGUN_deployed_SwimCenter	RAILGUN_aimmatrix_deployed	ACT_MERC_RAILGUN_SWIM_DEPLOYED $infonode$

// deployed

$sequence Crouch_Deployed_RAILGUN  RAILGUN_crouch_idle_deployed {
	loop
	addlayer RAILGUN_crouch_aimmatrix_deployed
	activity ACT_MERC_CROUCH_RAILGUN_DEPLOYED_IDLE 1
}

$sequence Stand_Deployed_RAILGUN  RAILGUN_idle_deployed {
	loop
	addlayer RAILGUN_aimmatrix_deployed
	activity ACT_MERC_RAILGUN_DEPLOYED_IDLE 1
}
$animation a_DeployedCenter_RAILGUN  RAILGUN_DeployedCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedS_RAILGUN RAILGUN_DeployedS blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 25
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedSE_RAILGUN RAILGUN_DeployedSE blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 18
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedE_RAILGUN RAILGUN_DeployedE blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedNE_RAILGUN RAILGUN_DeployedNE blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 1
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedN_RAILGUN RAILGUN_DeployedN blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 8
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedNW_RAILGUN RAILGUN_DeployedNW blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 0
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedW_RAILGUN RAILGUN_DeployedW blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 15
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedSW_RAILGUN RAILGUN_DeployedSW blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 0
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$sequence RAILGUN_Deployed_Movement {
	a_Deployedsw_RAILGUN	a_DeployedS_RAILGUN		a_DeployedSE_RAILGUN
	a_DeployedW_RAILGUN	a_DeployedCenter_RAILGUN		a_DeployedE_RAILGUN
	a_DeployedNW_RAILGUN	a_DeployedN_RAILGUN		a_DeployedNE_RAILGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer RAILGUN_aimmatrix_deployed
	activity ACT_MERC_RAILGUN_DEPLOYED 1
}

$MPCrouchWalkWithWeapon Deployed_Crouch_Walk_RAILGUN        0 0 0 0 0 0 0 0 RAILGUN_deployed_crouch_walkN        RAILGUN_deployed_Crouch_walkCenter        RAILGUN_crouch_aimmatrix_deployed        ACT_MP_CROUCHWALK_DEPLOYED $infoNode$

// run

$animation a_runCenter_RAILGUN  RAILGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_RAILGUN RAILGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 13
}
$animation a_runSE_RAILGUN RAILGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
}
$animation a_runE_RAILGUN RAILGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
}
$animation a_runNE_RAILGUN RAILGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
}
$animation a_runN_RAILGUN RAILGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
}
$animation a_runNW_RAILGUN RAILGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
}
$animation a_runW_RAILGUN RAILGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
}
$animation a_runSW_RAILGUN RAILGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 13
}
$sequence Run_RAILGUN {
	a_runsw_RAILGUN	a_runS_RAILGUN		a_runSE_RAILGUN
	a_runW_RAILGUN	a_runCenter_RAILGUN	a_runE_RAILGUN
	a_runNW_RAILGUN	a_runN_RAILGUN		a_runNE_RAILGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer RAILGUN_aimmatrix_run
	activity ACT_MERC_RUN_RAILGUN 1
	{ event 7001 6 "right" }
	{ event 7001 15 "left" }
}

// crouch walk

$MPCrouchWalkWithWeapon Crouch_Walk_RAILGUN 0 0 0 0 0 0 0 0 RAILGUN_crouch_walkN RAILGUN_crouch_walkCenter RAILGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_RAILGUN $infoNode$

// airwalk

$sequence Airwalk_RAILGUN "RAILGUN_airwalk.dmx" fps 30 loop {
    addlayer RAILGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_RAILGUN 1
}

// must be at the end of file
$popd