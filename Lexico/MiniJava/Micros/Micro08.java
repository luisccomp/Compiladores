import java.util.Scanner;

public class Micro08 {
    public static void main(String[] args) {
        int numero;
        Scanner s = new Scanner(System.in);

        numero = 1;

        while (numero != 0) {
            System.out.println("Digite um numero: ");
            numero = s.nextInt();

            if (numero > 10) {
                System.out.printf("O numero %d é maior que 10\n", numero);
            }
            else {
                System.out.printf("O numero %d é menor que 10\n", numero);
            }
        }
    }
}
