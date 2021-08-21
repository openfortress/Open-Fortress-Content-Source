// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations_gib.mdl

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
// G.I.B 9000
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		GIB	$infoNode$

$sequence Stand_GIB  GIB_idle loop alignto a_reference addlayer GIB_aimmatrix_idle activity ACT_MERC_STAND_GIB 1
$sequence Crouch_GIB GIB_crouch loop alignto a_reference addlayer GIB_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_GIB 1

$MPGestureAttackGIB AttackStand_GIB  GIB_fire    Stand_Gib 30     ACT_MERC_ATTACK_STAND_GIB IKrule lhand touch "weapon_bone" usesource
$MPGestureAttackGIB AttackCrouch_GIB GIB_crouch_fire  	Crouch_Gib 30	ACT_MERC_ATTACK_CROUCH_GIB IKrule lhand touch "weapon_bone" usesource
$MPGestureAttackGIB AttackSwim_GIB   GIB_swim_fire  Stand_Gib 30  ACT_MERC_ATTACK_SWIM_GIB IKrule lhand touch "weapon_bone" usesource

$MPGestureAttackGIB AttackStand_GIB_SpoolUp   gib_spoolup      Stand_Gib 41  ACT_MERC_GIB_ATTACK_STAND_PREFIRE IKrule lhand touch "weapon_bone" usesource
$MPGestureAttackGIB AttackCrouch_GIB_SpoolUp  gib_crouch_spoolup    Crouch_Gib  41    ACT_MERC_GIB_ATTACK_CROUCH_PREFIRE IKrule lhand touch "weapon_bone" usesource
$MPGestureAttackGIB AttackSwim_GIB_SpoolUp    gib_swim_spoolup     Stand_Gib 41    ACT_MERC_GIB_ATTACK_SWIM_PREFIRE IKrule lhand touch "weapon_bone" usesource

//$sequence Stand_GIB  GIB_idle loop alignto a_reference addlayer GIB_aimmatrix_idle activity ACT_MERC_STAND_GIB 1
//$sequence Crouch_GIB GIB_crouch loop alignto a_reference addlayer GIB_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_GIB 1

// swim
$MPAimLayer_lefthandIK GIB_aimmatrix_swim        GIB_aimmatrix_idle        $infoNode$
$MPswimWithWeapon GIB 0 0 0 0 0 0 0 0 GIB_SwimN	GIB_SwimCenter	GIB_aimmatrix_swim	ACT_MERC_SWIM_GIB $infonode$

//GIB jump
$sequence a_jumpStart_GIB GIB_jump frames 0 25 addlayer GIB_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_GIB 1 LX LY
$sequence a_jumpfloat_GIB GIB_jump frames 26 189 addlayer GIB_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_GIB 1 LX LY
$sequence jumpLandPose_GIB GIB_jump frames 25 25 numframes 30 loop
$sequence jumpLand_GIB { 
	GIB_jump_land 
	subtract jumpLand_GIB 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_GIB 1 
}

// run
$animation a_runCenter_GIB  GIB_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_GIB GIB_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_GIB GIB_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_GIB GIB_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_GIB GIB_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_GIB GIB_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_GIB GIB_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_GIB GIB_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_GIB GIB_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_GIB {
	a_runsw_GIB	a_runS_GIB		a_runSE_GIB
	a_runW_GIB	a_runCenter_GIB	a_runE_GIB
	a_runNW_GIB	a_runN_GIB		a_runNE_GIB
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer GIB_aimmatrix_run
	activity ACT_MERC_RUN_GIB 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_GIB 0 0 0 0 0 0 0 0 GIB_crouch_walkN GIB_crouch_walkCenter GIB_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_GIB $infoNode$

// airwalk
$sequence Airwalk_GIB "GIB_airwalk.dmx" fps 30 loop {
	addlayer GIB_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_GIB 1
}

$popd