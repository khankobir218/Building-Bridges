// Creating a bridge between two objects
fn build_bridge<T1, T2>(o1: &mut T1, o2: &mut T2) {
    // Initializing the bridge
    let mut bridge = Vec::<usize>::new();
    
    // Iterate over each element of o1
    for i in 0..o1.len() {
        // Initialize a list of indicies in o2
        let mut o2_list = Vec::<usize>::new();
        
        // Iterate over each element of o2
        for j in 0..o2.len() {
            // If the elements match, add the index to o2_list
            if o2[j] == o1[i] {
                o2_list.push(j);
            }
        }
        
        // Find the smallest index in o2_list
        let mut smallest = 0;
        for i in 1..o2_list.len() {
            if o2_list[i] < o2_list[smallest] {
                smallest = i;
            }
        }
        // Push the smallest index to bridge
        bridge.push(o2_list[smallest]);
    }
    
    // Return the bridge
    println!("Bridge: {:?}", bridge);
}

fn main() {
    // Initializing two vectors
    let mut v1 = vec![1,2,3,4,4,4,4,5];
    let mut v2 = vec![5,4,3,2,1,4,3];
    
    // Call the build_bridge function
    build_bridge(&mut v1, &mut v2);
}