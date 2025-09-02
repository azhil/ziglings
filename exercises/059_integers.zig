//
// Zig lets you express integer literals in several convenient
// formats. These are all the same value:
//
//     const a1: u8 = 65;          // decimal
//     65 / 16 = 4 (1)
//     const a2: u8 = 0x41;        // hexadecimal
//     65 / 8 = 8 (1) / 8 = 1 (0)
//     const a3: u8 = 0o101;       // octal
//     65 / 2 = 32 (1) / 2 = 16 (0) / 2 = 8 (0) / 2 = 4 (0) / 2 = 2 (0) / 2 = 1 (0)
//     const a4: u8 = 0b1000001;   // binary
//     const a5: u8 = 'A';         // ASCII code point literal
//     ???
//     const a6: u16 = '\u{0041}'; // Unicode code points can take up to 21 bits
//     ???
//
// You can also place underscores in numbers to aid readability:
//
//     const t1: u32 = 14_689_520 // Ford Model T sales 1909-1927
//     const t2: u32 = 0xE0_24_F0 // same, in hex pairs
//
// Please fix the message:

const print = @import("std").debug.print;

pub fn main() void {
    const zig = [_]u8{
        0o131 + 1, // octal
        0b1101000 + 1, // binary
        0x66 + 1, // hex
    };

    print("{s} is cool.\n", .{zig});
}
