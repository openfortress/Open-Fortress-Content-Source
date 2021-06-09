$modelname player/scout.mdl

// Define the variables that scout.qci will use to load the dmx files for high and low end models.
$definevariable dmxFile "../parts/dmx/scout_morphs_low.dmx"

$definevariable 01_lod "../parts/dmx/scout_lod_01_low.dmx"
$definevariable 02_lod "../parts/dmx/scout_lod_02_low.dmx"
$definevariable 03_lod "../parts/dmx/scout_lod_03_low.dmx"
$definevariable 04_lod "../parts/dmx/scout_lod_04_low.dmx"
$definevariable 05_lod "../parts/dmx/scout_lod_05_low.dmx"

$proceduralbones "scout.vrd"

$include scout.qci

$alwayscollapse "prp_mic"
$alwayscollapse "bip_bicep_twist_01_L"
$alwayscollapse "bip_bicep_twist_02_L"
$alwayscollapse "bip_bicep_twist_01_R"
$alwayscollapse "bip_bicep_twist_02_R"
