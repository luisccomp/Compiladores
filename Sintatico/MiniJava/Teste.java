import java.util.Scanner;

public class Teste {
    public static boolean ePar(int x) {
        if (x % 2 == 0) {
            return true;
        }
        else {
            return false;
        }
    }

    /*
    Função principal do programa...
    */
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int x;
        boolean b;

        // Atribuindo um valor inteiro a uma variavel
        x = Integer.parseInt(s.nextLine());
        b = ePar(x);

        for (x = 0; x < 10; x += 1) {}
    }
}

