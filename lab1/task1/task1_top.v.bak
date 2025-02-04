// Module name: task1_top
// Function: Top level module for Lab 3 Task 1
//           to display 4 switch on a 7-seg display
// Creator: Peter Cheung
// Version: 1.0
// Date: 31 Oct 2020

module task1_top (
    SW,             // input switches
    HEX0            // Hex output on 7-segment display
);
    input [3:0] SW;  // declare input ports
    output [6:0] HEX0; // declare output ports

    hex_to_7seg SEG0 (HEX0, SW[3:0]);

endmodule
