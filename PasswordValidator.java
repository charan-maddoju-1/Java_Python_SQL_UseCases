import java.util.Scanner;

public class PasswordValidator {
    public static boolean validatePassword(String password) {
        boolean hasUppercase = false;
        boolean hasDigit = false;
        boolean isValid = true;
        
        if (password.length() < 8) {
            System.out.println("! Password is too short (minimum 8 characters required)");
            isValid = false;
        }

        for (int i = 0; i < password.length(); i++) {
            char ch = password.charAt(i);

            if (Character.isUpperCase(ch)) {
                hasUppercase = true;
            }

            if (Character.isDigit(ch)) {
                hasDigit = true;
            }
        }

        if (!hasUppercase) {
            System.out.println("! Missing an uppercase letter");
            isValid = false;
        }
        if (!hasDigit) {
            System.out.println("! Missing a digit");
            isValid = false;
        }
        return isValid;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String password;
        System.out.println("------ SafeLog Password Validator -------");

        while (true) {
            System.out.print("Enter your password: ");
            password = scanner.nextLine();
            if (validatePassword(password)) {
                System.out.println("Password is valid and secure");
                break;
            } else {
                System.out.println("Please try again\n");
            }
        }

        scanner.close();
    }
}