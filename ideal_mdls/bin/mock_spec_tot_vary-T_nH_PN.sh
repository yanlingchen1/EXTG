#!/bin/bash

# Define your input filenames
exposure_time=1000000000             # Replace with your desired exposure time in seconds
output_dir="../mock_spectras"  # Replace with your desired output directory

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Loop through XCM files in the current directory and generate mock spectra
for inst in pn; do # mos1 mos2 pn
resp_file="${output_dir}/${inst}.rmf"  # Replace with your XMM response file
arf_file="${output_dir}/${inst}.arf"

for xspec_model_file in ../mdls/ideal-mdl_z_005_suzakunorm_15e-4_*_A*_T_*_abun0.3_nH0.08e22.xcm; do

# Extract the model name (excluding the .xcm extension) from the file
model_name="$(basename "$xspec_model_file" | sed 's/\.xcm$//')"
# Define the output spectrum filename based on the model name
output_spectrum="$output_dir/mock_spectrum_${model_name}.fak"

# Run XSpec in batch mode to generate the mock spectrum
xspec <<EOF
rm $output_spectrum
rm ${output_spectrum}.log
log >${output_spectrum}.log # no space after >!
data none               # Clear any existing data
@$xspec_model_file # Load the XCM model file
fakeit none
$resp_file  
$arf_file
n

$output_spectrum
$exposure_time, 1, 0
log none
exit
EOF

echo "Mock spectrum for $model_name generated and saved as $output_spectrum"
done
done
