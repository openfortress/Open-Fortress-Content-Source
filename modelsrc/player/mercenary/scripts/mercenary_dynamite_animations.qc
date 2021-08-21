// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/mercenary_animations_dynamite.mdl

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
// DYNAMITE
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK	DYNAMITE	$infoNode$
$MPAimLayer_leftHandIK  DYNAMITE_aimmatrix_deployed        	DYNAMITE_aimmatrix_deployed      $infoNode$
$MPAimLayer_leftHandIK  DYNAMITE_crouch_aimmatrix_deployed	  DYNAMITE_crouch_aimmatrix_deployed	$infoNode$
$MPGestureAttack AttackStand_DYNAMITE   DYNAMITE_fire         ACT_MERC_ATTACK_STAND_DYNAMITE  IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackCrouch_DYNAMITE  DYNAMITE_crouch_fire  ACT_MERC_ATTACK_CROUCH_DYNAMITE IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackSwim_DYNAMITE    DYNAMITE_fire         ACT_MERC_ATTACK_SWIM_DYNAMITE   IKrule lhand touch "weapon_bone" usesource

$MPGestureAttack AttackCrouch_DYNAMITE_DEPLOYED  DYNAMITE_DEPLOYED_crouch_fire   ACT_MERC_ATTACK_CROUCH_DYNAMITE_DEPLOYED
$MPGestureAttack AttackSwim_DYNAMITE_DEPLOYED    DYNAMITE_fire          ACT_MERC_ATTACK_SWIM_DYNAMITE_DEPLOYED
$MPGestureReload ReloadStand_DYNAMITE_DEPLOYED   DYNAMITE_idle_deployed          ACT_MERC_RELOAD_STAND_DYNAMITE_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadCrouch_DYNAMITE_DEPLOYED  DYNAMITE_idle_deployed          ACT_MERC_RELOAD_CROUCH_DYNAMITE_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadSwim_DYNAMITE_DEPLOYED    DYNAMITE_idle_deployed          ACT_MERC_RELOAD_SWIM_DYNAMITE_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0

$MPGestureReload ReloadStand_DYNAMITE  DYNAMITE_idle        ACT_MERC_RELOAD_STAND_DYNAMITE IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadCrouch_DYNAMITE  DYNAMITE_idle ACT_MERC_RELOAD_CROUCH_DYNAMITE IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadSwim_DYNAMITE   DYNAMITE_idle   ACT_MERC_RELOAD_SWIM_DYNAMITE IKrule lhand touch "weapon_bone" usesource frames 0 0

$sequence attackstand_DYNAMITE_fire {
	DYNAMITE_fire
	subtract attackstand_DYNAMITE_fire 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MERC_ATTACK_STAND_DYNAMITE_DEPLOYED 1 
}

$sequence Stand_DYNAMITE  DYNAMITE_idle loop addlayer DYNAMITE_aimmatrix_idle activity ACT_MERC_STAND_DYNAMITE 1
$sequence Crouch_DYNAMITE DYNAMITE_crouch_idle loop addlayer DYNAMITE_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_DYNAMITE 1

//DYNAMITE Jump

$sequence a_jumpStart_DYNAMITE DYNAMITE_jump addlayer DYNAMITE_aimmatrix_idle frames 0 25 alignto a_reference Z activity ACT_MERC_JUMP_START_DYNAMITE 1 LX LY
$sequence a_jumpfloat_DYNAMITE DYNAMITE_jump addlayer DYNAMITE_aimmatrix_idle frames 26 66 loop  fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_DYNAMITE 1 LX LY
$sequence jumpLandPose_DYNAMITE DYNAMITE_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_DYNAMITE { 
	DYNAMITE_jump_land 
	subtract jumpland_DYNAMITE 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_DYNAMITE 1 
}


$MPAimLayer_lefthandIK  DYNAMITE_aimmatrix_swim        DYNAMITE_aimmatrix_idle        $infoNode$
$MPswimWithWeapon DYNAMITE 0 0 0 0 0 0 0 0 DYNAMITE_SwimN	DYNAMITE_SwimCenter	DYNAMITE_aimmatrix_swim	ACT_MERC_SWIM_DYNAMITE $infonode$
$MPswimWithWeapon DYNAMITE_deployed 0 0 0 0 0 0 0 0 DYNAMITE_deployed_SwimN DYNAMITE_deployed_SwimCenter	DYNAMITE_aimmatrix_deployed	ACT_MERC_DYNAMITE_SWIM_DEPLOYED $infonode$

// deployed

$sequence Crouch_Deployed_DYNAMITE  DYNAMITE_crouch_idle_deployed {
	loop
	addlayer DYNAMITE_crouch_aimmatrix_deployed
	activity ACT_MERC_CROUCH_DYNAMITE_DEPLOYED_IDLE 1
}

$sequence Stand_Deployed_DYNAMITE  DYNAMITE_idle_deployed {
	loop
	addlayer DYNAMITE_aimmatrix_deployed
	activity ACT_MERC_DYNAMITE_DEPLOYED_IDLE 1
}
$animation a_DeployedCenter_DYNAMITE  DYNAMITE_DeployedCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedS_DYNAMITE DYNAMITE_DeployedS blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 1
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedSE_DYNAMITE DYNAMITE_DeployedSE blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 18
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedE_DYNAMITE DYNAMITE_DeployedE blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedNE_DYNAMITE DYNAMITE_DeployedNE blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 1
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedN_DYNAMITE DYNAMITE_DeployedN blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 8
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedNW_DYNAMITE DYNAMITE_DeployedNW blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 13
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedW_DYNAMITE DYNAMITE_DeployedW blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 15
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedSW_DYNAMITE DYNAMITE_DeployedSW blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 0
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$sequence DYNAMITE_Deployed_Movement {
	a_Deployedsw_DYNAMITE	a_DeployedS_DYNAMITE		a_DeployedSE_DYNAMITE
	a_DeployedW_DYNAMITE	a_DeployedCenter_DYNAMITE		a_DeployedE_DYNAMITE
	a_DeployedNW_DYNAMITE	a_DeployedN_DYNAMITE		a_DeployedNE_DYNAMITE
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer DYNAMITE_aimmatrix_deployed
	activity ACT_MERC_DYNAMITE_DEPLOYED 1
}

$MPCrouchWalkWithWeapon Deployed_Crouch_Walk_DYNAMITE        0 0 0 0 0 0 0 0 DYNAMITE_deployed_crouch_walkN        DYNAMITE_deployed_Crouch_walkCenter        DYNAMITE_crouch_aimmatrix_deployed        ACT_MERC_CROUCHWALK_DYNAMITE_DEPLOYED $infoNode$

// run

$animation a_runCenter_DYNAMITE  DYNAMITE_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_DYNAMITE DYNAMITE_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 13
}
$animation a_runSE_DYNAMITE DYNAMITE_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
}
$animation a_runE_DYNAMITE DYNAMITE_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
}
$animation a_runNE_DYNAMITE DYNAMITE_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
}
$animation a_runN_DYNAMITE DYNAMITE_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
}
$animation a_runNW_DYNAMITE DYNAMITE_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
}
$animation a_runW_DYNAMITE DYNAMITE_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
}
$animation a_runSW_DYNAMITE DYNAMITE_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 13
}
$sequence Run_DYNAMITE {
	a_runsw_DYNAMITE	a_runS_DYNAMITE		a_runSE_DYNAMITE
	a_runW_DYNAMITE	a_runCenter_DYNAMITE	a_runE_DYNAMITE
	a_runNW_DYNAMITE	a_runN_DYNAMITE		a_runNE_DYNAMITE
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer DYNAMITE_aimmatrix_run
	activity ACT_MERC_RUN_DYNAMITE 1
	{ event 7001 6 "right" }
	{ event 7001 15 "left" }
}

// crouch walk

$MPCrouchWalkWithWeapon Crouch_Walk_DYNAMITE 0 0 0 0 0 0 0 0 DYNAMITE_crouch_walkN DYNAMITE_crouch_walkCenter DYNAMITE_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_DYNAMITE $infoNode$

// airwalk

$sequence Airwalk_DYNAMITE "DYNAMITE_airwalk.dmx" fps 30 loop {
    addlayer DYNAMITE_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_DYNAMITE 1
}

$popd