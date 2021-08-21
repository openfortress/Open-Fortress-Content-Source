// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations_pistol.mdl

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
// Weightlists
//-----------------------------------------------------------------------------------

$Weightlist PistolMercenarySwimReloadArmsBlend {
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
$MPWeaponAims		PISTOL_MERCENARY	$infoNode$

$MPGestureAttack AttackStand_PISTOL_MERCENARY  PISTOL_MERCENARY_fire          ACT_MERC_ATTACK_STAND_PISTOL_MERCENARY
$MPGestureAttack AttackCrouch_PISTOL_MERCENARY PISTOL_MERCENARY_crouch_fire   ACT_MERC_ATTACK_CROUCH_PISTOL_MERCENARY
$MPGestureAttack AttackSwim_PISTOL_MERCENARY   PISTOL_MERCENARY_swim_fire     ACT_MERC_ATTACK_SWIM_PISTOL_MERCENARY


$sequence layer_reload_standing_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden

}
$sequence layer_reload_crouching_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden
}

$sequence layer_reload_swimming_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_swim_reload.dmx" weightlist PistolMercenarySwimReloadArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden
}

$sequence layer_reload_airwalk_arms_PISTOL_MERCENARY "PISTOL_MERCENARY_swim_reload.dmx" weightlist PistolMercenarySwimReloadArmsBlend {
	ikrule lhand touch "bip_pelvis" usesource range 19 25 26 29
	ikrule lhand touch "weapon_bone_1" usesource range 29 31 40 43
	hidden
}

$MPGestureReload_IK ReloadStand_PISTOL_MERCENARY     PISTOL_MERCENARY_reload        				ACT_MERC_RELOAD_STAND_PISTOL_MERCENARY    layer_reload_standing_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$MPGestureReload_IK ReloadCrouch_PISTOL_MERCENARY    PISTOL_MERCENARY_crouch_reload 				ACT_MERC_RELOAD_CROUCH_PISTOL_MERCENARY   layer_reload_crouching_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$MPGestureReload_IK ReloadSwim_PISTOL_MERCENARY      PISTOL_MERCENARY_swim_reload           ACT_MERC_RELOAD_SWIM_PISTOL_MERCENARY     layer_reload_swimming_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$MPGestureReload_IK ReloadAirwalk_PISTOL_MERCENARY   PISTOL_MERCENARY_reload        ACT_MERC_RELOAD_AIRWALK_PISTOL_MERCENARY  layer_reload_airwalk_arms_PISTOL_MERCENARY 0 5 50 55
{ 
	event AE_CL_MAG_EJECT 14
	event AE_CL_BODYGROUP_SET_VALUE 14 "magazine 1"
	event AE_CL_MAG_UNEJECT 30
	event AE_CL_BODYGROUP_SET_VALUE 30 "magazine 0"
}
$sequence Stand_PISTOL_MERCENARY  PISTOL_MERCENARY_idle loop alignto a_reference addlayer PISTOL_MERCENARY_aimmatrix_idle activity ACT_MERC_STAND_PISTOL_MERCENARY 1
$sequence Crouch_PISTOL_MERCENARY PISTOL_MERCENARY_crouch_idle loop alignto a_reference addlayer PISTOL_MERCENARY_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_PISTOL_MERCENARY 1

//quick swim tests
$MPAimLayer PISTOL_MERCENARY_aimmatrix_swim        PISTOL_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon PISTOL_MERCENARY 0 0 0 0 0 0 0 0 PISTOL_MERCENARY_SwimN	PISTOL_MERCENARY_SwimCenter	PISTOL_MERCENARY_aimmatrix_swim	ACT_MERC_SWIM_PISTOL_MERCENARY $infonode$

//PISTOL_MERCENARY jump
$sequence a_jumpStart_PISTOL_MERCENARY PISTOL_MERCENARY_jump frames 0 25 addlayer PISTOL_MERCENARY_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_PISTOL_MERCENARY 1 LX LY
$sequence a_jumpfloat_PISTOL_MERCENARY PISTOL_MERCENARY_jump frames 26 44 loop addlayer PISTOL_MERCENARY_aimmatrix_swim fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_PISTOL_MERCENARY 1 LX LY
$sequence jumpLandPose_PISTOL_MERCENARY PISTOL_MERCENARY_jump frames 25 25 numframes 30 loop
$sequence jumpLand_PISTOL_MERCENARY { 
	PISTOL_MERCENARY_jump_land 
	subtract jumpLand_PISTOL_MERCENARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_PISTOL_MERCENARY 1 
}

// run PISTOL_MERCENARY
$animation a_runCenter_PISTOL_MERCENARY  PISTOL_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_PISTOL_MERCENARY PISTOL_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_PISTOL_MERCENARY PISTOL_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_PISTOL_MERCENARY PISTOL_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_PISTOL_MERCENARY PISTOL_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_PISTOL_MERCENARY PISTOL_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_PISTOL_MERCENARY PISTOL_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_PISTOL_MERCENARY PISTOL_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_PISTOL_MERCENARY PISTOL_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_PISTOL_MERCENARY {
	a_runsw_PISTOL_MERCENARY	a_runS_PISTOL_MERCENARY		a_runSE_PISTOL_MERCENARY
	a_runW_PISTOL_MERCENARY	a_runCenter_PISTOL_MERCENARY	a_runE_PISTOL_MERCENARY
	a_runNW_PISTOL_MERCENARY	a_runN_PISTOL_MERCENARY		a_runNE_PISTOL_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer PISTOL_MERCENARY_aimmatrix_run
	activity ACT_MERC_RUN_PISTOL_MERCENARY 1
	{ event 7001 7 "right" }
    { event 7001 16 "left" }
}

$MPCrouchWalkWithWeapon Crouch_Walk_PISTOL_MERCENARY 0 0 0 0 0 0 0 0 PISTOL_MERCENARY_crouch_walkN PISTOL_MERCENARY_crouch_walkCenter PISTOL_MERCENARY_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_PISTOL_MERCENARY $infoNode$

$sequence Airwalk_PISTOL_MERCENARY "PISTOL_MERCENARY_airwalk.dmx" fps 30 loop {
	addlayer PISTOL_MERCENARY_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_PISTOL_MERCENARY 1
}

$popd