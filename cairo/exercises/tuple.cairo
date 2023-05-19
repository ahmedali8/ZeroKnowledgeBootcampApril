// Destructure the `cat` tuple to call print on each member. It is like in Rust.

use debug::PrintTrait;

fn main() {
    let king = ('Charles III', 74);
    let (name, age) = king;
    name.print();
    age.print();
}
