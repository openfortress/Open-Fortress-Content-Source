// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_combat_smg.mdl

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
// SMG Mercenary
//-----------------------------------------------------------------------------------
$Shotgun_WeaponAims_leftHandIK	SMG_MERCENARY	$infoNode$

$MPGestureAttack AttackStand_SMG_MERCENARY  SMG_MERCENARY_fire          ACT_MERC_ATTACK_STAND_SMG_MERCENARY
$MPGestureAttack AttackCrouch_SMG_MERCENARY SMG_MERCENARY_crouch_fire   ACT_MERC_ATTACK_CROUCH_SMG_MERCENARY
$MPGestureAttack AttackSwim_SMG_MERCENARY   SMG_MERCENARY_swim_fire     ACT_MERC_ATTACK_SWIM_SMG_MERCENARY

$sequence layer_reload_standing_arms_SMG_MERCENARY "SMG_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource range 0 10 17 19
	ikrule lhand touch "bip_pelvis" usesource range 23 27 29 32
	ikrule lhand touch "weapon_bone_1" usesource range 32 34 46 50
	hidden
}

$sequence layer_reload_crouching_arms_SMG_MERCENARY "SMG_MERCENARY_reload.dmx" weightlist ArmsBlend {
	ikrule lhand touch "weapon_bone_1" usesource range 0 10 17 19
	ikrule lhand touch "bip_pelvis" usesource range 23 27 29 32
	ikrule lhand touch "weapon_bone_1" usesource range 32 34 46 50
	hidden
}

$MPGestureReload_IK ReloadStand_SMG_MERCENARY  SMG_MERCENARY_reload ACT_MERC_RELOAD_STAND_SMG_MERCENARY 	layer_reload_standing_arms_SMG_MERCENARY 0 5 50 60
$MPGestureReload_IK ReloadAirwalk_SMG_MERCENARY  SMG_MERCENARY_reload ACT_MERC_RELOAD_AIRWALK_SMG_MERCENARY 	layer_reload_standing_arms_SMG_MERCENARY 0 5 50 60
$MPGestureReload_IK ReloadCrouch_SMG_MERCENARY SMG_MERCENARY_reload ACT_MERC_RELOAD_CROUCH_SMG_MERCENARY 	layer_reload_crouching_arms_SMG_MERCENARY 0 5 50 60
$MPGestureReload_IK ReloadSwim_SMG_MERCENARY   SMG_MERCENARY_reload ACT_MERC_RELOAD_SWIM_SMG_MERCENARY 	layer_reload_standing_arms_SMG_MERCENARY 0 5 50 60

$sequence Stand_SMG_MERCENARY  SMG_MERCENARY_idle loop addlayer SMG_MERCENARY_aimmatrix_idle activity ACT_MERC_STAND_SMG_MERCENARY 1
$sequence Crouch_SMG_MERCENARY SMG_MERCENARY_crouch_idle loop addlayer SMG_MERCENARY_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_SMG_MERCENARY 1

$MPAimLayer_lefthandIK_smg  SMG_MERCENARY_aimmatrix_swim        SMG_MERCENARY_aimmatrix_idle        $infoNode$
$MPswimWithWeapon SMG_MERCENARY 0 0 0 0 0 0 0 0 SMG_MERCENARY_SwimN	SMG_MERCENARY_SwimCenter	SMG_MERCENARY_aimmatrix_swim	ACT_MERC_SWIM_SMG_MERCENARY $infonode$

//SMG_MERCENARY Jump

$sequence a_jumpStart_SMG_MERCENARY SMG_MERCENARY_jump frames 0 25 addlayer SMG_MERCENARY_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_SMG_MERCENARY 1 LX LY
$sequence a_jumpfloat_SMG_MERCENARY SMG_MERCENARY_jump frames 25 44 addlayer SMG_MERCENARY_aimmatrix_swim loop fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_SMG_MERCENARY 1 LX LY
$sequence jumpLandPose_SMG_MERCENARY SMG_MERCENARY_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_SMG_MERCENARY { 
	SMG_MERCENARY_jump_land 
	subtract jumpland_SMG_MERCENARY 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_SMG_MERCENARY 1 
}

// smg_mercenary run

$animation a_runCenter_SMG_MERCENARY  SMG_MERCENARY_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_runS_SMG_MERCENARY SMG_MERCENARY_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSE_SMG_MERCENARY SMG_MERCENARY_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runE_SMG_MERCENARY SMG_MERCENARY_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNE_SMG_MERCENARY SMG_MERCENARY_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runN_SMG_MERCENARY SMG_MERCENARY_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runNW_SMG_MERCENARY SMG_MERCENARY_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runW_SMG_MERCENARY SMG_MERCENARY_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$animation a_runSW_SMG_MERCENARY SMG_MERCENARY_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 2 .. contact 1
}
$sequence Run_SMG_MERCENARY {
	a_runsw_SMG_MERCENARY	a_runS_SMG_MERCENARY		a_runSE_SMG_MERCENARY
	a_runW_SMG_MERCENARY	a_runCenter_SMG_MERCENARY	a_runE_SMG_MERCENARY
	a_runNW_SMG_MERCENARY	a_runN_SMG_MERCENARY		a_runNE_SMG_MERCENARY
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer SMG_MERCENARY_aimmatrix_run
	activity ACT_MERC_RUN_SMG_MERCENARY 1
	{ event 7001 7 "right" }
	{ event 7001 16 "left" }
}

// smg mercenary crouch walk
$MPCrouchWalkWithWeapon Crouch_Walk_SMG_MERCENARY        0 0 0 0 0 0 0 0 SMG_MERCENARY_crouch_walkN        SMG_MERCENARY_Crouch_walkCenter        SMG_MERCENARY_aimmatrix_crouch_idle        ACT_MERC_CROUCHWALK_SMG_MERCENARY $infoNode$

$sequence Airwalk_SMG_MERCENARY "SMG_MERCENARY_airwalk.dmx" fps 30 loop {
    addlayer SMG_MERCENARY_aimmatrix_swim
	activity ACT_MERC_AIRWALK_SMG_MERCENARY 1
}

$popd