# Eagle DXF to STEP
Convert eagle `.pcb` files to STEP files without proprietary software.
## Dependencies
 * [Eagle](https://www.autodesk.de/products/eagle/overview) (for exporting the DXF File)
 * [make](https://www.gnu.org/software/make/)
 * [openscad](https://www.openscad.org/)
 * [FreeCad](https://www.freecadweb.org/)

## Exporting the DXF from Eagle
 * Open the PCB file in EAGLE
 * Under View->LayerSettings... click on "Show Layers" to enable all layers
 * Next click on File->Export->DXF
 * Deselect "Fill areas" and "Use wire width" (in this order)
 * Select a path and then click ok

## Generating the STEP File
 * Open `config.scad` and adjust the `file` variable to point to the DXF file
 * Run `make`, there should be no errors
 * At some point FreeCad opens, hopefully displaying the 3D-model
 * In the left bar mark all parts of your model (listed under main)
 * Click on File->Export...
 * In the Files of type dropdown menu select `STEP with colors (*.step *.stp)`
 * Enter `main.step` as the filename
 * Click on `Save`
