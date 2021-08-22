// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_chaingun.mdl

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
// CHAINGUN
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		CHAINGUN	$infoNode$

$MPGestureAttack AttackStand_CHAINGUN  CHAINGUN_fire          ACT_MERC_ATTACK_STAND_CHAINGUN
$MPGestureAttack AttackCrouch_CHAINGUN CHAINGUN_crouch_fire   ACT_MERC_ATTACK_CROUCH_CHAINGUN
$MPGestureAttack AttackSwim_CHAINGUN   CHAINGUN_swim_fire     ACT_MERC_ATTACK_SWIM_CHAINGUN

$sequence layer_reload_standing_arms_CHAINGUN "CHAINGUN_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden

}
$sequence layer_reload_crouching_arms_CHAINGUN "CHAINGUN_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_swimming_arms_CHAINGUN "CHAINGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_airwalk_arms_CHAINGUN "CHAINGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$MPGestureReload_IK ReloadStand_CHAINGUN     CHAINGUN_reload        				ACT_MERC_RELOAD_STAND_CHAINGUN    layer_reload_standing_arms_CHAINGUN 0 4 55 67
$MPGestureReload_IK ReloadCrouch_CHAINGUN    CHAINGUN_crouch_reload 				ACT_MERC_RELOAD_CROUCH_CHAINGUN   layer_reload_crouching_arms_CHAINGUN 0 4 55 67
$MPGestureReload_IK ReloadSwim_CHAINGUN      CHAINGUN_swim_reload           ACT_MERC_RELOAD_SWIM_CHAINGUN     layer_reload_swimming_arms_CHAINGUN 0 4 55 67
$MPGestureReload_IK ReloadAirwalk_CHAINGUN   CHAINGUN_reload        ACT_MERC_RELOAD_AIRWALK_CHAINGUN  layer_reload_airwalk_arms_CHAINGUN 0 4 55 67

$sequence Stand_CHAINGUN  CHAINGUN_idle loop alignto a_reference addlayer CHAINGUN_aimmatrix_idle activity ACT_MERC_STAND_CHAINGUN 1
$sequence Crouch_CHAINGUN CHAINGUN_crouch_idle loop alignto a_reference addlayer CHAINGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_CHAINGUN 1

// swim
$MPAimLayer_lefthandIK CHAINGUN_aimmatrix_swim        CHAINGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon CHAINGUN 0 0 0 0 0 0 0 0 CHAINGUN_SwimN	CHAINGUN_SwimCenter	CHAINGUN_aimmatrix_swim	ACT_MERC_SWIM_CHAINGUN $infonode$

//CHAINGUN jump
$sequence a_jumpStart_CHAINGUN CHAINGUN_jump frames 0 25 addlayer CHAINGUN_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_CHAINGUN 1 LX LY
$sequence a_jumpfloat_CHAINGUN CHAINGUN_jump frames 26 189 addlayer CHAINGUN_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_CHAINGUN 1 LX LY
$sequence jumpLandPose_CHAINGUN CHAINGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_CHAINGUN { 
	CHAINGUN_jump_land 
	subtract jumpLand_CHAINGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_CHAINGUN 1 
}

// run
$animation a_runCenter_CHAINGUN  CHAINGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_CHAINGUN CHAINGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_CHAINGUN CHAINGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_CHAINGUN CHAINGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_CHAINGUN CHAINGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_CHAINGUN CHAINGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_CHAINGUN CHAINGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_CHAINGUN CHAINGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_CHAINGUN CHAINGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_CHAINGUN {
	a_runsw_CHAINGUN	a_runS_CHAINGUN		a_runSE_CHAINGUN
	a_runW_CHAINGUN	a_runCenter_CHAINGUN	a_runE_CHAINGUN
	a_runNW_CHAINGUN	a_runN_CHAINGUN		a_runNE_CHAINGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer CHAINGUN_aimmatrix_run
	activity ACT_MERC_RUN_CHAINGUN 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_CHAINGUN 0 0 0 0 0 0 0 0 CHAINGUN_crouch_walkN CHAINGUN_crouch_walkCenter CHAINGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_CHAINGUN $infoNode$

// airwalk
$sequence Airwalk_CHAINGUN "CHAINGUN_airwalk.dmx" fps 30 loop {
	addlayer CHAINGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_CHAINGUN 1
}

$popd