// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations_lightning_gun.mdl

$definevariable infoNode "mercenaryInfo"
$include "mercenary_definebones.qci"

// include the file that sets up the ikchains
$include "../../TF_animation_rules/ruleshierarchy.qci"
$include "../../TF_animation_rules/TF_macros_list.qci"

$pushd "../animations/dmx"

//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "primary_idle.dmx" lx ly
$sequence ragdollspawn "primary_idle.dmx" lx ly


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

$popd