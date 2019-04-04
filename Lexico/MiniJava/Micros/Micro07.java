import java.util.Scanner;

public class Micro07 {
    public static void main(String[] args) {
        int programa, numero;
        char opc;
        Scanner s = new Scanner(System.in);

        programa = 1;

        while (programa == 1) {
            System.out.printf("Digite um numero:");
            numero = s.nextInt();

            if (numero > 0) {
                System.out.printf("Positivo");
            } else {
                if (numero == 0) {
                    System.out.printf("O numero é igual a 0");
                }
                if (numero < 0) {
                    System.out.printf("Negativo");
                }
            }

            System.out.printf("Desjea finalizar? (S/N)");
            opc = s.nextLine().charAt(0);

            if (opc == 's') {
                programa = 0;
            }
        }
    }
}