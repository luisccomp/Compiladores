import java.util.Scanner;

public class Micro02 {
    public static void main(String[] args) {
        int num1, num2;
        Scanner s = new Scanner(System.in);

        System.out.printf("Digite o primeiro número:");
        num1 = s.nextInt();
        System.out.printf("Digite o segundo número:");
        num2 = s.nextInt();

        if (num1 > num2) {
            System.out.printf("O primeiro numero %d e maior que o segundo %d", num1, num2);
        }
        else {
            System.out.printf("O segundo numero %d e maior que o primeiro %d", num2, num1);
        }
    }
}