public class BuildingDreams{
    public static void main (String [] args) {
        
        // Variables 
        int firstNumber = 0;
        int secondNumber = 3;
        int thirdNumber = 4;
        String message = "Building Dreams";
        
        //Logic
        while (firstNumber <= 2000) {
            System.out.println(message);
            firstNumber += secondNumber;
            secondNumber += thirdNumber;
        }
    }
}