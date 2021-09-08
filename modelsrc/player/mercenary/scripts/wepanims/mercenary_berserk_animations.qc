// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_berserk.mdl

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
$weightlist BERSERKMercStandArmsBlend {
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
// BERSERK
//-----------------------------------------------------------------------------------

$MPWeaponAims		BERSERK	$infoNode$

$MPGestureAttack AttackStand_BERSERK  BERSERK_fire          ACT_MERC_ATTACK_STAND_BERSERK weightlist BERSERKMercStandArmsBlend
$MPGestureAttack AttackStand_BERSERK2  BERSERK_fire_2          ACT_MERC_ATTACK_STAND_BERSERK weightlist BERSERKMercStandArmsBlend
$MPGestureAttack AttackCrouch_BERSERK BERSERK_crouch_fire   ACT_MERC_ATTACK_CROUCH_BERSERK weightlist BERSERKMercStandArmsBlend
$MPGestureAttack AttackCrouch_BERSERK2 BERSERK_crouch_fire_2   ACT_MERC_ATTACK_CROUCH_BERSERK weightlist BERSERKMercStandArmsBlend
$MPGestureAttack AttackSwim_BERSERK   BERSERK_swim_fire     ACT_MERC_ATTACK_SWIM_BERSERK weightlist BERSERKMercStandArmsBlend

$sequence Stand_BERSERK  BERSERK_idle loop alignto a_reference addlayer BERSERK_aimmatrix_idle activity ACT_MERC_STAND_BERSERK 1
$sequence Crouch_BERSERK BERSERK_crouch_idle loop alignto a_reference addlayer BERSERK_aimmatrix_crouch_idle activity ACT_MERC_CROUCH_BERSERK 1


// swim
$MPAimLayer BERSERK_aimmatrix_swim        BERSERK_aimmatrix_idle        $infoNode$
$MPswimWithWeapon BERSERK 0 0 0 0 0 0 0 0 BERSERK_SwimN	BERSERK_SwimCenter	BERSERK_aimmatrix_swim	ACT_MERC_SWIM_BERSERK $infonode$

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------

//BERSERK jump
$sequence a_jumpStart_BERSERK BERSERK_jump frames 0 25 addlayer BERSERK_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_BERSERK 1 LX LY 
$sequence a_jumpfloat_BERSERK BERSERK_jump frames 26 189 addlayer BERSERK_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_BERSERK 1 LX LY 
$sequence jumpLandPose_BERSERK BERSERK_jump frames 25 25 numframes 30 loop 
$sequence jumpLand_BERSERK { 
	BERSERK_jump_land 
	subtract jumpLand_BERSERK 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_BERSERK 1 
}

//-----------------------------------------------------------------------------------
//  RUN
//-----------------------------------------------------------------------------------
$animation a_runCenter_BERSERK  BERSERK_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_BERSERK BERSERK_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_BERSERK BERSERK_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_BERSERK BERSERK_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_BERSERK BERSERK_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_BERSERK BERSERK_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_BERSERK BERSERK_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_BERSERK BERSERK_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_BERSERK BERSERK_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_BERSERK {
	a_runsw_BERSERK	a_runS_BERSERK		a_runSE_BERSERK
	a_runW_BERSERK	a_runCenter_BERSERK	a_runE_BERSERK
	a_runNW_BERSERK	a_runN_BERSERK		a_runNE_BERSERK
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer BERSERK_aimmatrix_run
	activity ACT_MERC_RUN_BERSERK 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_BERSERK 0 0 0 0 0 0 0 0 BERSERK_crouch_walkN BERSERK_crouch_walkCenter BERSERK_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_BERSERK $infoNode$

//-----------------------------------------------------------------------------------
// Airwalk
//-----------------------------------------------------------------------------------
$sequence Airwalk_BERSERK "BERSERK_airwalk.dmx" fps 30 loop {
	addlayer BERSERK_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_BERSERK 1
}

$popd