// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations_ssg.mdl

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
// Supershotgun
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		SUPERSHOTGUN	$infoNode$

$MPGestureAttack AttackStand_SUPERSHOTGUN  SUPERSHOTGUN_fire          ACT_MERC_ATTACK_STAND_SUPERSHOTGUN
$MPGestureAttack AttackCrouch_SUPERSHOTGUN SUPERSHOTGUN_crouch_fire   ACT_MERC_ATTACK_CROUCH_SUPERSHOTGUN
$MPGestureAttack AttackSwim_SUPERSHOTGUN   SUPERSHOTGUN_swim_fire     ACT_MERC_ATTACK_SWIM_SUPERSHOTGUN

$sequence layer_reload_standing_arms_SUPERSHOTGUN "SUPERSHOTGUN_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden

}
$sequence layer_reload_crouching_arms_SUPERSHOTGUN "SUPERSHOTGUN_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_swimming_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_airwalk_arms_SUPERSHOTGUN "SUPERSHOTGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$MPGestureReload_IK ReloadStand_SUPERSHOTGUN     SUPERSHOTGUN_reload        				ACT_MERC_RELOAD_STAND_SUPERSHOTGUN    layer_reload_standing_arms_SUPERSHOTGUN 0 4 55 67
$MPGestureReload_IK ReloadCrouch_SUPERSHOTGUN    SUPERSHOTGUN_crouch_reload 				ACT_MERC_RELOAD_CROUCH_SUPERSHOTGUN   layer_reload_crouching_arms_SUPERSHOTGUN 0 4 55 67
$MPGestureReload_IK ReloadSwim_SUPERSHOTGUN      SUPERSHOTGUN_swim_reload           ACT_MERC_RELOAD_SWIM_SUPERSHOTGUN     layer_reload_swimming_arms_SUPERSHOTGUN 0 4 55 67
$MPGestureReload_IK ReloadAirwalk_SUPERSHOTGUN   SUPERSHOTGUN_reload        ACT_MERC_RELOAD_AIRWALK_SUPERSHOTGUN  layer_reload_airwalk_arms_SUPERSHOTGUN 0 4 55 67

$sequence Stand_SUPERSHOTGUN  SUPERSHOTGUN_idle loop alignto a_reference addlayer SUPERSHOTGUN_aimmatrix_idle activity ACT_MERC_STAND_SUPERSHOTGUN 1
$sequence Crouch_SUPERSHOTGUN SUPERSHOTGUN_crouch_idle loop alignto a_reference addlayer SUPERSHOTGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_SUPERSHOTGUN 1

// swim
$MPAimLayer_lefthandIK SUPERSHOTGUN_aimmatrix_swim        SUPERSHOTGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon SUPERSHOTGUN 0 0 0 0 0 0 0 0 SUPERSHOTGUN_SwimN	SUPERSHOTGUN_SwimCenter	SUPERSHOTGUN_aimmatrix_swim	ACT_MERC_SWIM_SUPERSHOTGUN $infonode$

//SUPERSHOTGUN jump
$sequence a_jumpStart_SUPERSHOTGUN SUPERSHOTGUN_jump frames 0 25 addlayer SUPERSHOTGUN_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_SUPERSHOTGUN 1 LX LY
$sequence a_jumpfloat_SUPERSHOTGUN SUPERSHOTGUN_jump frames 26 189 addlayer SUPERSHOTGUN_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_SUPERSHOTGUN 1 LX LY
$sequence jumpLandPose_SUPERSHOTGUN SUPERSHOTGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_SUPERSHOTGUN { 
	SUPERSHOTGUN_jump_land 
	subtract jumpLand_SUPERSHOTGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_SUPERSHOTGUN 1 
}

// run
$animation a_runCenter_SUPERSHOTGUN  SUPERSHOTGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_SUPERSHOTGUN SUPERSHOTGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_SUPERSHOTGUN SUPERSHOTGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_SUPERSHOTGUN SUPERSHOTGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_SUPERSHOTGUN SUPERSHOTGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_SUPERSHOTGUN SUPERSHOTGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_SUPERSHOTGUN SUPERSHOTGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_SUPERSHOTGUN SUPERSHOTGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_SUPERSHOTGUN SUPERSHOTGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_SUPERSHOTGUN {
	a_runsw_SUPERSHOTGUN	a_runS_SUPERSHOTGUN		a_runSE_SUPERSHOTGUN
	a_runW_SUPERSHOTGUN	a_runCenter_SUPERSHOTGUN	a_runE_SUPERSHOTGUN
	a_runNW_SUPERSHOTGUN	a_runN_SUPERSHOTGUN		a_runNE_SUPERSHOTGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer SUPERSHOTGUN_aimmatrix_run
	activity ACT_MERC_RUN_SUPERSHOTGUN 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_SUPERSHOTGUN 0 0 0 0 0 0 0 0 SUPERSHOTGUN_crouch_walkN SUPERSHOTGUN_crouch_walkCenter SUPERSHOTGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_SUPERSHOTGUN $infoNode$

// airwalk
$sequence Airwalk_SUPERSHOTGUN "SUPERSHOTGUN_airwalk.dmx" fps 30 loop {
	addlayer SUPERSHOTGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_SUPERSHOTGUN 1
}

$popd