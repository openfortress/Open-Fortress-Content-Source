// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_ZOMBIECLAWS.mdl

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
$weightlist ZOMBIECLAWSMercStandArmsBlend {
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
// ZOMBIECLAWS
//-----------------------------------------------------------------------------------

$MPWeaponAims		ZOMBIECLAWS	$infoNode$
 
$MPGestureAttack AttackStand_ZOMBIECLAWS  ZOMBIECLAWS_fire          ACT_MERC_ATTACK_STAND_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackStand_ZOMBIECLAWS2  ZOMBIECLAWS_fire_2          ACT_MERC_ATTACK_STAND_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackStand_ZOMBIECLAWS3  ZOMBIECLAWS_fire_3          ACT_MERC_ATTACK_STAND_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackCrouch_ZOMBIECLAWS ZOMBIECLAWS_crouch_fire   ACT_MERC_ATTACK_CROUCH_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackCrouch_ZOMBIECLAWS2 ZOMBIECLAWS_crouch_fire_2   ACT_MERC_ATTACK_CROUCH_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackCrouch_ZOMBIECLAWS3 ZOMBIECLAWS_crouch_fire_3   ACT_MERC_ATTACK_CROUCH_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackSwim_ZOMBIECLAWS   ZOMBIECLAWS_swim_fire     ACT_MERC_ATTACK_SWIM_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackSwim_ZOMBIECLAWS2   ZOMBIECLAWS_swim_fire_2     ACT_MERC_ATTACK_SWIM_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend
$MPGestureAttack AttackSwim_ZOMBIECLAWS3   ZOMBIECLAWS_swim_fire_3     ACT_MERC_ATTACK_SWIM_ZOMBIECLAWS weightlist ZOMBIECLAWSMercStandArmsBlend

$sequence Stand_ZOMBIECLAWS  ZOMBIECLAWS_idle loop alignto a_reference addlayer ZOMBIECLAWS_aimmatrix_idle activity ACT_MERC_STAND_ZOMBIECLAWS 1
$sequence Crouch_ZOMBIECLAWS ZOMBIECLAWS_crouch_idle loop alignto a_reference addlayer ZOMBIECLAWS_aimmatrix_crouch_idle activity ACT_MERC_CROUCH_ZOMBIECLAWS 1

// swim
$MPAimLayer ZOMBIECLAWS_aimmatrix_swim        ZOMBIECLAWS_aimmatrix_idle        $infoNode$
$MPswimWithWeapon ZOMBIECLAWS 0 0 0 0 0 0 0 0 ZOMBIECLAWS_SwimN	ZOMBIECLAWS_SwimCenter	ZOMBIECLAWS_aimmatrix_swim	ACT_MERC_SWIM_ZOMBIECLAWS $infonode$

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------

//ZOMBIECLAWS jump
$sequence a_jumpStart_ZOMBIECLAWS ZOMBIECLAWS_jump frames 0 25 addlayer ZOMBIECLAWS_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_ZOMBIECLAWS 1 LX LY 
$sequence a_jumpfloat_ZOMBIECLAWS ZOMBIECLAWS_jump frames 26 189 addlayer ZOMBIECLAWS_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_ZOMBIECLAWS 1 LX LY 
$sequence jumpLandPose_ZOMBIECLAWS ZOMBIECLAWS_jump frames 25 25 numframes 30 loop 
$sequence jumpLand_ZOMBIECLAWS { 
	ZOMBIECLAWS_jump_land 
	subtract jumpLand_ZOMBIECLAWS 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_ZOMBIECLAWS 1 
}

//-----------------------------------------------------------------------------------
//  RUN
//-----------------------------------------------------------------------------------
$animation a_runCenter_ZOMBIECLAWS  ZOMBIECLAWS_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_ZOMBIECLAWS ZOMBIECLAWS_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_ZOMBIECLAWS ZOMBIECLAWS_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_ZOMBIECLAWS ZOMBIECLAWS_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_ZOMBIECLAWS ZOMBIECLAWS_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_ZOMBIECLAWS ZOMBIECLAWS_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_ZOMBIECLAWS ZOMBIECLAWS_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_ZOMBIECLAWS ZOMBIECLAWS_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_ZOMBIECLAWS ZOMBIECLAWS_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_ZOMBIECLAWS {
	a_runsw_ZOMBIECLAWS	a_runS_ZOMBIECLAWS		a_runSE_ZOMBIECLAWS
	a_runW_ZOMBIECLAWS	a_runCenter_ZOMBIECLAWS	a_runE_ZOMBIECLAWS
	a_runNW_ZOMBIECLAWS	a_runN_ZOMBIECLAWS		a_runNE_ZOMBIECLAWS
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer ZOMBIECLAWS_aimmatrix_run
	activity ACT_MERC_RUN_ZOMBIECLAWS 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_ZOMBIECLAWS 0 0 0 0 0 0 0 0 ZOMBIECLAWS_crouch_walkN ZOMBIECLAWS_crouch_walkCenter ZOMBIECLAWS_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_ZOMBIECLAWS $infoNode$

//-----------------------------------------------------------------------------------
// Airwalk
//-----------------------------------------------------------------------------------
$sequence Airwalk_ZOMBIECLAWS "ZOMBIECLAWS_airwalk.dmx" fps 30 loop {
	addlayer ZOMBIECLAWS_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_ZOMBIECLAWS 1
}

$popd