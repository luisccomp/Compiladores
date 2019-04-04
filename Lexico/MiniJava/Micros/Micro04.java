import java.util.Scanner;

public class Micro04 {
    public static void main(String[] args) {
        int x, num, intervalo;
        Scanner s = new Scanner(System.in);

        intervalo = 0;

        for (x = 0; x < 5; x ++) {
            System.out.printf("Digite um numero:");
            num = s.nextInt();

            if (num >= 10) {
                if (num <= 150) {
                    intervalo += 1;
                }
            }
        }

        System.out.printf("Ao total, foram digitados %d numeros no intervalo entre 10 e 150", intervalo);
    }
}