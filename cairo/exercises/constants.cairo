// Type `hint` in watch mode for a hint.

use debug::PrintTrait;

const LARGE_NUMBER: u128 = 1234567890123;
const SMALL_NUMBER: u8 = 3_u8;

fn main() {
    LARGE_NUMBER.print();
    SMALL_NUMBER.print();
}
