const MY_CONSTANT: u32 = 1_000;

fn main() {
    let mut who = "World"; // mutable variable
    println!("Hello, {}!", who);
    who = "Brazil";
    println!("Hello, {}!", who);
    println!("Value of my constant: {}!", MY_CONSTANT);
}