object BuildingDreams{ 

   //Defining the main method
   def main(args: Array[String]) {  
       //Printing the greeting
       println("Welcome to Building Dreams!") 
 
       //Creating a list to store the dreams
        val dreams =  List[String]() 
 
       //Creating a loop to capture the user's dream
       print("Enter your dream: ")
       var userDream = readLine()
       while(userDream != null){ 
           //Adding the dream to the list
           dreams :+ userDream
           //Creating a loop to capture the user's dream
           print("Enter your dream: ")
           userDream = readLine()
       }  
 
       //Checking the total number of dreams
       println("Total dreams: "+ dreams.length) 
 
       //Displaying the stored dreams
       dreams.foreach(dream => println("Dream: "+ dream)) 
 
       //Creating a list to store dream goals
       var dreamGoals =  List[String]() 
 
       //Creating a loop to capture the dream goals
       print("Enter your dream goal: ")
       var goal = readLine()
       while(goal != null){ 
           //Adding the dream goal to the list
           dreamGoals :+ goal
           //Creating a loop to capture the dream goals
           print("Enter your dream goal: ")
           goal = readLine()
       }
 
       //Checking the total number of dream goals
       println("Total dream goals: "+ dreamGoals.length) 
 
       //Displaying the stored dreams goals
       dreamGoals.foreach(goal => println("Dream Goal: "+ goal)) 
 
       //Creating a list to store dream action items
       var actionItems =  List[String]() 
 
       //Creating a loop to capture the dream action items
       print("Enter your dream action item: ")
       var action = readLine()
       while(action != null){ 
           //Adding the dream action item to the list
           actionItems :+ action
           //Creating a loop to capture the dream action items
           print("Enter your dream action item: ")
           action = readLine()
       }
 
       //Checking the total number of dream action items 
       println("Total dream action items: "+ actionItems.length) 
 
       //Displaying the stored dream action items
       actionItems.foreach(action => println("Dream Action Item: "+ action))
 
       //Creating a loop to capture the user's progress
       print("Enter your progress: ")
       var userProgress = readLine()
       while(userProgress != null){ 
           //Storing the progress
           val progress = userProgress
           //Creating a loop to capture the user's progress
           print("Enter your progress: ")
           userProgress = readLine()
       }
 
       //Checking the progress
       println("Progress: "+ progress)
 
       //Creating a loop to capture the user's feedback
       print("Enter your feedback: ")
       var userFeedback = readLine()
       while(userFeedback != null){ 
           //Storing the feedback
           val feedback = userFeedback
           //Creating a loop to capture the user's feedback
           print("Enter your feedback: ")
           userFeedback = readLine()
       }
 
       //Checking the feedback
       println("Feedback: "+ feedback)
 
       //Creating a loop to capture the user's rating
       print("Enter your rating: ")
       var userRating = readLine()
       while(userRating != null){ 
           //Storing the rating
           val rating = userRating
           //Creating a loop to capture the user's rating
           print("Enter your rating: ")
           userRating = readLine()
       }
 
       //Checking the rating
       println("Rating: "+ rating)
 
       //Printing the adieu
       println("Thank you for using Building Dreams!")
   }
}