// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_railgun.mdl

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
// Railgun Unscoped
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		RAILGUN	$infoNode$

$MPGestureAttack AttackStand_RAILGUN  RAILGUN_fire          ACT_MERC_ATTACK_STAND_RAILGUN
$MPGestureAttack AttackCrouch_RAILGUN RAILGUN_fire  		ACT_MERC_ATTACK_CROUCH_RAILGUN
$MPGestureAttack AttackSwim_RAILGUN   RAILGUN_fire			ACT_MERC_ATTACK_SWIM_RAILGUN

$sequence Stand_RAILGUN  RAILGUN_idle loop alignto a_reference addlayer RAILGUN_aimmatrix_idle activity ACT_MERC_STAND_RAILGUN 1
$sequence Crouch_RAILGUN RAILGUN_crouch_idle loop alignto a_reference addlayer RAILGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_RAILGUN 1

// swim
$MPAimLayer_lefthandIK RAILGUN_aimmatrix_swim        RAILGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon RAILGUN 0 0 0 0 0 0 0 0 RAILGUN_SwimN	RAILGUN_SwimCenter	RAILGUN_aimmatrix_swim	ACT_MERC_SWIM_RAILGUN $infonode$

//RAILGUN jump
$sequence a_jumpStart_RAILGUN RAILGUN_jump frames 0 25 addlayer RAILGUN_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_RAILGUN 1 LX LY
$sequence a_jumpfloat_RAILGUN RAILGUN_jump frames 26 189 addlayer RAILGUN_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_RAILGUN 1 LX LY
$sequence jumpLandPose_RAILGUN RAILGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_RAILGUN { 
	RAILGUN_jump_land 
	subtract jumpLand_RAILGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_RAILGUN 1 
}

// run
$animation a_runCenter_RAILGUN  RAILGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_RAILGUN RAILGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_RAILGUN RAILGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_RAILGUN RAILGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_RAILGUN RAILGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_RAILGUN RAILGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_RAILGUN RAILGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_RAILGUN RAILGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_RAILGUN RAILGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_RAILGUN {
	a_runsw_RAILGUN	a_runS_RAILGUN		a_runSE_RAILGUN
	a_runW_RAILGUN	a_runCenter_RAILGUN	a_runE_RAILGUN
	a_runNW_RAILGUN	a_runN_RAILGUN		a_runNE_RAILGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer RAILGUN_aimmatrix_run
	activity ACT_MERC_RUN_RAILGUN 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_RAILGUN 0 0 0 0 0 0 0 0 RAILGUN_crouch_walkN RAILGUN_crouch_walkCenter RAILGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_RAILGUN $infoNode$

// airwalk
$sequence Airwalk_RAILGUN "RAILGUN_airwalk.dmx" fps 30 loop {
	addlayer RAILGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_RAILGUN 1
}

//-----------------------------------------------------------------------------------
// Railgun Scoped
//-----------------------------------------------------------------------------------
$MPAimLayer_leftHandIK  RAILGUN_aimmatrix_deployed        	RAILGUN_aimmatrix_deployed      $infoNode$
$MPAimLayer_leftHandIK  RAILGUN_crouch_aimmatrix_deployed	  RAILGUN_crouch_aimmatrix_deployed	$infoNode$

$sequence Stand_RAILGUN_DEPLOYED  RAILGUN_idle_DEPLOYED loop alignto a_reference addlayer RAILGUN_aimmatrix_deployed 				activity ACT_MERC_RAILGUN_DEPLOYED_IDLE 1
$sequence Crouch_RAILGUN_DEPLOYED RAILGUN_crouch_idle_DEPLOYED loop alignto a_reference addlayer RAILGUN_crouch_aimmatrix_deployed  activity ACT_MERC_CROUCH_RAILGUN_DEPLOYED_IDLE 1

$MPGestureAttack AttackStand_RAILGUN_DEPLOYED  RAILGUN_DEPLOYED_fire         		ACT_MERC_ATTACK_STAND_RAILGUN_DEPLOYED
$MPGestureAttack AttackCrouch_RAILGUN_DEPLOYED RAILGUN_DEPLOYED_crouch_fire  		ACT_MERC_ATTACK_CROUCH_RAILGUN_DEPLOYED
$MPGestureAttack AttackSwim_RAILGUN_DEPLOYED   RAILGUN_DEPLOYED_fire				ACT_MERC_ATTACK_SWIM_RAILGUN_DEPLOYED

// run
$animation a_deployedrunCenter_RAILGUN  RAILGUN_deployedCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_deployedrunS_RAILGUN RAILGUN_deployeds blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_deployedrunSE_RAILGUN RAILGUN_deployedse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_deployedrunE_RAILGUN RAILGUN_deployede blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_deployedrunNE_RAILGUN RAILGUN_deployedne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_deployedrunN_RAILGUN RAILGUN_deployedn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_deployedrunNW_RAILGUN RAILGUN_deployednw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_deployedrunW_RAILGUN RAILGUN_deployedw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_deployedrunSW_RAILGUN RAILGUN_deployedsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}

$sequence DeployedRun_RAILGUN {
	a_deployedrunsw_RAILGUN	a_deployedrunS_RAILGUN		a_deployedrunSE_RAILGUN
	a_deployedrunW_RAILGUN	a_deployedrunCenter_RAILGUN	a_deployedrunE_RAILGUN
	a_deployedrunNW_RAILGUN	a_deployedrunN_RAILGUN		a_deployedrunNE_RAILGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer RAILGUN_aimmatrix_deployed
	activity ACT_MERC_RAILGUN_DEPLOYED 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_RAILGUN_DEPLOYED 0 0 0 0 0 0 0 0 RAILGUN_DEPLOYED_crouch_walkN RAILGUN_DEPLOYED_crouch_walkCenter RAILGUN_crouch_aimmatrix_deployed ACT_MERC_CROUCHWALK_RAILGUN_DEPLOYED $infoNode$

// swim
$MPAimLayer_lefthandIK RAILGUN_DEPLOYED_aimmatrix_swim        RAILGUN_aimmatrix_deployed        $infoNode$
$MPswimWithWeapon RAILGUN_DEPLOYED 0 0 0 0 0 0 0 0 RAILGUN_DEPLOYED_SwimN	RAILGUN_DEPLOYED_SwimCenter	RAILGUN_DEPLOYED_aimmatrix_swim	ACT_MERC_RAILGUN_SWIM_DEPLOYED $infonode$

$popd