// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_flamethrower.mdl

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
	activity ACT_MERC_FLAMETHROWER_ATTACK_CROUCH_FLAMETHROWER 1
}

$sequence AttackCrouch_FLAMETHROWER_spoolup {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 0 6
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_FLAMETHROWER_ATTACK_CROUCH_PREFIRE 1
}

$sequence AttackCrouch_FLAMETHROWER_spooldown {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 51 61
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_FLAMETHROWER_ATTACK_CROUCH_POSTFIRE 1
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
	activity ACT_MERC_FLAMETHROWER_ATTACK_STAND_FLAMETHROWER 1
}

$sequence AttackStand_FLAMETHROWER_spoolup {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 0 6
	delta
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_FLAMETHROWER_ATTACK_STAND_PREFIRE 1
}

$sequence AttackStand_FLAMETHROWER_spooldown {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 51 61
	delta
	weightlist UpperbodyBlend
	iklock rfoot 1 0 iklock lfoot 1 0
	activity ACT_MERC_FLAMETHROWER_ATTACK_STAND_POSTFIRE 1
}

// uncomment when airblast is added
//$sequence SECONDARYAttackStand_FLAMETHROWER {
//	FLAMETHROWER_altFire
//	subtract FLAMETHROWER_fire 0
//	frames 0 30
//	delta
//	activity ACT_MERC_FLAMETHROWER_ATTACK_STAND_SECONDARYFIRE 1
//}


//swim fire
$sequence AttackSwim_FLAMETHROWER {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 2 47
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_FLAMETHROWER_ATTACK_SWIM_FLAMETHROWER 1
}

$sequence AttackSwim_FLAMETHROWER_spoolup {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 0 3
	delta
	activity ACT_MERC_FLAMETHROWER_ATTACK_SWIM_PREFIRE 1
}

$sequence AttackSwim_FLAMETHROWER_spooldown {
	FLAMETHROWER_fire
	subtract FLAMETHROWER_fire 0
	frames 47 57
	delta
	weightlist UpperbodyBlend
	activity ACT_MERC_FLAMETHROWER_ATTACK_SWIM_POSTFIRE 1
}

// uncomment when airblast is added
//$sequence SECONDARYAttackSwim_FLAMETHROWER {
//	FLAMETHROWER_altFire
//	subtract FLAMETHROWER_fire 0
//	frames 0 30
//	delta
//	weightlist UpperbodyBlend
//	activity ACT_MERC_FLAMETHROWER_ATTACK_SWIM_SECONDARYFIRE 1
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

$popd