// Module name: task2_top
// Function: Top-level module for displaying 10-bit switches as hexadecimal on three 7-segment displays
// Creator: Your Name
// Date: Current Date

module task2_top (
    SW,             // Input: 10-bit sliding switches
    HEX0,           // Output: Hex display for lower nibble (SW[3:0])
    HEX1,           // Output: Hex display for middle nibble (SW[7:4])
    HEX2            // Output: Hex display for upper nibble (SW[9:8])
);
    input [9:0] SW;   // 10-bit sliding switches as input
    output [6:0] HEX0, HEX1, HEX2; // Outputs to 7-segment displays

    // Instantiate hex_to_7seg modules for each display
    hex_to_7seg SEG0 (HEX0, SW[3:0]); // Lower nibble (4 bits)
    hex_to_7seg SEG1 (HEX1, SW[7:4]); // Middle nibble (4 bits)
    hex_to_7seg SEG2 (HEX2, {2'b00, SW[9:8]}); // Upper nibble (2 bits, padded with zeros)

endmodule
