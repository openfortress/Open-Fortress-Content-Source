$modelname player/demo.mdl

// Define the variable that demo.qci will use to load the dmx files for high and low end models.
$definevariable dmxFile "../parts/dmx/demo_morphs_low.dmx"

$definevariable 01_lod "../parts/dmx/demo_lod_01_low.dmx"
$definevariable 02_lod "../parts/dmx/demo_lod_02_low.dmx"
$definevariable 03_lod "../parts/dmx/demo_lod_03_low.dmx"
$definevariable 04_lod "../parts/dmx/demo_lod_04_low.dmx"
$definevariable 05_lod "../parts/dmx/demo_lod_05_low.dmx"

$proceduralbones "demo.vrd"

$include demo.qci

