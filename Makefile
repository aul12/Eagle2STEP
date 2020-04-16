OPENSCAD=openscad
FREECAD=freecad

all: main.step

main.step: main.csg
	echo "Select model, then click File->Export and select STEP as format"
	freecad main.csg > /dev/null

main.csg: main.scad pcb.stl place.stl pad.stl pin.stl pin_plastic.stl

%.stl: %.scad config.scad
	$(OPENSCAD) -o $@ $<

%.csg: %.scad config.scad
	$(OPENSCAD) -o $@ $<

clean:
	rm -f *.stl
	rm -f *.csg
	rm -f *.step
