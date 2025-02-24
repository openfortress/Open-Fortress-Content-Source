// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_melee.mdl

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
// CROWBAR
//-----------------------------------------------------------------------------------

$MPAimLayer MELEE_aimmatrix_idle        CROWBAR_aimmatrix_idle        $infoNode$
$MPAimLayer MELEE_aimmatrix_run         CROWBAR_aimmatrix_run         $infoNode$
$MPAimLayer MELEE_aimmatrix_crouch_idle CROWBAR_aimmatrix_crouch_idle $infoNode$

$MPGestureAttack Attack_Stand_MELEE  CROWBAR_fire          ACT_MP_ATTACK_STAND_MELEE weightlist CrowbarMercStandArmsBlend
$MPGestureAttack Attack_Crouch_MELEE CROWBAR_crouch_fire   ACT_MP_ATTACK_CROUCH_MELEE weightlist CrowbarMercStandArmsBlend
$MPGestureAttack Attack_Swim_MELEE   CROWBAR_swim_fire     ACT_MP_ATTACK_SWIM_MELEE weightlist CrowbarMercStandArmsBlend

$sequence Stand_Melee  CROWBAR_idle loop alignto a_reference addlayer MELEE_aimmatrix_idle activity ACT_MP_STAND_MELEE 1
$sequence Crouch_Melee CROWBAR_crouch_idle loop alignto a_reference addlayer MELEE_aimmatrix_crouch_idle activity ACT_MP_CROUCH_MELEE 1

// swim
$MPAimLayer MELEE_aimmatrix_swim        MELEE_aimmatrix_idle        $infoNode$
$MPswimWithWeapon Melee 0 0 0 0 0 0 0 0 CROWBAR_SwimN	CROWBAR_SwimCenter	MELEE_aimmatrix_swim	ACT_MP_SWIM_MELEE $infonode$

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------

//CROWBAR jump
$sequence a_jumpStart_MELEE CROWBAR_jump frames 0 25 addlayer MELEE_aimmatrix_swim alignto a_reference Z activity ACT_MP_JUMP_START_MELEE 1 LX LY 

$sequence a_jumpfloat_MELEE CROWBAR_jump frames 26 189 addlayer MELEE_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_MELEE 1 LX LY 

$sequence jumpLandPose_MELEE CROWBAR_jump frames 25 25 numframes 30 loop 

$sequence jumpLand_MELEE { 
	CROWBAR_jump_land 
	subtract jumpLand_MELEE 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MP_JUMP_LAND_MELEE 1 
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
$sequence Run_MELEE {
	a_runsw_CROWBAR	a_runS_CROWBAR		a_runSE_CROWBAR
	a_runW_CROWBAR	a_runCenter_CROWBAR	a_runE_CROWBAR
	a_runNW_CROWBAR	a_runN_CROWBAR		a_runNE_CROWBAR
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer MELEE_aimmatrix_run
	activity ACT_MP_RUN_MELEE 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_MELEE 0 0 0 0 0 0 0 0 CROWBAR_crouch_walkN CROWBAR_crouch_walkCenter MELEE_aimmatrix_crouch_idle ACT_MP_CROUCHWALK_MELEE $infoNode$

//-----------------------------------------------------------------------------------
// Airwalk
//-----------------------------------------------------------------------------------
$sequence Airwalk_MELEE "CROWBAR_airwalk.dmx" fps 30 loop {
	addlayer MELEE_aimmatrix_idle 
	activity ACT_MP_AIRWALK_MELEE 1
}

$popd