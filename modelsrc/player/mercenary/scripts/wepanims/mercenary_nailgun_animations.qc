// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_nailgun.mdl

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
// Nailgun
//-----------------------------------------------------------------------------------
$MPWeaponAims_leftHandIK		NAILGUN	$infoNode$

$MPGestureAttack AttackStand_NAILGUN  NAILGUN_fire          ACT_MERC_ATTACK_STAND_NAILGUN
$MPGestureAttack AttackCrouch_NAILGUN NAILGUN_crouch_fire   ACT_MERC_ATTACK_CROUCH_NAILGUN
$MPGestureAttack AttackSwim_NAILGUN   NAILGUN_swim_fire     ACT_MERC_ATTACK_SWIM_NAILGUN

$sequence layer_reload_standing_arms_NAILGUN "NAILGUN_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_2" usesource range 11 14 35 42
	hidden

}
$sequence layer_reload_crouching_arms_NAILGUN "NAILGUN_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 11 14 35 42
	hidden
}

$sequence layer_reload_swimming_arms_NAILGUN "NAILGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 11 14 35 42
	hidden
}

$sequence layer_reload_airwalk_arms_NAILGUN "NAILGUN_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 11 14 35 42
	hidden
}

$MPGestureReload_IK_Nailgun ReloadStand_NAILGUN     NAILGUN_reload        				ACT_MERC_RELOAD_STAND_NAILGUN    layer_reload_standing_arms_NAILGUN 0 3 35 42
$MPGestureReload_IK_Nailgun ReloadCrouch_NAILGUN    NAILGUN_crouch_reload 				ACT_MERC_RELOAD_CROUCH_NAILGUN   layer_reload_crouching_arms_NAILGUN 0 3 35 42
$MPGestureReload_IK_Nailgun ReloadSwim_NAILGUN      NAILGUN_swim_reload           ACT_MERC_RELOAD_SWIM_NAILGUN     layer_reload_swimming_arms_NAILGUN 0 3 35 42
$MPGestureReload_IK_Nailgun ReloadAirwalk_NAILGUN   NAILGUN_reload        ACT_MERC_RELOAD_AIRWALK_NAILGUN  layer_reload_airwalk_arms_NAILGUN 0 3 35 42

$sequence Stand_NAILGUN  NAILGUN_idle loop alignto a_reference addlayer NAILGUN_aimmatrix_idle activity ACT_MERC_STAND_NAILGUN 1
$sequence Crouch_NAILGUN NAILGUN_crouch_idle loop alignto a_reference addlayer NAILGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_NAILGUN 1

// swim
$MPAimLayer_lefthandIK NAILGUN_aimmatrix_swim        NAILGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon NAILGUN 0 0 0 0 0 0 0 0 NAILGUN_SwimN	NAILGUN_SwimCenter	NAILGUN_aimmatrix_swim	ACT_MERC_SWIM_NAILGUN $infonode$

//NAILGUN jump
$sequence a_jumpStart_NAILGUN NAILGUN_jump frames 0 25 addlayer NAILGUN_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_NAILGUN 1 LX LY
$sequence a_jumpfloat_NAILGUN NAILGUN_jump frames 26 189 addlayer NAILGUN_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_NAILGUN 1 LX LY
$sequence jumpLandPose_NAILGUN NAILGUN_jump frames 25 25 numframes 30 loop
$sequence jumpLand_NAILGUN { 
	NAILGUN_jump_land 
	subtract jumpLand_NAILGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_NAILGUN 1 
}

// run
$animation a_runCenter_NAILGUN  NAILGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_NAILGUN NAILGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_NAILGUN NAILGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_NAILGUN NAILGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_NAILGUN NAILGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_NAILGUN NAILGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_NAILGUN NAILGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_NAILGUN NAILGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_NAILGUN NAILGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_NAILGUN {
	a_runsw_NAILGUN	a_runS_NAILGUN		a_runSE_NAILGUN
	a_runW_NAILGUN	a_runCenter_NAILGUN	a_runE_NAILGUN
	a_runNW_NAILGUN	a_runN_NAILGUN		a_runNE_NAILGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer NAILGUN_aimmatrix_run
	activity ACT_MERC_RUN_NAILGUN 1
}

$MPCrouchWalkWithWeapon Crouch_Walk_NAILGUN 0 0 0 0 0 0 0 0 NAILGUN_crouch_walkN NAILGUN_crouch_walkCenter NAILGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_NAILGUN $infoNode$

// airwalk
$sequence Airwalk_NAILGUN "NAILGUN_airwalk.dmx" fps 30 loop {
	addlayer NAILGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_NAILGUN 1
}

$popd