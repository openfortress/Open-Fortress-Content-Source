// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_unarmed.mdl

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

//-----------------------------------------------------------------------------------//
//-----------------------------------------------------------------------------------//
// START OF UNARMED
//-----------------------------------------------------------------------------------//
//-----------------------------------------------------------------------------------//

//-----------------------------------------------------------------------------------
// STAND/CROUCH IDLES
//-----------------------------------------------------------------------------------

$MPWeaponAims		UNARMED	$infoNode$

$sequence Stand_UNARMED  UNARMED_idle loop alignto a_reference addlayer UNARMED_aimmatrix_idle activity ACT_MP_STAND_UNARMED 1
$sequence Crouch_UNARMED UNARMED_crouch_idle loop alignto a_reference addlayer UNARMED_aimmatrix_crouch_idle activity ACT_MP_CROUCH_UNARMED 1

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_UNARMED 0 0 0 0 0 0 0 0 UNARMED_crouch_walkN UNARMED_crouch_walkCenter UNARMED_aimmatrix_crouch_idle ACT_MP_CROUCHWALK_UNARMED $infoNode$

//-----------------------------------------------------------------------------------
// SWIM
//-----------------------------------------------------------------------------------
$animation a_swimCenter_unarmed  unarmed_swimCenter blockname "mercenaryInfo" loop

$sequence s_swimAlign_unarmed a_swimCenter_unarmed

$animation a_swimS_unarmed  unarmed_swimS     startloop 0  rotateto -180 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimSE_unarmed  unarmed_swimSE   startloop 0 rotateto -135 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimE_unarmed   unarmed_swimE    startloop 0   rotateto -90 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo"  
$animation a_swimNE_unarmed  unarmed_swimNE   startloop 0  rotateto -45 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimN_unarmed   unarmed_swimN    startloop 0     rotateto 0 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimNW_unarmed  unarmed_swimNW   startloop 0   rotateto 45 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo"
$animation a_swimW_unarmed   unarmed_swimW    startloop 0   rotateto 90 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 
$animation a_swimSW_unarmed  unarmed_swimSW   startloop 0  rotateto 135 align s_swimAlign_unarmed X Y Z 0 0 LX LY loop blockname "mercenaryInfo" 

$sequence Swim_UNARMED  { 
	a_swimsw_unarmed	a_swimS_unarmed 		a_swimSE_unarmed  
	a_swimW_unarmed	a_swimCenter_unarmed 	a_swimE_unarmed  
	a_swimNW_unarmed 	a_swimN_unarmed 		a_swimNE_unarmed  
	blendwidth 3 blend move_y -1 1 blend move_x -1 1 
	activity ACT_MP_SWIM_UNARMED 1 
}

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------
$sequence a_jumpStart_unarmed unarmed_jump frames 0 25 alignto a_reference Z activity ACT_MP_JUMP_START_UNARMED 1 LX LY
$sequence a_jumpfloat_unarmed unarmed_jump frames 26 103	loop  fps 30 alignto a_reference activity ACT_MP_JUMP_FLOAT_UNARMED 1 LX LY
$sequence jumpLandPose_unarmed unarmed_jump frames 25 25 numframes 30 loop

$sequence jumpLand_unarmed { 
	unarmed_jump_land 
	subtract jumpLand_unarmed 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 
	
	activity ACT_MP_JUMP_LAND_UNARMED 1 
}
//-----------------------------------------------------------------------------------//
//-----------------------------------------------------------------------------------//
// END OF UNARMED
//-----------------------------------------------------------------------------------//
//-----------------------------------------------------------------------------------//

$popd