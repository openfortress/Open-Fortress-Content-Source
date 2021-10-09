// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_shotgun.mdl

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
$weightlist SHOTGUNMercStandArmsBlend {
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
// SHOTGUN
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		SHOTGUN	$infoNode$

$MPGestureAttack AttackStand_SHOTGUN  SHOTGUN_fire          ACT_MERC_ATTACK_STAND_SHOTGUN weightlist SHOTGUNMercStandArmsBlend 
$MPGestureAttack AttackCrouch_SHOTGUN SHOTGUN_crouch_fire   ACT_MERC_ATTACK_CROUCH_SHOTGUN weightlist SHOTGUNMercStandArmsBlend 
$MPGestureAttack AttackSwim_SHOTGUN   SHOTGUN_swim_fire     ACT_MERC_ATTACK_SWIM_SHOTGUN weightlist SHOTGUNMercStandArmsBlend 

$sequence layer_reload_standing_arms_merc "SHOTGUN_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}
$MPGestureReload ReloadSwim_SHOTGUN   SHOTGUN_swim_reload   ACT_MERC_RELOAD_SWIM_SHOTGUN

$animation a_reload_SHOTGUN_startpose SHOTGUN_reload frames 0 0
$animation a_reload_crouch_SHOTGUN_startpose SHOTGUN_crouch_reload frames 0 0

$sequence layer_reload_standing_SHOTGUN_arms "SHOTGUN_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$sequence ReloadStand_SHOTGUN {
	SHOTGUN_reload
	frames 0 20
	numframes 21
	fps 30
	subtract ReloadStand_SHOTGUN 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_SHOTGUN_arms 0 4 21 21
 	activity ACT_MERC_RELOAD_STAND_SHOTGUN 1
}

$sequence layer_reload_standing_SHOTGUN_arms_loop "SHOTGUN_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_SHOTGUN_loop {
	SHOTGUN_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_SHOTGUN_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_SHOTGUN_arms_loop
 	activity ACT_MERC_RELOAD_STAND_SHOTGUN_LOOP 1
}

$sequence layer_reload_standing_SHOTGUN_arms_end "SHOTGUN_reload.dmx" weightlist ArmsBlend {
	frames 40 63
	numframes 23
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadStand_SHOTGUN_end {
	SHOTGUN_reload
	frames 40 63
	numframes 23
	fps 30
	subtract a_reload_SHOTGUN_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_SHOTGUN_arms_end 0 0 8 23 spline
 	activity ACT_MERC_RELOAD_STAND_SHOTGUN_END 1
}


//crouch reload
$sequence layer_reload_crouch_SHOTGUN_arms "SHOTGUN_crouch_reload.dmx" weightlist ArmsBlend {
	frames 0 20
	numframes 21
	fps 30
	ikrule lhand touch "bip_pelvis" usesource range 0 9 9 11
	ikrule lhand touch "weapon_bone" usesource range 11 15 21 21
	hidden
}

$sequence ReloadCrouch_SHOTGUN {
	SHOTGUN_crouch_reload
	frames 0 20
	numframes 20
	fps 30
	subtract a_reload_crouch_SHOTGUN_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_SHOTGUN_arms 0 4 20 20
 	activity ACT_MERC_RELOAD_CROUCH_SHOTGUN 1
}

$sequence layer_reload_crouch_SHOTGUN_arms_loop "SHOTGUN_crouch_reload.dmx" weightlist ArmsBlend {
	frames 20 40
	numframes 20
	fps 30
	ikrule lhand release
	ikrule rhand release
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_SHOTGUN_loop {
	SHOTGUN_crouch_reload
	frames 20 40
	numframes 20
	fps 30
	subtract a_reload_crouch_SHOTGUN_startpose 0
	loop
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_crouch_SHOTGUN_arms_loop
 	activity ACT_MERC_RELOAD_CROUCH_SHOTGUN_LOOP 1
}

$sequence layer_reload_crouch_SHOTGUN_arms_end "SHOTGUN_crouch_reload.dmx" weightlist ArmsBlend {
	frames 40 63
	numframes 23
	fps 30
	ikrule lhand touch "weapon_bone" usesource
	hidden
}

$sequence ReloadCrouch_SHOTGUN_end {
	SHOTGUN_crouch_reload
	frames 40 63
	numframes 23
	fps 30
	subtract a_reload_crouch_SHOTGUN_startpose 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_crouch_SHOTGUN_arms_end 0 0 8 23
 	activity ACT_MERC_RELOAD_CROUCH_SHOTGUN_END 1
}


//airwalk reloads
$sequence a_SHOTGUN_reload_airwalk 	SHOTGUN_reload
$sequence layer_reload_arms_SHOTGUN "SHOTGUN_reload.dmx" frames 0 20 weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SHOTGUN_reload_airwalk {
	"SHOTGUN_reload.dmx"
	frames 0 20
	subtract a_SHOTGUN_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SHOTGUN 0 10 21 21
 	activity ACT_MERC_RELOAD_AIRWALK_SHOTGUN 1
}

$sequence layer_reload_arms_SHOTGUN_loop "SHOTGUN_reload.dmx" frames 20 40 weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SHOTGUN_reload_airwalk_loop {
	"SHOTGUN_reload.dmx"
	 frames 20 40
	 subtract a_SHOTGUN_reload_airwalk 0
	 delta
	 ikrule lhand release
	 ikrule rhand release
	 iklock rfoot 1 0 iklock lfoot 1 0
 	 blendlayer layer_reload_arms_SHOTGUN_loop -2 -2 21 21
 	 activity ACT_MERC_RELOAD_AIRWALK_SHOTGUN_LOOP 1
}


$sequence layer_reload_arms_SHOTGUN_end "SHOTGUN_reload.dmx" frames 40 55 weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SHOTGUN_reload_airwalk_end {
	"SHOTGUN_reload.dmx"
	frames 40 63
	subtract a_SHOTGUN_reload_airwalk 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SHOTGUN_end -2 -2 1 7
 	activity ACT_MERC_RELOAD_AIRWALK_SHOTGUN_END 1
}

//Swim reloads
$sequence a_SHOTGUN_reload_swim 	SHOTGUN_reload
$sequence layer_reload_arms_SHOTGUN_swim "SHOTGUN_reload.dmx" frames 0 20 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SHOTGUN_reload_swim {
	"SHOTGUN_reload.dmx"
	frames 0 20
	subtract a_SHOTGUN_reload_airwalk 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SHOTGUN_swim 0 10 21 21
 	activity ACT_MERC_RELOAD_SWIM_SHOTGUN 1
}

$sequence layer_reload_arms_SHOTGUN_loop_swim "SHOTGUN_reload.dmx" frames 20 40 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SHOTGUN_reload_swim_loop {
	"SHOTGUN_reload.dmx"
	frames 20 40
	subtract a_SHOTGUN_reload_swim 0
	delta
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SHOTGUN_loop_swim -2 -2 21 21
 	activity ACT_MERC_RELOAD_SWIM_SHOTGUN_LOOP 1
}


$sequence layer_reload_arms_SHOTGUN_end_swim "SHOTGUN_reload.dmx" frames 40 55 weightlist UpperbodyBlendNoPelvis {
	ikrule lhand touch "weapon_bone_1" usesource
	hidden
}

$sequence SHOTGUN_reload_swim_end {
	"SHOTGUN_reload.dmx"
	frames 40 63
	subtract a_SHOTGUN_reload_swim 0
	delta
	fadeout 1
	ikrule lhand release
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_arms_SHOTGUN_end_swim -2 -2 1 7
 	activity ACT_MERC_RELOAD_SWIM_SHOTGUN_END 1
}

$sequence Stand_SHOTGUN  SHOTGUN_idle loop alignto a_reference addlayer SHOTGUN_aimmatrix_idle activity ACT_MERC_STAND_SHOTGUN 1
$sequence Crouch_SHOTGUN SHOTGUN_crouch_idle loop alignto a_reference addlayer SHOTGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_SHOTGUN 1

// swim
$MPAimLayer_lefthandIK SHOTGUN_aimmatrix_swim        SHOTGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon SHOTGUN 0 0 0 0 0 0 0 0 SHOTGUN_SwimN	SHOTGUN_SwimCenter	SHOTGUN_aimmatrix_swim	ACT_MERC_SWIM_SHOTGUN $infonode$

//SHOTGUN jump
$sequence a_jumpStart_SHOTGUN SHOTGUN_jump frames 0 25 addlayer SHOTGUN_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_SHOTGUN 1 LX LY
$sequence a_jumpfloat_SHOTGUN SHOTGUN_jump frames 26 189 addlayer SHOTGUN_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_SHOTGUN 1 LX LY
$sequence jumpLandPose_SHOTGUN SHOTGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_SHOTGUN { 
	SHOTGUN_jump_land 
	subtract jumpLand_SHOTGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_SHOTGUN 1 
}

// run
$animation a_runCenter_SHOTGUN  SHOTGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_SHOTGUN SHOTGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_SHOTGUN SHOTGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_SHOTGUN SHOTGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_SHOTGUN SHOTGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_SHOTGUN SHOTGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_SHOTGUN SHOTGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_SHOTGUN SHOTGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_SHOTGUN SHOTGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_SHOTGUN {
	a_runsw_SHOTGUN	a_runS_SHOTGUN		a_runSE_SHOTGUN
	a_runW_SHOTGUN	a_runCenter_SHOTGUN	a_runE_SHOTGUN
	a_runNW_SHOTGUN	a_runN_SHOTGUN		a_runNE_SHOTGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer SHOTGUN_aimmatrix_run
	activity ACT_MERC_RUN_SHOTGUN 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_SHOTGUN 0 0 0 0 0 0 0 0 SHOTGUN_crouch_walkN SHOTGUN_crouch_walkCenter SHOTGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_SHOTGUN $infoNode$

// airwalk
$sequence Airwalk_SHOTGUN "SHOTGUN_airwalk.dmx" fps 30 loop {
	addlayer SHOTGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_SHOTGUN 1
}

$popd