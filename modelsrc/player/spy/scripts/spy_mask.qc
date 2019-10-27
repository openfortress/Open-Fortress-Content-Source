// defining the upaxis is needed for maya exports
$upaxis Y

$modelname player/spy_mask.mdl

$illumposition 0 75 -3

$model "spyMask" "../parts/dmx/spy_mask.dmx"

$sequence  ref  "../parts/dmx/spy_mask.dmx"

$surfaceprop "cardboard"

$bonemerge "bip_pelvis"
$bonemerge "bip_spine_0"
$bonemerge "bip_spine_1"
$bonemerge "bip_spine_2"
$bonemerge "bip_spine_3"
$bonemerge "bip_neck"
$bonemerge "bip_head"

$cdmaterials "models/player/spy/hwm/"
$cdmaterials "models/player/spy/"

$texturegroup "spy_Skins"
{
	{ "mask_scout"     }
	{ "mask_sniper"    }
	{ "mask_soldier"   }
	{ "mask_demo"      }
	{ "mask_medic"     }
	{ "mask_heavy"     }
	{ "mask_pyro"      }
	{ "mask_spy"       }
	{ "mask_engi"      }
	{ "mask_civilian"  }
	{ "mask_mercenary" }
}