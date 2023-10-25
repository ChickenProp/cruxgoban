include <constants.scad>

BOARD_SIZE_MM = STONE_LENGTH * BOARD_SIZE;

difference() {
linear_extrude(BOARD_HEIGHT + BOARD_GROOVE_DEPTH)
  square(BOARD_SIZE_MM);

translate([0, 0, BOARD_HEIGHT])
  linear_extrude(BOARD_GROOVE_DEPTH + 1) {
    for (i = [0:BOARD_SIZE - 1]) {
      translate([(i + 0.5) * STONE_LENGTH, BOARD_SIZE_MM/2, 0])
        square([STONE_WIDTH + TOLERANCE/2, BOARD_SIZE_MM + 1], center=true);
    }
  
    for (j = [0:BOARD_SIZE - 1]) {
      translate([BOARD_SIZE_MM/2, (j + 0.5) * STONE_LENGTH, 0])
        square([BOARD_SIZE_MM + 1, STONE_WIDTH + TOLERANCE/2], center=true);
    }

    for (i = [0:BOARD_SIZE - 1]) {
      for (j = [0:BOARD_SIZE - 1]) {
        translate([(i + 0.5) * STONE_LENGTH, (j + 0.5) * STONE_LENGTH, 0])
          rotate([0, 0, 45])
          square(STONE_BASE_WIDTH + TOLERANCE/2, center=true);
      }
    }
  }
}
