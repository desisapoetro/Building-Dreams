fun main() {
    println("I will build my dreams!")

    // Declare and initialize a variable to store the number of steps
    var steps = 0

    // Use a while loop to increment the steps until the goal is reached
    while (steps < 2000) {
    
        // Increment the steps and output the step count
        steps += 1
        println("Step ${steps} taken.")
        
        // Check if the goal is reached
        if (steps == 2000) {
            println("Dreams built after 2000 steps!")
        }
    }
}