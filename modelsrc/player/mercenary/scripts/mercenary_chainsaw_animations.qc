// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations_chainsaw.mdl

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
// Chainsaw
//-----------------------------------------------------------------------------------
$MPAimLayer_leftHandIK CHAINSAW_aimmatrix_idle        CHAINSAW_aimmatrix_idle        $infoNode$
$MPAimLayer_leftHandIK CHAINSAW_aimmatrix_run         CHAINSAW_aimmatrix_run         $infoNode$
//$MPAimLayer_leftHandIK CHAINSAW_aimmatrix_walk        CHAINSAW_aimmatrix_walk        $infoNode$
$MPAimLayer_leftHandIK CHAINSAW_aimmatrix_crouch_idle CHAINSAW_aimmatrix_crouch_idle $infoNode$

$sequence CHAINSAW_fire CHAINSAW_fire

//crouch fire
$sequence AttackCrouch_CHAINSAW {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 30 60
        loop
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_CHAINSAW_ATTACK_CROUCH_CHAINSAW 1
}

$sequence AttackCrouch_CHAINSAW_spoolup {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 0 30
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_CHAINSAW_ATTACK_CROUCH_PREFIRE 1
}

$sequence AttackCrouch_CHAINSAW_spooldown {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 60 80
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_CHAINSAW_ATTACK_CROUCH_POSTFIRE 1
}

//stand fire
$sequence AttackStand_CHAINSAW {
	Chainsaw_fire
	subtract CHAINSAW_fire 0
	frames 30 60
		loop
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_CHAINSAW_ATTACK_STAND_CHAINSAW 1
}

$sequence AttackStand_CHAINSAW_spoolup {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 0 30
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_CHAINSAW_ATTACK_STAND_PREFIRE 1
}

$sequence AttackStand_CHAINSAW_spooldown {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 60 80
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_CHAINSAW_ATTACK_STAND_POSTFIRE 1
}

//swim fire
$sequence AttackSwim_CHAINSAW {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 30 60
		loop
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_CHAINSAW_ATTACK_SWIM_CHAINSAW 1
}

$sequence AttackSwim_CHAINSAW_spoolup {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 0 30
	delta
	activity ACT_MERC_CHAINSAW_ATTACK_SWIM_PREFIRE 1
}

$sequence AttackSwim_CHAINSAW_spooldown {
	CHAINSAW_fire
	subtract CHAINSAW_fire 0
	frames 60 80
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_CHAINSAW_ATTACK_SWIM_POSTFIRE 1
}

$sequence Stand_CHAINSAW  CHAINSAW_idle loop alignto a_reference addlayer CHAINSAW_aimmatrix_idle activity ACT_MERC_STAND_CHAINSAW 1
$sequence Crouch_CHAINSAW CHAINSAW_crouch_idle loop alignto a_reference addlayer CHAINSAW_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_CHAINSAW 1

$MPAimLayer_leftHandIK  CHAINSAW_aimmatrix_swim         CHAINSAW_aimmatrix_idle              $infoNode$
$MPswimWithWeapon CHAINSAW 0 0 0 0 0 0 0 0 CHAINSAW_SwimN	CHAINSAW_SwimCenter	CHAINSAW_aimmatrix_swim	ACT_MERC_SWIM_CHAINSAW $infonode$

//CHAINSAW Jump

$sequence a_jumpStart_CHAINSAW CHAINSAW_jump frames 0 25 addlayer CHAINSAW_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_CHAINSAW 1 LX LY
$sequence a_jumpfloat_CHAINSAW CHAINSAW_jump frames 25 44 addlayer CHAINSAW_aimmatrix_swim loop  fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_CHAINSAW 1 LX LY
$sequence jumpLandPose_CHAINSAW CHAINSAW_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_CHAINSAW { 
	CHAINSAW_jump_land 
  ikrule lhand touch "weapon_bone" usesource
	subtract jumpland_CHAINSAW 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_CHAINSAW 1 
}

$animation a_runCenter_CHAINSAW  CHAINSAW_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_CHAINSAW CHAINSAW_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_CHAINSAW CHAINSAW_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_CHAINSAW CHAINSAW_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_CHAINSAW CHAINSAW_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_CHAINSAW CHAINSAW_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_CHAINSAW CHAINSAW_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_CHAINSAW CHAINSAW_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_CHAINSAW CHAINSAW_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_CHAINSAW {
	a_runsw_CHAINSAW	a_runS_CHAINSAW		a_runSE_CHAINSAW
	a_runW_CHAINSAW	a_runCenter_CHAINSAW	a_runE_CHAINSAW
	a_runNW_CHAINSAW	a_runN_CHAINSAW		a_runNE_CHAINSAW
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer CHAINSAW_aimmatrix_run
	activity ACT_MERC_RUN_CHAINSAW 1
	{ event 7001 7 "right" }
	{ event 7001 17 "left" }
}

// Chainsaw crouch walk
$MPCrouchWalkWithWeapon Crouch_Walk_CHAINSAW        0 0 0 0 0 0 0 0 CHAINSAW_crouch_walkN        CHAINSAW_Crouch_walkCenter        CHAINSAW_aimmatrix_crouch_idle        ACT_MERC_CROUCHWALK_CHAINSAW $infoNode$

// airwalk
$sequence Airwalk_CHAINSAW "CHAINSAW_airwalk.dmx" fps 30 loop {
	addlayer CHAINSAW_aimmatrix_swim 
	activity ACT_MERC_AIRWALK_CHAINSAW 1
}

$popd