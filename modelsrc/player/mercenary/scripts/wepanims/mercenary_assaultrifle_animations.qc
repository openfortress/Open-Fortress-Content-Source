// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_assault_rifle.mdl

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
// Assault Rifle
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK		ASSAULT_RIFLE	$infoNode$

$MPGestureAttack AttackStand_ASSAULT_RIFLE  ASSAULT_RIFLE_fire          ACT_MERC_ATTACK_STAND_ASSAULT_RIFLE
$MPGestureAttack AttackCrouch_ASSAULT_RIFLE ASSAULT_RIFLE_fire  		ACT_MERC_ATTACK_CROUCH_ASSAULT_RIFLE
$MPGestureAttack AttackSwim_ASSAULT_RIFLE   ASSAULT_RIFLE_fire     ACT_MERC_ATTACK_SWIM_ASSAULT_RIFLE

$sequence layer_reload_standing_arms_ASSAULT_RIFLE "ASSAULT_RIFLE_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden

}
$sequence layer_reload_crouching_arms_ASSAULT_RIFLE "ASSAULT_RIFLE_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_swimming_arms_ASSAULT_RIFLE "ASSAULT_RIFLE_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$sequence layer_reload_airwalk_arms_ASSAULT_RIFLE "ASSAULT_RIFLE_swim_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 55 67
	hidden
}

$MPGestureReload_IK_AssaultRifle ReloadStand_ASSAULT_RIFLE     ASSAULT_RIFLE_reload        				ACT_MERC_RELOAD_STAND_ASSAULT_RIFLE    layer_reload_standing_arms_ASSAULT_RIFLE 0 4 55 67
$MPGestureReload_IK_AssaultRifle ReloadCrouch_ASSAULT_RIFLE    ASSAULT_RIFLE_crouch_reload 				ACT_MERC_RELOAD_CROUCH_ASSAULT_RIFLE   layer_reload_crouching_arms_ASSAULT_RIFLE 0 4 55 67
$MPGestureReload_IK_AssaultRifle ReloadSwim_ASSAULT_RIFLE      ASSAULT_RIFLE_swim_reload           ACT_MERC_RELOAD_SWIM_ASSAULT_RIFLE     layer_reload_swimming_arms_ASSAULT_RIFLE 0 4 55 67
$MPGestureReload_IK_AssaultRifle ReloadAirwalk_ASSAULT_RIFLE   ASSAULT_RIFLE_reload        ACT_MERC_RELOAD_AIRWALK_ASSAULT_RIFLE  layer_reload_airwalk_arms_ASSAULT_RIFLE 0 4 55 67

$sequence Stand_ASSAULT_RIFLE  ASSAULT_RIFLE_idle loop alignto a_reference addlayer ASSAULT_RIFLE_aimmatrix_idle activity ACT_MERC_STAND_ASSAULT_RIFLE 1
$sequence Crouch_ASSAULT_RIFLE ASSAULT_RIFLE_crouch_idle loop alignto a_reference addlayer ASSAULT_RIFLE_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_ASSAULT_RIFLE 1

// swim
$MPAimLayer_lefthandIK ASSAULT_RIFLE_aimmatrix_swim        ASSAULT_RIFLE_aimmatrix_idle        $infoNode$
$MPswimWithWeapon ASSAULT_RIFLE 0 0 0 0 0 0 0 0 ASSAULT_RIFLE_SwimN	ASSAULT_RIFLE_SwimCenter	ASSAULT_RIFLE_aimmatrix_swim	ACT_MERC_SWIM_ASSAULT_RIFLE $infonode$

//ASSAULT_RIFLE jump
$sequence a_jumpStart_ASSAULT_RIFLE ASSAULT_RIFLE_jump frames 0 25 addlayer ASSAULT_RIFLE_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_ASSAULT_RIFLE 1 LX LY
$sequence a_jumpfloat_ASSAULT_RIFLE ASSAULT_RIFLE_jump frames 26 189 addlayer ASSAULT_RIFLE_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_ASSAULT_RIFLE 1 LX LY
$sequence jumpLandPose_ASSAULT_RIFLE ASSAULT_RIFLE_jump frames 25 25 numframes 30 loop
$sequence jumpLand_ASSAULT_RIFLE { 
	ASSAULT_RIFLE_jump_land 
	subtract jumpLand_ASSAULT_RIFLE 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_ASSAULT_RIFLE 1 
}

// run
$animation a_runCenter_ASSAULT_RIFLE  ASSAULT_RIFLE_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_ASSAULT_RIFLE ASSAULT_RIFLE_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_ASSAULT_RIFLE ASSAULT_RIFLE_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_ASSAULT_RIFLE ASSAULT_RIFLE_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_ASSAULT_RIFLE ASSAULT_RIFLE_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_ASSAULT_RIFLE ASSAULT_RIFLE_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_ASSAULT_RIFLE ASSAULT_RIFLE_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_ASSAULT_RIFLE ASSAULT_RIFLE_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_ASSAULT_RIFLE ASSAULT_RIFLE_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_ASSAULT_RIFLE {
	a_runsw_ASSAULT_RIFLE	a_runS_ASSAULT_RIFLE		a_runSE_ASSAULT_RIFLE
	a_runW_ASSAULT_RIFLE	a_runCenter_ASSAULT_RIFLE	a_runE_ASSAULT_RIFLE
	a_runNW_ASSAULT_RIFLE	a_runN_ASSAULT_RIFLE		a_runNE_ASSAULT_RIFLE
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer ASSAULT_RIFLE_aimmatrix_run
	activity ACT_MERC_RUN_ASSAULT_RIFLE 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_ASSAULT_RIFLE 0 0 0 0 0 0 0 0 ASSAULT_RIFLE_crouch_walkN ASSAULT_RIFLE_crouch_walkCenter ASSAULT_RIFLE_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_ASSAULT_RIFLE $infoNode$

// airwalk
$sequence Airwalk_ASSAULT_RIFLE "ASSAULT_RIFLE_airwalk.dmx" fps 30 loop {
	addlayer ASSAULT_RIFLE_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_ASSAULT_RIFLE 1
}

$popd