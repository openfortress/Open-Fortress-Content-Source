// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_crowbar.mdl

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
$weightlist CrowbarMercStandArmsBlend {
	"bip_pelvis" 1.0
	"bip_collar_r" 1.0
	"bip_collar_l" 1.0
}

//-----------------------------------------------------------------------------------
// CROWBAR
//-----------------------------------------------------------------------------------

$MPWeaponAims		CROWBAR	$infoNode$

$MPGestureAttack AttackStand_CROWBAR  CROWBAR_fire          ACT_MERC_ATTACK_STAND_CROWBAR weightlist CrowbarMercStandArmsBlend
$MPGestureAttack AttackCrouch_CROWBAR CROWBAR_crouch_fire   ACT_MERC_ATTACK_CROUCH_CROWBAR weightlist CrowbarMercStandArmsBlend
$MPGestureAttack AttackSwim_CROWBAR   CROWBAR_swim_fire     ACT_MERC_ATTACK_SWIM_CROWBAR

$sequence Stand_CROWBAR  CROWBAR_idle loop alignto a_reference addlayer CROWBAR_aimmatrix_idle activity ACT_MERC_STAND_CROWBAR 1
$sequence Crouch_CROWBAR CROWBAR_crouch_idle loop alignto a_reference addlayer CROWBAR_aimmatrix_crouch_idle activity ACT_MERC_CROUCH_CROWBAR 1

$MPGestureAttackLEADPIPE AttackStand_CROWBAR_SpoolUp   CROWBAR_spoolup      Stand_Crowbar 0 ACT_MERC_ATTACK_STAND_PREFIRE_CROWBAR IKrule lhand touch "weapon_bone" usesource

// swim
$MPAimLayer CROWBAR_aimmatrix_swim        CROWBAR_aimmatrix_idle        $infoNode$
$MPswimWithWeapon CROWBAR 0 0 0 0 0 0 0 0 CROWBAR_SwimN	CROWBAR_SwimCenter	CROWBAR_aimmatrix_swim	ACT_MERC_SWIM_CROWBAR $infonode$

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------

//CROWBAR jump
$sequence a_jumpStart_CROWBAR CROWBAR_jump frames 0 25 addlayer CROWBAR_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_CROWBAR 1 LX LY 
$sequence a_jumpfloat_CROWBAR CROWBAR_jump frames 26 189 addlayer CROWBAR_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_CROWBAR 1 LX LY 
$sequence jumpLandPose_CROWBAR CROWBAR_jump frames 25 25 numframes 30 loop 
$sequence jumpLand_CROWBAR { 
	CROWBAR_jump_land 
	subtract jumpLand_CROWBAR 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_CROWBAR 1 
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
$sequence Run_CROWBAR {
	a_runsw_CROWBAR	a_runS_CROWBAR		a_runSE_CROWBAR
	a_runW_CROWBAR	a_runCenter_CROWBAR	a_runE_CROWBAR
	a_runNW_CROWBAR	a_runN_CROWBAR		a_runNE_CROWBAR
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer CROWBAR_aimmatrix_run
	activity ACT_MERC_RUN_CROWBAR 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_CROWBAR 0 0 0 0 0 0 0 0 CROWBAR_crouch_walkN CROWBAR_crouch_walkCenter CROWBAR_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_CROWBAR $infoNode$

//-----------------------------------------------------------------------------------
// Airwalk
//-----------------------------------------------------------------------------------
$sequence Airwalk_CROWBAR "CROWBAR_airwalk.dmx" fps 30 loop {
	addlayer CROWBAR_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_CROWBAR 1
}

$popd