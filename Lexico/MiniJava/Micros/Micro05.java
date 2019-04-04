import java.util.Scanner;

public class Micro05 {
    public static void main(String[] args) {
        String nome, sexo;
        int x, h, m;
        Scanner s = new Scanner(System.in);
        h = 0;
        m = 0;

        for (x = 0; x < 5; x ++) {
            System.out.printf("Digite o nome:");
            nome = s.nextLine();
            System.out.printf("H - Homem ou M - Mulher:");
            sexo = s.nextLine();
            switch (sexo) {
                case "H": h = h + 1;
                    break;
                case "M": m = m + 1;
                    break;
                default: System.out.printf("Sexo so pode ser H ou M\n");
            }
        }

        System.out.printf("Foram inseridos %d Homens\n", h);
        System.out.printf("Foram inseridas %d Mulheres\n", m);
    }
}