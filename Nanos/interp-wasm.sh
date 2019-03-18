# Filename must be the first parameter of this script
file_name=$1
func_name=$2

# Now we assemble the file and then execute it
./wat2wasm $file_name --output a.wasm

node ./runwasm.js a.wasm $func_name

rm -rf *.wasm
