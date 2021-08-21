// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_railgun.mdl

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
// Railgun (also re-used for sniper rifle)
//-----------------------------------------------------------------------------------

$MPWeaponAims_leftHandIK	RAILGUN	$infoNode$
$MPAimLayer_leftHandIK  RAILGUN_aimmatrix_deployed        	RAILGUN_aimmatrix_deployed      $infoNode$
$MPAimLayer_leftHandIK  RAILGUN_crouch_aimmatrix_deployed	  RAILGUN_crouch_aimmatrix_deployed	$infoNode$
$MPGestureAttack AttackStand_RAILGUN   RAILGUN_fire         ACT_MERC_ATTACK_STAND_RAILGUN  IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackCrouch_RAILGUN  RAILGUN_crouch_fire  ACT_MERC_ATTACK_CROUCH_RAILGUN IKrule lhand touch "weapon_bone" usesource
$MPGestureAttack AttackSwim_RAILGUN    RAILGUN_fire         ACT_MERC_ATTACK_SWIM_RAILGUN   IKrule lhand touch "weapon_bone" usesource

$MPGestureAttack AttackCrouch_RAILGUN_DEPLOYED  RAILGUN_DEPLOYED_crouch_fire   ACT_MERC_ATTACK_CROUCH_RAILGUN_DEPLOYED
$MPGestureAttack AttackSwim_RAILGUN_DEPLOYED    RAILGUN_DEPLOYED_fire          ACT_MERC_ATTACK_SWIM_RAILGUN_DEPLOYED
$MPGestureReload ReloadStand_RAILGUN_DEPLOYED   RAILGUN_idle_deployed          ACT_MERC_RELOAD_STAND_RAILGUN_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadCrouch_RAILGUN_DEPLOYED  RAILGUN_idle_deployed          ACT_MERC_RELOAD_CROUCH_RAILGUN_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadSwim_RAILGUN_DEPLOYED    RAILGUN_idle_deployed          ACT_MERC_RELOAD_SWIM_RAILGUN_DEPLOYED IKrule lhand touch "weapon_bone" usesource frames 0 0

$MPGestureReload ReloadStand_RAILGUN  RAILGUN_idle        ACT_MERC_RELOAD_STAND_RAILGUN IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadCrouch_RAILGUN  RAILGUN_idle ACT_MERC_RELOAD_CROUCH_RAILGUN IKrule lhand touch "weapon_bone" usesource frames 0 0
$MPGestureReload ReloadSwim_RAILGUN   RAILGUN_idle   ACT_MERC_RELOAD_SWIM_RAILGUN IKrule lhand touch "weapon_bone" usesource frames 0 0

$sequence attackstand_RAILGUN_deployed_fire {
	RAILGUN_deployed_fire
	subtract attackstand_RAILGUN_deployed_fire 0
	delta
	ikrule lhand touch "weapon_bone" usesource
	ikrule rhand release
	iklock rfoot 1 0 iklock lfoot 1 0
 	activity ACT_MERC_ATTACK_STAND_RAILGUN_DEPLOYED 1 
}

$sequence Stand_RAILGUN  RAILGUN_idle loop addlayer RAILGUN_aimmatrix_idle activity ACT_MERC_STAND_RAILGUN 1
$sequence Crouch_RAILGUN RAILGUN_crouch_idle loop addlayer RAILGUN_aimmatrix_crouch_idle  activity ACT_MERC_CROUCH_RAILGUN 1

//RAILGUN Jump

$sequence a_jumpStart_RAILGUN RAILGUN_jump addlayer RAILGUN_aimmatrix_idle frames 0 25 alignto a_reference Z activity ACT_MERC_JUMP_START_RAILGUN 1 LX LY
$sequence a_jumpfloat_RAILGUN RAILGUN_jump addlayer RAILGUN_aimmatrix_idle frames 26 66 loop  fps 30 alignto a_reference Z activity ACT_MERC_JUMP_FLOAT_RAILGUN 1 LX LY
$sequence jumpLandPose_RAILGUN RAILGUN_jump frames 25 25 alignto a_reference Z numframes 30 loop
$sequence jumpLand_RAILGUN { 
	RAILGUN_jump_land 
	subtract jumpland_RAILGUN 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_RAILGUN 1 
}


$MPAimLayer_lefthandIK  RAILGUN_aimmatrix_swim        RAILGUN_aimmatrix_idle        $infoNode$
$MPswimWithWeapon RAILGUN 0 0 0 0 0 0 0 0 RAILGUN_SwimN	RAILGUN_SwimCenter	RAILGUN_aimmatrix_swim	ACT_MERC_SWIM_RAILGUN $infonode$
$MPswimWithWeapon RAILGUN_deployed 0 0 0 0 0 0 0 0 RAILGUN_deployed_SwimN RAILGUN_deployed_SwimCenter	RAILGUN_aimmatrix_deployed	ACT_MERC_RAILGUN_SWIM_DEPLOYED $infonode$

// deployed

$sequence Crouch_Deployed_RAILGUN  RAILGUN_crouch_idle_deployed {
	loop
	addlayer RAILGUN_crouch_aimmatrix_deployed
	activity ACT_MERC_CROUCH_RAILGUN_DEPLOYED_IDLE 1
}

$sequence Stand_Deployed_RAILGUN  RAILGUN_idle_deployed {
	loop
	addlayer RAILGUN_aimmatrix_deployed
	activity ACT_MERC_RAILGUN_DEPLOYED_IDLE 1
}
$animation a_DeployedCenter_RAILGUN  RAILGUN_DeployedCenter blockname $infoNode$ {
	loop
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedS_RAILGUN RAILGUN_DeployedS blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 25
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedSE_RAILGUN RAILGUN_DeployedSE blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 18
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedE_RAILGUN RAILGUN_DeployedE blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedNE_RAILGUN RAILGUN_DeployedNE blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 1
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedN_RAILGUN RAILGUN_DeployedN blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 8
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedNW_RAILGUN RAILGUN_DeployedNW blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 0
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedW_RAILGUN RAILGUN_DeployedW blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 15
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$animation a_DeployedSW_RAILGUN RAILGUN_DeployedSW blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 0
	alignto a_reference
	ikrule lfoot footstep range .. 0 2 .. contact 1
	ikrule rfoot footstep range .. 0 0 .. contact 0
}
$sequence RAILGUN_Deployed_Movement {
	a_Deployedsw_RAILGUN	a_DeployedS_RAILGUN		a_DeployedSE_RAILGUN
	a_DeployedW_RAILGUN	a_DeployedCenter_RAILGUN		a_DeployedE_RAILGUN
	a_DeployedNW_RAILGUN	a_DeployedN_RAILGUN		a_DeployedNE_RAILGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer RAILGUN_aimmatrix_deployed
	activity ACT_MERC_RAILGUN_DEPLOYED 1
}

$MPCrouchWalkWithWeapon Deployed_Crouch_Walk_RAILGUN        0 0 0 0 0 0 0 0 RAILGUN_deployed_crouch_walkN        RAILGUN_deployed_Crouch_walkCenter        RAILGUN_crouch_aimmatrix_deployed        ACT_MERC_CROUCHWALK_RAILGUN_DEPLOYED $infoNode$

// run

$animation a_runCenter_RAILGUN  RAILGUN_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_RAILGUN RAILGUN_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 13
}
$animation a_runSE_RAILGUN RAILGUN_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
}
$animation a_runE_RAILGUN RAILGUN_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
}
$animation a_runNE_RAILGUN RAILGUN_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
}
$animation a_runN_RAILGUN RAILGUN_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
}
$animation a_runNW_RAILGUN RAILGUN_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
}
$animation a_runW_RAILGUN RAILGUN_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
}
$animation a_runSW_RAILGUN RAILGUN_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 13
}
$sequence Run_RAILGUN {
	a_runsw_RAILGUN	a_runS_RAILGUN		a_runSE_RAILGUN
	a_runW_RAILGUN	a_runCenter_RAILGUN	a_runE_RAILGUN
	a_runNW_RAILGUN	a_runN_RAILGUN		a_runNE_RAILGUN
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer RAILGUN_aimmatrix_run
	activity ACT_MERC_RUN_RAILGUN 1
	{ event 7001 6 "right" }
	{ event 7001 15 "left" }
}

// crouch walk

$MPCrouchWalkWithWeapon Crouch_Walk_RAILGUN 0 0 0 0 0 0 0 0 RAILGUN_crouch_walkN RAILGUN_crouch_walkCenter RAILGUN_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_RAILGUN $infoNode$

// airwalk

$sequence Airwalk_RAILGUN "RAILGUN_airwalk.dmx" fps 30 loop {
    addlayer RAILGUN_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_RAILGUN 1
}

$popd