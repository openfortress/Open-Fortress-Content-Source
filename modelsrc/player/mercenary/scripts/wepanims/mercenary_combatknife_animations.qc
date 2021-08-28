// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/merc_anim/animations_combat_knife.mdl

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
$weightlist CombatKnife_Merc_Stand_ArmsBlend {
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

$Weightlist CombatKnife_Merc_Run_ArmsBlend {
	"bip_pelvis" 0.0
	"bip_hip_R" 0.0
	"bip_hip_L" 0.0
	"bip_spine_1" 1.0
	"bip_spine_2" 1.0
	"bip_spine_3" 1.0
	"bip_collar_L" 1.0
	"bip_upperArm_L" 1.0
	"bip_lowerArm_L" 1.0
	"bip_collar_R" 1.0
	"bip_upperArm_R" 1.0
	"bip_lowerArm_R" 1.0
	"bip_head" 0.0
	"bip_neck" 0.0
	}
	
//-----------------------------------------------------------------------------------
// COMBATKNIFE
//-----------------------------------------------------------------------------------

$MPWeaponAims		COMBATKNIFE	$infoNode$

$MPGestureAttack AttackStand_COMBATKNIFE  COMBATKNIFE_fire          ACT_MERC_ATTACK_STAND_KNIFE weightlist CombatKnife_Merc_Stand_ArmsBlend
$MPGestureAttack AttackCrouch_COMBATKNIFE COMBATKNIFE_crouch_fire   ACT_MERC_ATTACK_CROUCH_KNIFE weightlist CombatKnife_Merc_Stand_ArmsBlend
$MPGestureAttack AttackSwim_COMBATKNIFE   COMBATKNIFE_swim_fire     ACT_MERC_ATTACK_SWIM_KNIFE weightlist CombatKnife_Merc_Stand_ArmsBlend

$sequence Stand_COMBATKNIFE  COMBATKNIFE_idle loop alignto a_reference addlayer COMBATKNIFE_aimmatrix_idle activity ACT_MERC_STAND_KNIFE 1
$sequence Crouch_COMBATKNIFE COMBATKNIFE_crouch_idle loop alignto a_reference addlayer COMBATKNIFE_aimmatrix_crouch_idle activity ACT_MERC_CROUCH_KNIFE 1

// swim
$MPAimLayer COMBATKNIFE_aimmatrix_swim        COMBATKNIFE_aimmatrix_idle        $infoNode$
$MPswimWithWeapon COMBATKNIFE 0 0 0 0 0 0 0 0 COMBATKNIFE_SwimN	COMBATKNIFE_SwimCenter	COMBATKNIFE_aimmatrix_swim	ACT_MERC_SWIM_KNIFE $infonode$

//-----------------------------------------------------------------------------------
// JUMP
//-----------------------------------------------------------------------------------

//COMBATKNIFE jump
$sequence a_jumpStart_COMBATKNIFE COMBATKNIFE_jump frames 0 25 addlayer COMBATKNIFE_aimmatrix_swim alignto a_reference Z activity ACT_MERC_JUMP_START_KNIFE 1 LX LY 
$sequence a_jumpfloat_COMBATKNIFE COMBATKNIFE_jump frames 25 44 addlayer COMBATKNIFE_aimmatrix_swim loop  fps 30 alignto a_reference activity ACT_MERC_JUMP_FLOAT_KNIFE 1 LX LY 
$sequence jumpLandPose_COMBATKNIFE COMBATKNIFE_jump frames 25 25 numframes 30 loop 
$sequence jumpLand_COMBATKNIFE { 
	COMBATKNIFE_jump_land 
	subtract jumpLand_COMBATKNIFE 0 
	delta 
	iklock rfoot 1 0 iklock lfoot 1 0 

	activity ACT_MERC_JUMP_LAND_KNIFE 1 
}

//-----------------------------------------------------------------------------------
//  RUN
//-----------------------------------------------------------------------------------
$animation a_runCenter_COMBATKNIFE  COMBATKNIFE_runCenter blockname $infoNode$ {
	loop
	alignto a_reference
}
$animation a_runS_COMBATKNIFE COMBATKNIFE_runs blockname $infoNode$ {
	LX LY
	rotateto -180
	startloop 12
	alignto a_reference
}
$animation a_runSE_COMBATKNIFE COMBATKNIFE_runse blockname $infoNode$ {
	LX LY
	rotateto -135
	startloop 12
	alignto a_reference
}
$animation a_runE_COMBATKNIFE COMBATKNIFE_rune blockname $infoNode$ {
	LX LY
	rotateto -90
	startloop 2
	alignto a_reference
}
$animation a_runNE_COMBATKNIFE COMBATKNIFE_runne blockname $infoNode$ {
	LX LY
	rotateto -45
	startloop 3
	alignto a_reference
}
$animation a_runN_COMBATKNIFE COMBATKNIFE_runn blockname $infoNode$ {
	LX LY
	rotateto 0
	startloop 3
	alignto a_reference
}
$animation a_runNW_COMBATKNIFE COMBATKNIFE_runnw blockname $infoNode$ {
	LX LY
	rotateto 45
	startloop 4
	alignto a_reference
}
$animation a_runW_COMBATKNIFE COMBATKNIFE_runw blockname $infoNode$ {
	LX LY
	rotateto 90
	startloop 3
	alignto a_reference
}
$animation a_runSW_COMBATKNIFE COMBATKNIFE_runsw blockname $infoNode$ {
	LX LY
	rotateto 135
	startloop 12
	alignto a_reference
}
$sequence Run_COMBATKNIFE {
	a_runsw_COMBATKNIFE	a_runS_COMBATKNIFE		a_runSE_COMBATKNIFE
	a_runW_COMBATKNIFE	a_runCenter_COMBATKNIFE	a_runE_COMBATKNIFE
	a_runNW_COMBATKNIFE	a_runN_COMBATKNIFE		a_runNE_COMBATKNIFE
	blendwidth 3 blend move_y -1 1 blend move_x -1 1
	addlayer COMBATKNIFE_aimmatrix_run
	activity ACT_MERC_RUN_KNIFE 1
	  { event 7001 7 "right" }
	  { event 7001 16 "left" }
}

$MPCrouchWalkWithWeaponNoIK Crouch_Walk_COMBATKNIFE 0 0 0 0 0 0 0 0 COMBATKNIFE_crouch_walkN COMBATKNIFE_crouch_walkCenter COMBATKNIFE_aimmatrix_crouch_idle ACT_MERC_CROUCHWALK_KNIFE $infoNode$

$animation a_combatknife_fire_backstab combatknife_fire_backstab.dmx frames 0 0 
$sequence armslayer_combatknife_fire_backstab combatknife_fire_backstab.dmx { 
 weightlist SPY_Melee_Armsblend 
 hidden 
} 

$sequence bodylayer_combatknife_fire_backstab combatknife_fire_backstab.dmx subtract a_combatknife_fire_backstab 0 { 
 weightlist SPY_Melee_HipsTorso
 delta 
 hidden 
} 

$sequence combatknife_fire_backstab combatknife_fire_backstab.dmx noanimation numframes 27 {
 addlayer bodylayer_combatknife_fire_backstab 
 blendlayer armslayer_combatknife_fire_backstab 0 2 25 27
 iklock rfoot 1 0 iklock lfoot 1 0 
 ikrule lhand release 
 activity ACT_MERC_ATTACK_STAND_KNIFE_BACKSTAB 1 
} 

//-----------------------------------------------------------------------------------
// Airwalk
//-----------------------------------------------------------------------------------
$sequence Airwalk_COMBATKNIFE "COMBATKNIFE_airwalk.dmx" fps 30 loop {
	addlayer COMBATKNIFE_aimmatrix_idle 
	activity ACT_MERC_AIRWALK_KNIFE 1
}

$popd