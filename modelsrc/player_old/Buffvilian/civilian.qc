// Created by Crowbar 0.56

$modelname "player/civilian.mdl"

$bodygroup "body"
{
	studio "civilian_HUNTED_Template1.smd"
}


$surfaceprop "flesh"

$contents "solid"

$illumposition 0.788 -3.1 36.781

$cdmaterials "..\..\effects"
$cdmaterials "models\player\civilian\"

$texturegroup "skinfamilies"
{
	{ "DM_Base"            "DM_Base2"           }
	{ "DM_BASE_B"          "DM_Base2"           }
	{ "invulnfx_red"       "invulnfx_red"       }
	{ "invulnfx_blue"      "invulnfx_blue"      }
	{ "DM_BASE_C"          "DM_Base2"           }
	{ "invulnfx_mercenary" "invulnfx_mercenary" }
	{ "DM_BASE_C"          "DM_Base2"           }
	{ "invulnfx_mercenary" "invulnfx_mercenary" }
}

$attachment "0" "weapon_bone" 20 2 5 rotate 0 0 0
$attachment "1" "weapon_bone" 15 1.5 3.75 rotate 0 0 0
$attachment "2" "weapon_bone" 30 3 7.5 rotate 0 0 0
$attachment "eyes" "bip_head" 0 -2.66 -4.45 rotate 90 -90 0
$attachment "righteye" "bip_head" -1.14 -2.66 -4.45 rotate 90 -90 0
$attachment "lefteye" "bip_head" 1.14 -2.66 -4.45 rotate 90 -90 0
$attachment "cig_eject" "Bip01 Pelvis" 2 -29 -17 rotate -20 -100 -90
$attachment "partyhat" "bip_head" 0 -6.88 -1 rotate 89 93 -180
$attachment "cig_smoke" "bip_head" 0 -2.13 0 rotate 0 0 0
$attachment "head" "bip_head" 0 -9.08 0 rotate 88.95 90 180
$attachment "flag" "Bip01 Spine2" 0 -1.39 8.95 rotate -0.08 2.96 1.49

$cbox 0 0 0 0 0 0

$bbox -9.204 -13.788 -0.149 15.403 15.364 73.711

$hboxset "default"
$hbox 3 "Bip01 Pelvis" -4.69 -4.44 -6.75 4 5.56 6.75 ""
$hbox 6 "Bip01 L Leg" 2.66 -3.69 -3.09 18.16 4.88 3.31 ""
$hbox 6 "Bip01 L Leg1" 0.38 -3.97 -2.84 17.6 4 2.94 ""
$hbox 6 "Bip01 L Foot" -0.59 -2.34 -2.63 3.79 8 2.19 ""
$hbox 7 "Bip01 R Leg" 2.47 -3.69 -3.16 18.129999 4.88 3.38 ""
$hbox 7 "Bip01 R Leg1" 0.31 -3.97 -2.84 17.6 3.94 2.97 ""
$hbox 7 "Bip01 R Foot" -0.56 -2.34 -2.19 3.81 8 2.66 ""
$hbox 3 "Bip01 Spine1" -3.25 -5.5 -5.5 4.83 5.5 5.5 ""
$hbox 2 "Bip01 Spine2" -0.06 -5.53 -7.59 8 7 7.59 ""
$hbox 2 "Bip01 Spine3" -2.25 -6.81 -6.31 6.5 5.09 6.31 ""
$hbox 2 "Bip01 Neck" -3.11 -1.5 -3 2.05 3.5 3 ""
$hbox 1 "bip_head" 0.09 -3.66 -3 8.41 5.09 3 ""
$hbox 4 "Bip01 L Arm" 0.94 -2.88 -4.13 5.44 4.28 3.5 ""
$hbox 4 "Bip01 L Arm1" -2.16 -2.34 -2.56 11.56 3.41 2.38 ""
$hbox 4 "Bip01 L Arm2" 0.59 -1.81 -2.19 10.75 2.84 2.41 ""
$hbox 4 "Bip01 L Hand" 0 -1 -2 3 1.5 3.5 ""
$hbox 5 "Bip01 R Arm" 1.38 -2.84 -3.56 5.69 4.31 4.31 ""
$hbox 5 "Bip01 R Arm1" -1.88 -2.47 -2.16 11.81 3.28 2.81 ""
$hbox 5 "Bip01 R Arm2" 0.44 -1.97 -2.34 10.59 2.72 2.22 ""
$hbox 5 "weapon_bone" 0 -1 -2 3 1.5 3.5 ""
$skipboneinbbox

$controller 0 "Bip01 Spine" XR -30 30
$controller 1 "Bip01 Spine1" XR -30 30
$controller 2 "Bip01 Spine2" XR -30 30
$controller 3 "Bip01 Spine3" XR -30 30

$bonemerge "Bip01"
$bonemerge "Bip01 Pelvis"
$bonemerge "Bip01 L Leg"
$bonemerge "Bip01 L Leg1"
$bonemerge "Bip01 L Foot"
$bonemerge "Bip01 R Leg"
$bonemerge "Bip01 R Leg1"
$bonemerge "Bip01 R Foot"
$bonemerge "Bip01 Spine"
$bonemerge "Bip01 Spine1"
$bonemerge "Bip01 Spine2"
$bonemerge "Bip01 Spine3"
$bonemerge "Bip01 Neck"
$bonemerge "bip_head"
$bonemerge "Dummy08"
$bonemerge "Bone02"
$bonemerge "Dummy10"
$bonemerge "Bone13"
$bonemerge "Bip01 L Arm"
$bonemerge "Bip01 L Arm1"
$bonemerge "Bip01 L Arm2"
$bonemerge "Bip01 L Hand"
$bonemerge "Bip01 L Finger0"
$bonemerge "Bip01 L Finger01"
$bonemerge "Bip01 L Finger02"
$bonemerge "Bip01 L Finger1"
$bonemerge "Bip01 L Finger11"
$bonemerge "Bip01 L Finger12"
$bonemerge "Bip01 R Arm"
$bonemerge "Bip01 R Arm1"
$bonemerge "Bip01 R Arm2"
$bonemerge "weapon_bone"
$bonemerge "Bip01 R Finger0"
$bonemerge "Bip01 R Finger01"
$bonemerge "Bip01 R Finger02"
$bonemerge "Bip01 R Finger1"
$bonemerge "Bip01 R Finger11"
$bonemerge "Bip01 R Finger12"


$poseparameter "XR" -50 45 loop 0

$sequence "ragdoll" {
	"civilian_anims\ragdoll.smd"
	activity "ACT_DIERAGDOLL" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "look_idle" {
	"civilian_anims\look_idle.smd"
	activity "ACT_IDLE" 2
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "idle" {
	"civilian_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "deep_idle" {
	"civilian_anims\deep_idle.smd"
	activity "ACT_MP_STAND_MELEE" 1
	blend "XR" -50 35
	fadein 0.2
	fadeout 0.2
	fps 12
	loop
}

$sequence "run2" {
	"civilian_anims\run2.smd"
	activity "ACT_MP_RUN_MELEE" 1
	blend "XR" -50 35
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
	walkframe 22 LX
}

$sequence "run3" {
	"civilian_anims\run3.smd"
	activity "ACT_MP_RUN_PRIMARY" 1
	blend "XR" -50 35
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
	walkframe 22 LX
}

$sequence "run4" {
	"civilian_anims\run4.smd"
	activity "ACT_MP_RUN_SECONDARY" 1
	blend "XR" -50 35
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
	walkframe 22 LX
}

$sequence "run5" {
	"civilian_anims\run5.smd"
	activity "ACT_MP_RUN_ITEM1" 1
	fadein 0.2
	fadeout 0.2
	fps 40
	loop
	walkframe 22 LX
}

$sequence "crawl" {
	"civilian_anims\crawl.smd"
	activity "ACT_MP_CROUCHWALK_MELEE" 1
	fadein 0.2
	fadeout 0.2
	fps 22
	loop
	walkframe 30 LX
}

$sequence "crawl2" {
	"civilian_anims\crawl2.smd"
	activity "ACT_MP_CROUCHWALK_PRIMARY" 1
	fadein 0.2
	fadeout 0.2
	fps 22
	loop
	walkframe 30 LX
}

$sequence "crawl3" {
	"civilian_anims\crawl3.smd"
	activity "ACT_MP_CROUCHWALK_SECONDARY" 1
	fadein 0.2
	fadeout 0.2
	fps 22
	loop
	walkframe 30 LX
}

$sequence "crawl4" {
	"civilian_anims\crawl4.smd"
	activity "ACT_MP_CROUCHWALK_ITEM1" 1
	fadein 0.2
	fadeout 0.2
	fps 22
	loop
	walkframe 30 LX
}

$sequence "crouch_idle" {
	"civilian_anims\crouch_idle.smd"
	activity "ACT_MP_CROUCH_MELEE" 1
	fadein 0.2
	fadeout 0.2
	fps 12
	loop
}

$sequence "jump" {
	"civilian_anims\jump.smd"
	activity "ACT_MP_JUMP_START_melee" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump2" {
	"civilian_anims\jump2.smd"
	activity "ACT_MP_JUMP_START_PRIMARY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump3" {
	"civilian_anims\jump3.smd"
	activity "ACT_MP_JUMP_START_SECONDARY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "jump4" {
	"civilian_anims\jump4.smd"
	activity "ACT_MP_JUMP_START_ITEM1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "swim" {
	"civilian_anims\swim.smd"
	activity "ACT_MP_SWIM_MELEE" 1
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "swim1" {
	"civilian_anims\swim1.smd"
	activity "ACT_MP_SWIM_PRIMARY" 1
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "swim2" {
	"civilian_anims\swim2.smd"
	activity "ACT_MP_SWIM_SECONDARY" 1
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "swim3" {
	"civilian_anims\swim3.smd"
	activity "ACT_MP_SWIM_ITEM1" 1
	fadein 0.2
	fadeout 0.2
	fps 14
	loop
}

$sequence "taunt01" {
	"civilian_anims\taunt01.smd"
	activity "ACT_DIEFORWARD" 1
	{ event 2001 9 "" }
	fadein 0.2
	fadeout 0.2
	fps 26
}

$sequence "taunt02" {
	"civilian_anims\taunt02.smd"
	activity "ACT_DIEFORWARD" 1
	{ event 2001 9 "" }
	fadein 0.2
	fadeout 0.2
	fps 26
}

$sequence "taunt03" {
	"civilian_anims\taunt03.smd"
	activity "ACT_DIEFORWARD" 1
	{ event 2001 9 "" }
	fadein 0.2
	fadeout 0.2
	fps 26
}

$sequence "SelectionMenu_Idle" {
	"civilian_anims\SelectionMenu_Idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "SelectionMenu_StartPose" {
	"civilian_anims\SelectionMenu_StartPose.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$sequence "SelectionMenu_Anim01" {
	"civilian_anims\SelectionMenu_Anim01.smd"
	fadein 0.2
	fadeout 0.2
	fps 10
}

$collisionjoints "civilian_physics.smd"
{
	$mass 100
	$inertia 10
	$damping 0
	$rotdamping 0
	$rootbone "bip01"


	$jointconstrain "Bip01 Spine1" x limit -60 60 0.00032
	$jointconstrain "Bip01 Spine1" y limit -25 25 0.00032
	$jointconstrain "Bip01 Spine1" z limit -25 30 0.00032

	$jointconstrain "Bip01 L Arm" x limit 0 0 0
	$jointconstrain "Bip01 L Arm" y limit 0 0 0
	$jointconstrain "Bip01 L Arm" z limit 0 0 0

	$jointconstrain "Bip01 L Arm1" x limit 0 0 0
	$jointconstrain "Bip01 L Arm1" y limit -67 30 0.00032
	$jointconstrain "Bip01 L Arm1" z limit -73 12 0.00032

	$jointconstrain "Bip01 L Arm2" x limit 0 0 0
	$jointconstrain "Bip01 L Arm2" y limit 0 0 0
	$jointconstrain "Bip01 L Arm2" z limit -120 4 0.00032

	$jointconstrain "Dummy04" x limit 0 0 0
	$jointconstrain "Dummy04" y limit 0 0 0
	$jointconstrain "Dummy04" z limit 0 0 0

	$jointconstrain "Bone02" x limit 0 0 0
	$jointconstrain "Bone02" y limit 0 0 0
	$jointconstrain "Bone02" z limit 0 0 0

	$jointconstrain "Bip01 Head" x limit 0 0 0
	$jointconstrain "Bip01 Head" y limit 0 0 0
	$jointconstrain "Bip01 Head" z limit 0 0 0

	$jointconstrain "Bip01 R Leg" x limit -25 20 0.00032
	$jointconstrain "Bip01 R Leg" y limit -40 20 0.00032
	$jointconstrain "Bip01 R Leg" z limit -37 63 0.00032

	$jointconstrain "Bip01 R Leg1" x limit 0 0 0
	$jointconstrain "Bip01 R Leg1" y limit 0 0 0
	$jointconstrain "Bip01 R Leg1" z limit -95 4 0.00032

	$jointconstrain "Bone05" x limit 0 0 0
	$jointconstrain "Bone05" y limit 0 0 0
	$jointconstrain "Bone05" z limit 0 0 0

	$jointconstrain "Bip01 L Leg" x limit -25 20 0.00032
	$jointconstrain "Bip01 L Leg" y limit -20 40 0.00032
	$jointconstrain "Bip01 L Leg" z limit -37 63 0.00032

	$jointconstrain "Bip01 L Leg1" x limit 0 0 0
	$jointconstrain "Bip01 L Leg1" y limit 0 0 0
	$jointconstrain "Bip01 L Leg1" z limit -95 4 0.00032

	$jointconstrain "Bip01 L Foot" x limit 0 0 0
	$jointconstrain "Bip01 L Foot" y limit 0 0 0
	$jointconstrain "Bip01 L Foot" z limit -15 35 0.00032

	$jointconstrain "Bip01 R Foot" x limit 0 0 0
	$jointconstrain "Bip01 R Foot" y limit 0 0 0
	$jointconstrain "Bip01 R Foot" z limit -15 35 0.00032
}

$collisiontext
{
	break 
	{
		"model" "player\gibs\spygib007"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\spygib001"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\spygib003"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\spygib006"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\random_organ"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\spygib002"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\spygib004"
		"health" "0"
		"fadetime" "10"
	}
	break 
	{
		"model" "player\gibs\spygib005"
		"health" "0"
		"fadetime" "10"
	}
}

$KeyValues
{
}
