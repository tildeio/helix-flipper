#[macro_use]
extern crate helix;

ruby! {
    class TextTransform {
        def hello() {
            println!("Hello from text_transform!");
        }
    }
}
