import java.util.*;
import java.text.DecimalFormat;

public class CurrencyConverter {

    public static void main(String[] args) {

            if (args.length == 0) {
                System.out.println("Please enter in the valid format: amount currency i.e. 5 dollars");
                System.exit(0);
            }
            double amount, dollar, pound, code, euro;
            DecimalFormat f = new DecimalFormat("##.##");
            try {
                Integer.parseInt(args[0]);
            } catch (NumberFormatException e) {
                System.out.println("Please enter in the valid format: amount currency i.e. 5 dollars");
                System.exit(0);
            }
            amount = Integer.parseInt(args[0]);
            String currency = args[1].toLowerCase();
            // For amounts Conversion
            switch (currency) {
                case "dollars":
                    // For Dollar Conversion
                    pound = amount * 0.74;
                    System.out.println(amount + " Dollars = " + f.format(pound) + " Pounds");
                    euro = amount * 0.88;
                    System.out.println(amount + " Dollars = " + f.format(euro) + " Euros");
                    break;
                case "pounds":
                    // For Pound Conversion
                    dollar = amount * 1.36;
                    System.out.println(amount + " Pounds = " + f.format(dollar) + " Dollars");
                    euro = amount * 1.19;
                    System.out.println(amount + " Pound = " + f.format(euro) + " Euros");
                    break;
                case "euros":
                    // For Euro Conversion
                    dollar = amount * 1.13;
                    System.out.println(amount + " Euros = " + f.format(dollar) + " Dollars");
                    pound = amount * 0.84;
                    System.out.println(amount + " Euros = " + f.format(pound) + " Pounds");
                    break;
                default:
                    System.out.println("Please enter a valid currency: Dollars, Pounds or Euros");
                    break;
            }
            System.out.println("Thank you for using the converter.");
        }
    }
