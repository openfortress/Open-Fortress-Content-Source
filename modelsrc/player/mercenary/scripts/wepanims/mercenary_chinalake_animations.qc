// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_CHINA_LAKE.mdl

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
// Weightlists
//-----------------------------------------------------------------------------------	
$weightlist CHINA_LAKEMercStandArmsBlend {
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
// CHINA_LAKE
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		CHINA_LAKE	$infoNode$

$MPGestureAttackCHINA_LAKE AttackStand_CHINA_LAKE  CHINA_LAKE_fire          ACT_MERC_ATTACK_STAND_CHINA_LAKE weightlist CHINA_LAKEMercStandArmsBlend 
$MPGestureAttackCHINA_LAKE AttackCrouch_CHINA_LAKE CHINA_LAKE_crouch_fire   ACT_MERC_ATTACK_CROUCH_CHINA_LAKE weightlist CHINA_LAKEMercStandArmsBlend 
$MPGestureAttackCHINA_LAKE AttackSwim_CHINA_LAKE   CHINA_LAKE_swim_fire     ACT_MERC_ATTACK_SWIM_CHINA_LAKE weightlist CHINA_LAKEMercStandArmsBlend 

$MPGestureReload ReloadSwim_CHINA_LAKE   CHINA_LAKE_swim_reload   ACT_MERC_RELOAD_SWIM_CHINA_LAKE

$sequence layer_reload_standing_arms_merc "CHINA_LAKE_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	//ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	//ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	//ikrule rhand touch "bip_pelvis" usesource range 0 9 9 11
	//ikrule rhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$animation a_reload_CHINA_LAKE_startpose CHINA_LAKE_reload frames 0 0
$animation a_reload_crouch_CHINA_LAKE_startpose CHINA_LAKE_crouch_reload frames 0 0

$sequence layer_reload_standing_CHINA_LAKE_arms "CHINA_LAKE_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	//ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	//ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	//ikrule rhand touch "bip_pelvis" usesource range 0 9 9 11
	//ikrule rhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$sequence ReloadStand_CHINA_LAKE {
	CHINA_LAKE_reload
	frames 0 20
	numframes 21
	fps 30
	subtract ReloadStand_CHINA_LAKE 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_CHINA_LAKE_arms 0 4 21 21
 	activity ACT_MERC_RELOAD_STAND_CHINA_LAKE 1
}

$sequence layer_reload_standing_CHINA_LAKE_arms_loop "CHINA_LAKE_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_CHINA_LAKE_loop {
	CHINA_LAKE_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_CHINA_LAKE_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_CHINA_LAKE_arms_loop
 	activity ACT_MERC_RELOAD_STAND_CHINA_LAKE_LOOP 1
}

$sequence layer_reload_standing_CHINA_LAKE_arms_end "CHINA_LAKE_reload.dmx" weightlist ArmsBlend {
	frames 40 63
	numframes 23
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_CHINA_LAKE_end {
	CHINA_LAKE_reload
	frames 40 63
	numframes 23
	fps 30
	subtract a_reload_CHINA_LAKE_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_CHINA_LAKE_arms_end 0 0 8 23 spline
 	activity ACT_MERC_RELOAD_STAND_CHINA_LAKE_END 1
}


//crouch reload
$sequence layer_reload_crouch_CHINA_LAKE_arms "CHINA_LAKE_crouch_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	//ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	//ikrule lhand touch "weapon_bone_1" usesource range 11 15 21 21
	//localhierarchy "weapon_bone_1" "bip_hand_l"
	hidden
}

$sequence ReloadCrouch_CHINA_LAKE {
	CHINA_LAKE_crouch_reload
	frames 0 20
	numframes 20
	fps 30
	subtract a_reload_crouch_CHINA_LAKE_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_CHINA_LAKE_arms 0 4 20 20
 	activity ACT_MERC_RELOAD_CROUCH_CHINA_LAKE 1
}

$sequence layer_reload_crouch_CHINA_LAKE_arms_loop "CHINA_LAKE_crouch_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_CHINA_LAKE_loop {
	CHINA_LAKE_crouch_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_crouch_CHINA_LAKE_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_crouch_CHINA_LAKE_arms_loop
 	activity ACT_MERC_RELOAD_CROUCH_CHINA_LAKE_LOOP 1
}

$sequence layer_reload_crouch_CHINA_LAKE_arms_end "CHINA_LAKE_crouch_reload.dmx" weightlist ArmsBlend {
	frames 40 63
	numframes 23
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_CHINA_LAKE_end {
	CHINA_LAKE_crouch_reload
	frames 40 63
	numframes 23
	fps 30
	subtract a_reload_crouch_CHINA_LAKE_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_CHINA_LAKE_arms_end 0 0 8 23
 	activity ACT_MERC_RELOAD_CROUCH_CHINA_LAKE_END 1
}


//airwalk reloads
$sequence a_CHINA_LAKE_reload_airwalk 	CHINA_LAKE_reload
$sequence layer_reload_arms_CHINA_LAKE "CHINA_LAKE_reload.dmx" frames 0 20 weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence CHINA_LAKE_reload_airwalk {
	"CHINA_LAKE_reload.dmx"
	frames 0 20
	subtract a_CHINA_LAKE_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_CHINA_LAKE 0 10 21 21
 	activity ACT_MERC_RELOAD_AIRWALK_CHINA_LAKE 1
}

$sequence layer_reload_arms_CHINA_LAKE_loop "CHINA_LAKE_reload.dmx" frames 20 40 weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence CHINA_LAKE_reload_airwalk_loop {
	"CHINA_LAKE_reload.dmx"
	 frames 20 40
	 subtract a_CHINA_LAKE_reload_airwalk 0
	 delta
	 ikrule lhand release
	 ikrule rhand release
	 iklock rfoot 1 0 iklock lfoot 1 0
 	 blendlayer layer_reload_arms_CHINA_LAKE_loop -2 -2 21 21
 	 activity ACT_MERC_RELOAD_AIRWALK_CHINA_LAKE_LOOP 1
}


$sequence layer_reload_arms_CHINA_LAKE_end "CHINA_LAKE_reload.dmx" frames 40 55 weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence CHINA_LAKE_reload_airwalk_end {
	"CHINA_LAKE_reload.dmx"
	frames 40 63
	subtract a_CHINA_LAKE_reload_airwalk 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_CHINA_LAKE_end -2 -2 1 7
 	activity ACT_MERC_RELOAD_AIRWALK_CHINA_LAKE_END 1
}

//Swim reloads
$sequence a_CHINA_LAKE_reload_swim 	CHINA_LAKE_reload
$sequence layer_reload_arms_CHINA_LAKE_swim "CHINA_LAKE_reload.dmx" frames 0 20 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence CHINA_LAKE_reload_swim {
	"CHINA_LAKE_reload.dmx"
	frames 0 20
	subtract a_CHINA_LAKE_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_CHINA_LAKE_swim 0 10 21 21
 	activity ACT_MERC_RELOAD_SWIM_CHINA_LAKE 1
}

$sequence layer_reload_arms_CHINA_LAKE_loop_swim "CHINA_LAKE_reload.dmx" frames 20 40 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence CHINA_LAKE_reload_swim_loop {
	"CHINA_LAKE_reload.dmx"
	frames 20 40
	subtract a_CHINA_LAKE_reload_swim 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_CHINA_LAKE_loop_swim -2 -2 21 21
 	activity ACT_MERC_RELOAD_SWIM_CHINA_LAKE_LOOP 1
}


$sequence layer_reload_arms_CHINA_LAKE_end_swim "CHINA_LAKE_reload.dmx" frames 40 55 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence CHINA_LAKE_reload_swim_end {
	"CHINA_LAKE_reload.dmx"
	frames 40 63
	subtract a_CHINA_LAKE_reload_swim 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_CHINA_LAKE_end_swim -2 -2 1 7
 	activity ACT_MERC_RELOAD_SWIM_CHINA_LAKE_END 1
}

$sequence Stand_CHINA_LAKE  CHINA_LAKE_idle loop alignto a_reference addlayer CHINA_LAKE_aimmatrix_idle activity ACT_MERC_STAND_CHINA_LAKE 1
$sequence Crouch_CHINA_LAKE CHINA_LAKE_crouch_idle loop alignto a_reference addlayer CHINA_LAKE_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_CHINA_LAKE 1

// swim
$MPAimLayer_lefthandIK CHINA_LAKE_aimmatrix_swim        CHINA_LAKE_aimmatrix_idle        $infoNode$
$MPswimWithWeapon CHINA_LAKE 0 0 0 0 0 0 0 0 CHINA_LAKE_SwimN	CHINA_LAKE_SwimCenter	CHINA_LAKE_aimmatrix_swim	ACT_MERC_SWIM_CHINA_LAKE $infonode$

//CHINA_LAKE jump
$sequence a_jumpStart_CHINA_LAKE CHINA_LAKE_jump frames 0 25 addlayer CHINA_LAKE_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_CHINA_LAKE 1 LX LY
$sequence a_jumpfloat_CHINA_LAKE CHINA_LAKE_jump frames 26 189 addlayer CHINA_LAKE_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_CHINA_LAKE 1 LX LY
$sequence jumpLandPose_CHINA_LAKE CHINA_LAKE_jump frames 25 25 numframes 30 loop
$sequence jumpLand_CHINA_LAKE { 
	CHINA_LAKE_jump_land 
	subtract jumpLand_CHINA_LAKE 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_CHINA_LAKE 1 
}

// run
$animation a_runCenter_CHINA_LAKE  CHINA_LAKE_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_CHINA_LAKE CHINA_LAKE_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_CHINA_LAKE CHINA_LAKE_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_CHINA_LAKE CHINA_LAKE_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_CHINA_LAKE CHINA_LAKE_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_CHINA_LAKE CHINA_LAKE_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_CHINA_LAKE CHINA_LAKE_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_CHINA_LAKE CHINA_LAKE_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_CHINA_LAKE CHINA_LAKE_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_CHINA_LAKE {
	a_runsw_CHINA_LAKE	a_runS_CHINA_LAKE		a_runSE_CHINA_LAKE
	a_runW_CHINA_LAKE	a_runCenter_CHINA_LAKE	a_runE_CHINA_LAKE
	a_runNW_CHINA_LAKE	a_runN_CHINA_LAKE		a_runNE_CHINA_LAKE
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer CHINA_LAKE_aimmatrix_run
	activity ACT_MERC_RUN_CHINA_LAKE 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_CHINA_LAKE 0 0 0 0 0 0 0 0 CHINA_LAKE_crouch_walkN CHINA_LAKE_crouch_walkCenter CHINA_LAKE_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_CHINA_LAKE $infoNode$

// airwalk
$sequence Airwalk_CHINA_LAKE "CHINA_LAKE_airwalk.dmx" fps 30 loop {
	addlayer CHINA_LAKE_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_CHINA_LAKE 1
}

$popd