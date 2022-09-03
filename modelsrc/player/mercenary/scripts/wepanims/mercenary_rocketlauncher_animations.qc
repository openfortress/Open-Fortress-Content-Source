// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_rocketlauncher.mdl

$definevariable infoNode "mercenaryInfo"
$include "../mercenary_definebones.qci"

// include the file that sets up the ikchains
$include "../../../TF_animation_rules/ruleshierarchy.qci"
$include "../../../TF_animation_rules/TF_macros_list_merc.qci"

$pushd "../../animations/dmx"

//-----------------------------------------------------------------------------------
// References
//-----------------------------------------------------------------------------------
$animation a_reference "ROCKETLAUNCHER_idle.dmx" lx ly
$sequence ragdollspawn "ROCKETLAUNCHER_idle.dmx" lx ly

//-----------------------------------------------------------------------------------
// Weightlists
//-----------------------------------------------------------------------------------	
$weightlist RocketlauncherMercStandArmsBlend {
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
// ROCKETLAUNCHER
//-----------------------------------------------------------------------------------

$MPWeaponAims		ROCKETLAUNCHER	$infoNode$

$MPGestureAttack AttackStand_ROCKETLAUNCHER  ROCKETLAUNCHER_fire          ACT_MERC_ATTACK_STAND_ROCKETLAUNCHER weightlist RocketlauncherMercStandArmsBlend
$MPGestureAttack AttackCrouch_ROCKETLAUNCHER ROCKETLAUNCHER_crouch_fire   ACT_MERC_ATTACK_CROUCH_ROCKETLAUNCHER weightlist RocketlauncherMercStandArmsBlend
$MPGestureAttack AttackSwim_ROCKETLAUNCHER   ROCKETLAUNCHER_swim_fire     ACT_MERC_ATTACK_SWIM_ROCKETLAUNCHER weightlist RocketlauncherMercStandArmsBlend

$sequence layer_reload_standing_arms_merc "ROCKETLAUNCHER_reload.dmx" weightlist ArmsBlend {
	frames 0 33
	numframes 33
	fps 30
	//ikrule rhand touch "bip_pelvis" usesource range 1 8 16 32
	//ikrule rhand touch "weapon_bone" usesource range 1 8 16 32
	//localhierarchy "weapon_bone" "bip_hand_l"
	hidden
}

$animation merc_reload_startpose ROCKETLAUNCHER_reload frames 0 0
$sequence ReloadStand_ROCKETLAUNCHER {
	ROCKETLAUNCHER_reload
	frames 0 33
	numframes 33
	fps 30
	subtract ReloadStand_ROCKETLAUNCHER 0
	delta
	//ikrule lhand release
	//ikrule rhand release
	//localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_merc 0 4 32 33
 	activity ACT_MERC_RELOAD_STAND_ROCKETLAUNCHER 1
 	event AE_CL_BODYGROUP_SET_VALUE 11 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 21 "rocket 0"
}

$sequence layer_reload_standing_arms_loop_merc "ROCKETLAUNCHER_reload.dmx" weightlist ArmsBlend {
	frames 33 60
	numframes 28
	loop
	fps 30
	//ikrule rhand touch "bip_pelvis" usesource range 1 8 16 32
	//ikrule rhand touch "weapon_bone" usesource range 1 8 16 32
	localhierarchy "weapon_bone" "bip_hand_l"
	hidden
}
$sequence ReloadStand_ROCKETLAUNCHER_loop {
	ROCKETLAUNCHER_reload
	frames 33 60
	numframes 28
  loop
	fps 30
	subtract merc_reload_startpose 0
	loop
	delta
	//ikrule lhand release
	//ikrule rhand release
	//localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_loop_merc	
 	activity ACT_MERC_RELOAD_STAND_ROCKETLAUNCHER_LOOP 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"
 	event AE_CL_BODYGROUP_SET_VALUE 12 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 22 "rocket 0"
}

$sequence layer_reload_standing_arms_end_merc "ROCKETLAUNCHER_reload.dmx" weightlist ArmsBlend {
	frames 70 88
	numframes 21
	fps 44
	//ikrule rhand touch "bip_pelvis" usesource range 1 8 16 32
	//ikrule rhand touch "weapon_bone" usesource range 1 8 16 32
	//localhierarchy "weapon_bone" "bip_hand_l"
	hidden
}
$sequence ReloadStand_ROCKETLAUNCHER_end {
	ROCKETLAUNCHER_reload
	frames 70 88
	fps 30
	subtract merc_reload_startpose 0
	delta
	//ikrule lhand release
	//ikrule rhand release
	//localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_end_merc 0 0 10 18 spline
 	activity ACT_MERC_RELOAD_STAND_ROCKETLAUNCHER_END 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"

}

$sequence ReloadCrouch_ROCKETLAUNCHER {
	ROCKETLAUNCHER_reload
	frames 0 33
	numframes 33
	fps 30
	subtract ReloadCrouch_ROCKETLAUNCHER 0
	delta
	//ikrule lhand release
	//ikrule rhand release
	localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_merc 0 4 32 32
 	activity ACT_MERC_RELOAD_CROUCH_ROCKETLAUNCHER 1
 	event AE_CL_BODYGROUP_SET_VALUE 11 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 21 "rocket 0"
}

$sequence ReloadAirwalk_ROCKETLAUNCHER {
	ROCKETLAUNCHER_reload
	frames 0 33
	numframes 33
	fps 30
	subtract ReloadAirwalk_ROCKETLAUNCHER 0
	delta
	//ikrule lhand release
	//ikrule rhand release
	localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_merc 0 4 32 32
 	activity ACT_MERC_RELOAD_AIRWALK_ROCKETLAUNCHER 1
 	event AE_CL_BODYGROUP_SET_VALUE 11 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 21 "rocket 0"
}

$sequence ReloadCrouch_ROCKETLAUNCHER_loop {
	ROCKETLAUNCHER_reload
	frames 33 60
	numframes 28
  loop
	fps 30
	subtract merc_reload_startpose 0
	loop
	delta
	//ikrule lhand release
	//ikrule rhand release
	localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_loop_merc
 	activity ACT_MERC_RELOAD_CROUCH_ROCKETLAUNCHER_LOOP 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"
 	event AE_CL_BODYGROUP_SET_VALUE 12 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 22 "rocket 0"
}
$sequence ReloadAirwalk_ROCKETLAUNCHER_loop {
	ROCKETLAUNCHER_reload
	frames 33 60
	numframes 28
  loop
	fps 30
	subtract merc_reload_startpose 0
	loop
	delta
	//ikrule lhand release
	//ikrule rhand release
	localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_standing_arms_loop_merc
 	activity ACT_MERC_RELOAD_AIRWALK_ROCKETLAUNCHER_LOOP 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"
 	event AE_CL_BODYGROUP_SET_VALUE 12 "rocket 1"
 	event AE_CL_BODYGROUP_SET_VALUE 22 "rocket 0"
}

$sequence ReloadCrouch_ROCKETLAUNCHER_end {
	ROCKETLAUNCHER_reload
	frames 70 88
	fps 30
	subtract merc_reload_startpose 0
	delta
	//ikrule lhand release
	//ikrule rhand release
	localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_end_merc 0 0 10 18 spline
 	activity ACT_MERC_RELOAD_CROUCH_ROCKETLAUNCHER_END 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"

}
$sequence ReloadAirwalk_ROCKETLAUNCHER_end {
	ROCKETLAUNCHER_reload
	frames 70 88
	fps 30
	subtract merc_reload_startpose 0
	delta
	//ikrule lhand release
	//ikrule rhand release
	localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	blendlayer layer_reload_standing_arms_end_merc 0 0 10 18 spline
 	activity ACT_MERC_RELOAD_AIRWALK_ROCKETLAUNCHER_END 1
 	event AE_CL_BODYGROUP_SET_VALUE 1 "rocket 0"

}


$sequence layer_reload_swim_arms_merc "ROCKETLAUNCHER_swim_reload.dmx" weightlist ArmsBlend {
	fps 44
	ikrule rhand touch "bip_pelvis" usesource range 0 1 1 32
	ikrule rhand touch "weapon_bone" usesource range 0 1 1 32
	localhierarchy "weapon_bone" "bip_hand_l"
	hidden
}
$sequence ReloadSwim_ROCKETLAUNCHER {
	ROCKETLAUNCHER_swim_reload
	fps 44
	subtract ReloadSwim_ROCKETLAUNCHER 0
	delta
	ikrule lhand release
	ikrule rhand release
	localhierarchy "weapon_bone" "bip_hand_l"
	iklock rfoot 1 0 iklock lfoot 1 0
 	addlayer layer_reload_swim_arms_merc
 	activity ACT_MERC_RELOAD_SWIM_ROCKETLAUNCHER 1
}

$sequence Stand_ROCKETLAUNCHER  ROCKETLAUNCHER_idle loop alignto a_reference addlayer ROCKETLAUNCHER_aimmatrix_idle activity ACT_MERC_STAND_ROCKETLAUNCHER 1
$sequence Crouch_ROCKETLAUNCHER ROCKETLAUNCHER_crouch_idle loop alignto a_reference addlayer ROCKETLAUNCHER_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_ROCKETLAUNCHER 1

// swim
$MPAimLayer ROCKETLAUNCHER_aimmatrix_swim        ROCKETLAUNCHER_aimmatrix_idle        $infoNode$
$MPswimWithWeapon ROCKETLAUNCHER 0 0 0 0 0 0 0 0 ROCKETLAUNCHER_SwimN	ROCKETLAUNCHER_SwimCenter	ROCKETLAUNCHER_aimmatrix_swim	ACT_MERC_SWIM_ROCKETLAUNCHER $infonode$

//ROCKETLAUNCHER jump
$sequence a_jumpStart_ROCKETLAUNCHER ROCKETLAUNCHER_jump frames 0 25 addlayer ROCKETLAUNCHER_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_ROCKETLAUNCHER 1 LX LY
$sequence a_jumpfloat_ROCKETLAUNCHER ROCKETLAUNCHER_jump frames 26 189 addlayer ROCKETLAUNCHER_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_ROCKETLAUNCHER 1 LX LY
$sequence jumpLandPose_ROCKETLAUNCHER ROCKETLAUNCHER_jump frames 25 25 numframes 30 loop
$sequence jumpLand_ROCKETLAUNCHER { 
	ROCKETLAUNCHER_jump_land 
	subtract jumpLand_ROCKETLAUNCHER 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_ROCKETLAUNCHER 1 
}

// run
$animation a_runCenter_ROCKETLAUNCHER  ROCKETLAUNCHER_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_ROCKETLAUNCHER ROCKETLAUNCHER_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_ROCKETLAUNCHER ROCKETLAUNCHER_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_ROCKETLAUNCHER ROCKETLAUNCHER_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_ROCKETLAUNCHER ROCKETLAUNCHER_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_ROCKETLAUNCHER ROCKETLAUNCHER_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_ROCKETLAUNCHER ROCKETLAUNCHER_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_ROCKETLAUNCHER ROCKETLAUNCHER_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_ROCKETLAUNCHER ROCKETLAUNCHER_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_ROCKETLAUNCHER {
	a_runsw_ROCKETLAUNCHER	a_runS_ROCKETLAUNCHER		a_runSE_ROCKETLAUNCHER
	a_runW_ROCKETLAUNCHER	a_runCenter_ROCKETLAUNCHER	a_runE_ROCKETLAUNCHER
	a_runNW_ROCKETLAUNCHER	a_runN_ROCKETLAUNCHER		a_runNE_ROCKETLAUNCHER
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer ROCKETLAUNCHER_aimmatrix_run
	activity ACT_MERC_RUN_ROCKETLAUNCHER 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_ROCKETLAUNCHER 0 0 0 0 0 0 0 0 ROCKETLAUNCHER_crouch_walkN ROCKETLAUNCHER_crouch_walkCenter ROCKETLAUNCHER_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_ROCKETLAUNCHER $infoNode$

// airwalk
$sequence Airwalk_ROCKETLAUNCHER "ROCKETLAUNCHER_airwalk.dmx" fps 30 loop {
	addlayer ROCKETLAUNCHER_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_ROCKETLAUNCHER 1
}

$popd