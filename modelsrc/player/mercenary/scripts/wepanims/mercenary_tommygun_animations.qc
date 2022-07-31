// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_tommygun.mdl

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

$Weightlist TommyGunMercenarySwimReloadArmsBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_0" 0.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	}

//-----------------------------------------------------------------------------------
// Mercenary Pistol
//-----------------------------------------------------------------------------------
$MPWeaponAims		TOMMYGUN_MERCENARY	$infoNode$

$MPGestureAttack AttackStand_TOMMYGUN_MERCENARY  TOMMYGUN_MERCENARY_fire          ACT_MERC_ATTACK_STAND_TOMMYGUN_MERCENARY
$MPGestureAttack AttackCrouch_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_crouch_fire   ACT_MERC_ATTACK_CROUCH_TOMMYGUN_MERCENARY
$MPGestureAttack AttackSwim_TOMMYGUN_MERCENARY   TOMMYGUN_MERCENARY_swim_fire     ACT_MERC_ATTACK_SWIM_TOMMYGUN_MERCENARY


$sequence layer_reload_standing_arms_TOMMYGUN_MERCENARY "TOMMYGUN_MERCENARY_reload.dmx" weightlist ArmsBlend {	
	hidden
}

$sequence layer_reload_crouching_arms_TOMMYGUN_MERCENARY "TOMMYGUN_MERCENARY_crouch_reload.dmx" weightlist ArmsBlend {
	hidden
}

$sequence layer_reload_swimming_arms_TOMMYGUN_MERCENARY "TOMMYGUN_MERCENARY_swim_reload.dmx" weightlist TommyGunMercenarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone_2" usesource range 0 14 17 65
	hidden
}

$sequence layer_reload_airwalk_arms_TOMMYGUN_MERCENARY "TOMMYGUN_MERCENARY_swim_reload.dmx" weightlist TommyGunMercenarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone_2" usesource range 0 14 17 65
	hidden
}

$MPGestureReload_IK ReloadStand_TOMMYGUN_MERCENARY     TOMMYGUN_MERCENARY_reload        				ACT_MERC_RELOAD_STAND_TOMMYGUN_MERCENARY    layer_reload_standing_arms_TOMMYGUN_MERCENARY 0 14 17 65
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 20 "magazine 0"
}
$MPGestureReload_IK ReloadCrouch_TOMMYGUN_MERCENARY    TOMMYGUN_MERCENARY_crouch_reload 				ACT_MERC_RELOAD_CROUCH_TOMMYGUN_MERCENARY   layer_reload_crouching_arms_TOMMYGUN_MERCENARY 0 14 17 65
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 20 "magazine 0"
}
$MPGestureReload_IK ReloadSwim_TOMMYGUN_MERCENARY      TOMMYGUN_MERCENARY_swim_reload           ACT_MERC_RELOAD_SWIM_TOMMYGUN_MERCENARY     layer_reload_swimming_arms_TOMMYGUN_MERCENARY 0 14 17 65
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 20 "magazine 0"
}
$MPGestureReload_IK ReloadAirwalk_TOMMYGUN_MERCENARY   TOMMYGUN_MERCENARY_reload        ACT_MERC_RELOAD_AIRWALK_TOMMYGUN_MERCENARY  layer_reload_airwalk_arms_TOMMYGUN_MERCENARY 0 14 17 65
{ 
	event AE_CL_BODYGROUP_SET_VALUE 11 "magazine 1"
	event AE_CL_BODYGROUP_SET_VALUE 20 "magazine 0"
}

$sequence Stand_TOMMYGUN_MERCENARY  TOMMYGUN_MERCENARY_idle loop alignto a_reference addlayer TOMMYGUN_MERCENARY_aimmatrix_idle activity ACT_MERC_STAND_TOMMYGUN_MERCENARY 1
$sequence Crouch_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_crouch_idle loop alignto a_reference addlayer TOMMYGUN_MERCENARY_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_TOMMYGUN_MERCENARY 1

//quick swim tests
$MPAimLayer TOMMYGUN_MERCENARY_aimmatrix_swim        TOMMYGUN_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon TOMMYGUN_MERCENARY 0 0 0 0 0 0 0 0 TOMMYGUN_MERCENARY_SwimN	TOMMYGUN_MERCENARY_SwimCenter	TOMMYGUN_MERCENARY_aimmatrix_swim	ACT_MERC_SWIM_TOMMYGUN_MERCENARY $infonode$

//TOMMYGUN_MERCENARY jump
$sequence a_jumpStart_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_jump frames 0 25 addlayer TOMMYGUN_MERCENARY_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_TOMMYGUN_MERCENARY 1 LX LY
$sequence a_jumpfloat_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_jump frames 26 44 loop addlayer TOMMYGUN_MERCENARY_aimmatrix_swim fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_TOMMYGUN_MERCENARY 1 LX LY
$sequence jumpLandPose_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_jump frames 25 25 numframes 30 loop
$sequence jumpLand_TOMMYGUN_MERCENARY { 
	TOMMYGUN_MERCENARY_jump_land 
	subtract jumpLand_TOMMYGUN_MERCENARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_TOMMYGUN_MERCENARY 1 
}

// run TOMMYGUN_MERCENARY
$animation a_runCenter_TOMMYGUN_MERCENARY  TOMMYGUN_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_TOMMYGUN_MERCENARY TOMMYGUN_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_TOMMYGUN_MERCENARY {
	a_runsw_TOMMYGUN_MERCENARY	a_runS_TOMMYGUN_MERCENARY		a_runSE_TOMMYGUN_MERCENARY
	a_runW_TOMMYGUN_MERCENARY	a_runCenter_TOMMYGUN_MERCENARY	a_runE_TOMMYGUN_MERCENARY
	a_runNW_TOMMYGUN_MERCENARY	a_runN_TOMMYGUN_MERCENARY		a_runNE_TOMMYGUN_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer TOMMYGUN_MERCENARY_aimmatrix_run
	activity ACT_MERC_RUN_TOMMYGUN_MERCENARY 1
	{ event 7001 7 "right" }
    { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_TOMMYGUN_MERCENARY 0 0 0 0 0 0 0 0 TOMMYGUN_MERCENARY_crouch_walkN TOMMYGUN_MERCENARY_crouch_walkCenter TOMMYGUN_MERCENARY_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_TOMMYGUN_MERCENARY $infoNode$

$sequence Airwalk_TOMMYGUN_MERCENARY "TOMMYGUN_MERCENARY_airwalk.dmx" fps 30 loop {
	addlayer TOMMYGUN_MERCENARY_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_TOMMYGUN_MERCENARY 1
}

$popd