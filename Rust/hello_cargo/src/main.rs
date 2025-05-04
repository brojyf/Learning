use std::io::stdin;

fn main() {
    let mut msg = String::new();
    println!("Please enter message: ");
    stdin().read_line(&mut msg).unwrap();
    
    // 移除输入字符串末尾的换行符
    let msg = msg.trim();
    
    println!("您输入的消息是: {}", msg);
}

// Create new file: cargo new fileName




