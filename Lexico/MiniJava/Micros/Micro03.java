import java.util.Scanner;

public class Micro03 {
    public static void main(String[] args) {
        int numero;
        Scanner s = new Scanner(System.in);
        System.out.println("Digite um numero:");
        numero = s.nextInt();
        if (numero >= 100) {
            if (numero <= 200) {
                System.out.printf("O numero esta no intervalo entre 100 e 200\n");
            }
            else {
                System.out.printf("O numero nao esta no intervalo entre 100 e 200\n");
            }
        }
        else {
            System.out.printf("O numero nao esta no intervalo entre 100 e 200\n");
        }
    }
}