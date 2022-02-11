// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_akimbo.mdl

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

$Weightlist ArmsBlendAkimbo {
	"bip_pelvis" 0.0 
	"bip_hip_R" 0.0 
	"bip_hip_L" 0.0 
	"bip_spine_0" 0.5
	"bip_spine_1" 0.7
	"bip_spine_2" 0.9
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0 
	"bip_lowerArm_L" 1.0 
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0 
	"bip_lowerArm_R" 1.0 
	}
	

//-----------------------------------------------------------------------------------
// Akimbo Pistols
//-----------------------------------------------------------------------------------
$MPWeaponAims		PISTOL_AKIMBO	$infoNode$

$MPGestureAttack AttackStand_PISTOL_AKIMBO  PISTOL_AKIMBO_fire          ACT_MERC_ATTACK_STAND_PISTOL_AKIMBO
$MPGestureAttack AttackSwim_PISTOL_AKIMBO   PISTOL_AKIMBO_swim_fire     ACT_MERC_ATTACK_SWIM_PISTOL_AKIMBO

$MPGestureAttack AttackStand_PISTOL_AKIMBO_left  PISTOL_AKIMBO_fire_left          ACT_MERC_ATTACK_STAND_PISTOL_AKIMBO
$MPGestureAttack AttackSwim_PISTOL_AKIMBO_left   PISTOL_AKIMBO_swim_fire_left    ACT_MERC_ATTACK_SWIM_PISTOL_AKIMBO

//PISTOL_AKIMBO Crouch Fire
$sequence AttackCrouch_PISTOL_AKIMBO {
	PISTOL_AKIMBO_crouch_fire
	weightlist HipsUpperBody
	subtract AttackCrouch_PISTOL_AKIMBO 0
	delta
	weightlist HipsUpperBody
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MERC_ATTACK_CROUCH_PISTOL_AKIMBO 1
}

//PISTOL_AKIMBO Crouch Fire
$sequence AttackCrouch_PISTOL_AKIMBO_left {
	PISTOL_AKIMBO_crouch_fire_left
	weightlist HipsUpperBody
	subtract AttackCrouch_PISTOL_AKIMBO_left 0
	delta
	weightlist HipsUpperBody
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MERC_ATTACK_CROUCH_PISTOL_AKIMBO 1
}

//PISTOL_AKIMBO Reloads
$sequence layer_reload_standing_arms_PISTOL_AKIMBO "PISTOL_AKIMBO_reload.dmx" weightlist ArmsBlendAkimbo {
	hidden
	ikrule lhand touch "bip_pelvis" usesource range 30 37 37 43
	ikrule rhand touch "bip_pelvis" usesource range 30 37 37 43
	localhierarchy "weapon_bone" "bip_hand_l"
	localhierarchy "weapon_bone_1" "weapon_bone"
	localhierarchy "weapon_bone_2" "bip_hand_l"
	fps 35
}

//PISTOL_AKIMBO Reloads
$sequence layer_reload_airwalk_arms_PISTOL_AKIMBO "PISTOL_AKIMBO_reload_airwalk.dmx" weightlist ArmsBlendAkimbo {
	hidden
	ikrule lhand touch "bip_pelvis" usesource range 30 37 37 43
	ikrule rhand touch "bip_pelvis" usesource range 30 37 37 43
	localhierarchy "weapon_bone" "bip_hand_l"
	localhierarchy "weapon_bone_1" "weapon_bone"
	localhierarchy "weapon_bone_2" "bip_hand_l"
	fps 35
}

$sequence layer_reload_crouch_arms_PISTOL_AKIMBO "PISTOL_AKIMBO_crouch_reload.dmx" weightlist ArmsBlendAkimbo {
	hidden
	ikrule lhand touch "bip_pelvis" usesource range 30 37 37 43
	ikrule rhand touch "bip_pelvis" usesource range 30 37 37 43
	localhierarchy "weapon_bone" "bip_hand_l"
	localhierarchy "weapon_bone_1" "weapon_bone"
	localhierarchy "weapon_bone_2" "bip_hand_l"
	fps 35
}

//$MPGestureReload_IK ReloadStand_PISTOL_AKIMBO     PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_STAND_PISTOL_AKIMBO    layer_reload_standing_arms_PISTOL_AKIMBO 0 4 76 86
//$MPGestureReload_IK ReloadCrouch_PISTOL_AKIMBO    PISTOL_AKIMBO_crouch_reload 	      ACT_MERC_RELOAD_CROUCH_PISTOL_AKIMBO   layer_reload_crouch_arms_PISTOL_AKIMBO 0 4 76 86
//$MPGestureReload_IK ReloadSwim_PISTOL_AKIMBO      PISTOL_AKIMBO_swim_reload           ACT_MERC_RELOAD_SWIM_PISTOL_AKIMBO     layer_reload_standing_arms_PISTOL_AKIMBO 0 4 76 86
//$MPGestureReload_IK ReloadAirwalk_PISTOL_AKIMBO   PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_AIRWALK_PISTOL_AKIMBO  layer_reload_airwalk_arms_PISTOL_AKIMBO 0 4 76 86

$MPGestureReload_IK ReloadStand_PISTOL_AKIMBO     PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_STAND_PISTOL_AKIMBO    layer_reload_standing_arms_PISTOL_AKIMBO 0 4 76 86
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_left 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_left 0"
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_right 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_right 0"
}

$MPGestureReload_IK ReloadCrouch_PISTOL_AKIMBO    PISTOL_AKIMBO_crouch_reload 	      ACT_MERC_RELOAD_CROUCH_PISTOL_AKIMBO   layer_reload_crouch_arms_PISTOL_AKIMBO 0 4 76 86
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_left 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_left 0"
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_right 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_right 0"
}

$MPGestureReload_IK ReloadSwim_PISTOL_AKIMBO      PISTOL_AKIMBO_swim_reload           ACT_MERC_RELOAD_SWIM_PISTOL_AKIMBO     layer_reload_standing_arms_PISTOL_AKIMBO 0 4 76 86
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_left 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_left 0"
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_right 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_right 0"
}

$MPGestureReload_IK ReloadAirwalk_PISTOL_AKIMBO   PISTOL_AKIMBO_reload                ACT_MERC_RELOAD_AIRWALK_PISTOL_AKIMBO  layer_reload_airwalk_arms_PISTOL_AKIMBO 0 4 76 86
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_left 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_left 0"
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine_right 1"
	event AE_CL_BODYGROUP_SET_VALUE 40 "magazine_right 0"
}

$sequence Stand_PISTOL_AKIMBO  PISTOL_AKIMBO_idle loop alignto a_reference addlayer PISTOL_AKIMBO_aimmatrix_idle activity ACT_MERC_STAND_PISTOL_AKIMBO 1
$sequence Crouch_PISTOL_AKIMBO PISTOL_AKIMBO_crouch_idle loop alignto a_reference addlayer PISTOL_AKIMBO_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_PISTOL_AKIMBO 1

$MPAimLayer PISTOL_AKIMBO_aimmatrix_swim        PISTOL_AKIMBO_aimmatrix_idle        $infoNode$
$MPswimWithWeapon PISTOL_AKIMBO 0 0 0 0 0 0 0 0 PISTOL_AKIMBO_SwimN	PISTOL_AKIMBO_SwimCenter	PISTOL_AKIMBO_aimmatrix_swim	ACT_MERC_SWIM_PISTOL_AKIMBO $infonode$

//PISTOL_AKIMBO jump
$sequence a_jumpStart_PISTOL_AKIMBO PISTOL_AKIMBO_jump frames 0 25 addlayer PISTOL_AKIMBO_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_PISTOL_AKIMBO 1 LX LY
$sequence a_jumpfloat_PISTOL_AKIMBO PISTOL_AKIMBO_jump frames 25 44 loop  fps 30 addlayer PISTOL_AKIMBO_aimmatrix_swim alignto a_reference activity ACT_MERC_JUMP_FLOAT_PISTOL_AKIMBO 1 LX LY
$sequence jumpLandPose_PISTOL_AKIMBO PISTOL_AKIMBO_jump frames 25 25 numframes 30 loop
$sequence jumpLand_PISTOL_AKIMBO { 
	PISTOL_AKIMBO_jump_land 
	subtract jumpLand_PISTOL_AKIMBO 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_PISTOL_AKIMBO 1 
}

// PISTOL_AKIMBO run
$animation a_runCenter_PISTOL_AKIMBO  PISTOL_AKIMBO_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_runS_PISTOL_AKIMBO PISTOL_AKIMBO_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSE_PISTOL_AKIMBO PISTOL_AKIMBO_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runE_PISTOL_AKIMBO PISTOL_AKIMBO_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNE_PISTOL_AKIMBO PISTOL_AKIMBO_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runN_PISTOL_AKIMBO PISTOL_AKIMBO_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNW_PISTOL_AKIMBO PISTOL_AKIMBO_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runW_PISTOL_AKIMBO PISTOL_AKIMBO_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSW_PISTOL_AKIMBO PISTOL_AKIMBO_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}

//$MPAimLayer PISTOL_AKIMBO_aimMatrix	    PISTOL_AKIMBO_aimMatrix	$infoNode$

$sequence Run_PISTOL_AKIMBO {
	a_runsw_PISTOL_AKIMBO	a_runS_PISTOL_AKIMBO		a_runSE_PISTOL_AKIMBO
	a_runW_PISTOL_AKIMBO	a_runCenter_PISTOL_AKIMBO	a_runE_PISTOL_AKIMBO
	a_runNW_PISTOL_AKIMBO	a_runN_PISTOL_AKIMBO		a_runNE_PISTOL_AKIMBO
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer PISTOL_AKIMBO_aimmatrix_run
	activity ACT_MERC_RUN_PISTOL_AKIMBO 1
	{ event 7001 7 "right" }
	{ event 7001 16 "left" }
}

//PISTOL_AKIMBO crouch walk
$MPCrouchWalkWithWeapon Crouch_Walk_PISTOL_AKIMBO        0 0 0 0 0 0 0 0 PISTOL_AKIMBO_crouch_walkN        PISTOL_AKIMBO_Crouch_idle       PISTOL_AKIMBO_aimmatrix_Crouch_idle        ACT_MERC_CROUCHWALK_PISTOL_AKIMBO $infoNode$

$sequence Airwalk_PISTOL_AKIMBO "PISTOL_AKIMBO_airwalk.dmx" fps 30 loop {
	addlayer PISTOL_AKIMBO_aimmatrix_swim 
	activity ACT_MERC_AIRWALK_PISTOL_AKIMBO 1
}

$popd