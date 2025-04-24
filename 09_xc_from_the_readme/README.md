# README

## Tasks

### bash-hello

Prints hello

```sh
echo "hello from the bash 🔧"
```

### ruby-hello

```
#!/usr/bin/env ruby
puts "hello from ruby 💎"
```

### python-hello

```
#!/usr/bin/env python
print("hello from python 🐍")
```

### node-hello

```
#!/usr/bin/env node
console.log("hello from node ✨")
```

### cargo-script

```
cargo install --list | grep cargo-script &> /dev/null \
    || cargo install cargo-script
```

### rust-hello

Requires: cargo-script
```
#!/usr/bin/env run-cargo-script

fn main() {
    println!("Hello Rust 🦀!");
}
```


### all-the-hello

Requires: bash-hello, ruby-hello, python-hello, node-hello, rust-hello

### clean

```
cargo uninstall cargo-script
```
