//Modules
mod dreams;

//Constants
const DREAM_MESSAGE: &str = "building dreams"; 

//Main Function
fn main() {
    dreams::build_your_dreams();
}

//Dreams Module
pub mod dreams {
    use std::io;
    use std::str;

    //Build your Dreams Function
    pub fn build_your_dreams() {
        let mut user_input = String::new();
        let message = "The dream is the ultimate goal. What do you want to dream about?";

        println!("{}", message);

        io::stdin()
            .read_line(&mut user_input)
            .expect("Failed to read line.");

        let user_input: String = user_input.trim().parse().expect("Failed to parse user input.");

        let dream = String::from("Dreaming of: ") + &user_input;

        println!("{}", dream);

        println!("Start {} {user_dream}!", DREAM_MESSAGE, user_dream = user_input);

        let mut total_steps = String::new();
        let counter_message = "How many steps do you have to take in order to reach your dream?";
    
        println!("{}", counter_message);

        io::stdin()
            .read_line(&mut total_steps)
            .expect("Failed to read line.");

        let total_steps: u32 = total_steps.trim().parse().expect("Failed to parse user input");

        println!("You need to take {} steps.", total_steps);

        println!("Let's get to {DREAM_MESSAGE}!", DREAM_MESSAGE = DREAM_MESSAGE);

        let mut step_counter: u32 = 0;
        loop {
            println!("You are currently on step {}. What do you need to do to continue?", step_counter);

            let mut goal = String::new();
            io::stdin()
                .read_line(&mut goal)
                .expect("Failed to read line.");

            let goal: String = goal.trim().parse().expect("Failed to parse user input");

            println!("You have to {}", goal);

            step_counter += 1;

            if step_counter == total_steps {
                println!("You have reached your dream!");
                break;
            }
        }
    }
}