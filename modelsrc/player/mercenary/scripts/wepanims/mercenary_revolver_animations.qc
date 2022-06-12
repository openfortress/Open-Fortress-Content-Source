// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_revolver.mdl

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
	
$Weightlist RevolverMercenarySwimReloadArmsBlend {
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
// Weightlists
//-----------------------------------------------------------------------------------
	
$Weightlist RevolverMercenaryCrouchBlend {
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
// Revolver Mercenary
//-----------------------------------------------------------------------------------

$MPWeaponAims		REVOLVER_MERCENARY	$infoNode$

$MPGestureAttack AttackStand_REVOLVER_MERCENARY  REVOLVER_MERCENARY_fire          ACT_MERC_ATTACK_STAND_REVOLVER_MERCENARY
$MPGestureAttack AttackCrouch_REVOLVER_MERCENARY REVOLVER_MERCENARY_crouch_fire   ACT_MERC_ATTACK_CROUCH_REVOLVER_MERCENARY
$MPGestureAttack AttackSwim_REVOLVER_MERCENARY   REVOLVER_MERCENARY_swim_fire     ACT_MERC_ATTACK_SWIM_REVOLVER_MERCENARY

$sequence layer_reload_standing_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden

}
$sequence layer_reload_crouching_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_crouch_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden
}

$sequence layer_reload_swimming_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_swim_reload.dmx" weightlist RevolverMercenarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden
}

$sequence layer_reload_airwalk_arms_REVOLVER_MERCENARY "REVOLVER_MERCENARY_swim_reload.dmx" weightlist RevolverMercenarySwimReloadArmsBlend {
	ikrule lhand touch "weapon_bone" usesource range 0 6 50 60
	hidden
}

$MPGestureReload_IK ReloadStand_REVOLVER_MERCENARY     REVOLVER_MERCENARY_reload        				ACT_MERC_RELOAD_STAND_REVOLVER_MERCENARY    layer_reload_standing_arms_REVOLVER_MERCENARY 0 6 50 60
$MPGestureReload_IK ReloadCrouch_REVOLVER_MERCENARY    REVOLVER_MERCENARY_crouch_reload 				ACT_MERC_RELOAD_CROUCH_REVOLVER_MERCENARY   layer_reload_crouching_arms_REVOLVER_MERCENARY 0 6 50 60
$MPGestureReload_IK ReloadSwim_REVOLVER_MERCENARY      REVOLVER_MERCENARY_swim_reload           ACT_MERC_RELOAD_SWIM_REVOLVER_MERCENARY     layer_reload_swimming_arms_REVOLVER_MERCENARY 0 6 50 60
$MPGestureReload_IK ReloadAirwalk_REVOLVER_MERCENARY   REVOLVER_MERCENARY_reload        ACT_MERC_RELOAD_AIRWALK_REVOLVER_MERCENARY  layer_reload_airwalk_arms_REVOLVER_MERCENARY 0 6 50 60

$sequence Stand_REVOLVER_MERCENARY  REVOLVER_MERCENARY_idle loop alignto a_reference addlayer REVOLVER_MERCENARY_aimmatrix_idle activity ACT_MERC_STAND_REVOLVER_MERCENARY 1
$sequence Crouch_REVOLVER_MERCENARY REVOLVER_MERCENARY_crouch_idle loop alignto a_reference addlayer REVOLVER_MERCENARY_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_REVOLVER_MERCENARY 1

// swim
$MPAimLayer REVOLVER_MERCENARY_aimmatrix_swim        REVOLVER_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon REVOLVER_MERCENARY 0 0 0 0 0 0 0 0 REVOLVER_MERCENARY_SwimN	REVOLVER_MERCENARY_SwimCenter	REVOLVER_MERCENARY_aimmatrix_swim	ACT_MERC_SWIM_REVOLVER_MERCENARY $infonode$

//REVOLVER_MERCENARY jump
$sequence a_jumpStart_REVOLVER_MERCENARY REVOLVER_MERCENARY_jump frames 0 25 addlayer REVOLVER_MERCENARY_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_REVOLVER_MERCENARY 1 LX LY
$sequence a_jumpfloat_REVOLVER_MERCENARY REVOLVER_MERCENARY_jump frames 26 189 addlayer REVOLVER_MERCENARY_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_REVOLVER_MERCENARY 1 LX LY
$sequence jumpLandPose_REVOLVER_MERCENARY REVOLVER_MERCENARY_jump frames 25 25 numframes 30 loop
$sequence jumpLand_REVOLVER_MERCENARY { 
	REVOLVER_MERCENARY_jump_land 
	subtract jumpLand_REVOLVER_MERCENARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_REVOLVER_MERCENARY 1 
}

// run
$animation a_runCenter_REVOLVER_MERCENARY  REVOLVER_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_REVOLVER_MERCENARY REVOLVER_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_REVOLVER_MERCENARY REVOLVER_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_REVOLVER_MERCENARY REVOLVER_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_REVOLVER_MERCENARY REVOLVER_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_REVOLVER_MERCENARY REVOLVER_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_REVOLVER_MERCENARY REVOLVER_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_REVOLVER_MERCENARY REVOLVER_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_REVOLVER_MERCENARY REVOLVER_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_REVOLVER_MERCENARY {
	a_runsw_REVOLVER_MERCENARY	a_runS_REVOLVER_MERCENARY		a_runSE_REVOLVER_MERCENARY
	a_runW_REVOLVER_MERCENARY	a_runCenter_REVOLVER_MERCENARY	a_runE_REVOLVER_MERCENARY
	a_runNW_REVOLVER_MERCENARY	a_runN_REVOLVER_MERCENARY		a_runNE_REVOLVER_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer REVOLVER_MERCENARY_aimmatrix_run
	activity ACT_MERC_RUN_REVOLVER_MERCENARY 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_REVOLVER_MERCENARY 0 0 0 0 0 0 0 0 REVOLVER_MERCENARY_crouch_walkN REVOLVER_MERCENARY_crouch_walkCenter REVOLVER_MERCENARY_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_REVOLVER_MERCENARY $infoNode$

// airwalk
$sequence Airwalk_REVOLVER_MERCENARY "REVOLVER_MERCENARY_airwalk.dmx" fps 30 loop {
	addlayer REVOLVER_MERCENARY_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_REVOLVER_MERCENARY 1
}

$popd