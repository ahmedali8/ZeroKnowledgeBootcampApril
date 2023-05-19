// Modify the integer types to make the tests pass.
// Learn how to convert between integer types, and felts.

// Type `hint` in watch mode for a hint.

use traits::Into;
use traits::TryInto;
use option::OptionTrait;

//TODO modify the types of this function to prevent an overflow when summing big values
fn sum(x: u16, y: u16) -> u16 {
    x + y
}

fn convert_to_felt(x: u16) -> felt252 {
    x.into()
}

fn convert_felt_to_u16(x: felt252) -> u16 {
    x.try_into().unwrap()
}

#[test]
fn test_sum() {
    assert(sum(254, 255) == 509_u16, 'Something went wrong');
}

#[test]
fn test_convert_to_felt() {
    assert(convert_to_felt(999_u16) == 999, 'Type conversion went wrong');
}

#[test]
fn test_convert_to_u16() {
    assert(convert_felt_to_u16(1000) == 1000_u16, 'Type conversion went wrong');
}
