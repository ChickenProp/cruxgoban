This is a design for a go board and stones that make it easy to tell when stones are connected. Apparently that's a thing new players often have trouble with. Stones are cross-shaped, and their arms touch if they're adjacent. Grooves in the board keep the stones in position.

The included generated files (.stl, .3mf, .gcode) are mostly for my convenience. They probably won't be useful for anyone else. I might not update them reliably or in sync with each other.

To generate .stl files, you'll need [OpenSCAD](https://en.wikipedia.org/wiki/OpenSCAD). You can do it from the command line with

    openscad [-D VAR1=val1 -D VAR2=val2 ...] -o board.stl board.scad
    openscad [-D VAR1=val1 -D VAR2=val2 ...] -o stone.stl stone.scad

Using the `-D` options to override values in constants.scad (e.g. `-D BOARD_SIZE=9`). Or you can use the GUI, in which case you might need to edit constants.scad to adjust sizes and shapes.

(.stl files can be binary or ascii. They should be equivalent. The gui defaults to binary, and can be set to ascii in the preferences. The command line defaults to ascii, and can be set to binary with `--export-format binstl`.)

When you have the .stl files, you can get them 3d printed. Instructions for that will be very user specific. Ideally it probably wants four colors to print. If you use a different color for the top of the board than the bottom, then the grooves might stand out a bit more. But that isn't necessary, and you could also paint it or something.

The idea was suggested by my dad. I think he said he picked it up from somewhere else. I've only printed a proof of concept so far.
