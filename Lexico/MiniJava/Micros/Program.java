import java.util.Scanner;

public class Program {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        String nome;
        char caractere = 'b';
        int numero;
		boolean bool;

        System.out.printf("Digite o seu nome: ");
        nome = s.nextLine();
        System.out.printf("Olá, %s!\n", nome);
        System.out.printf("Digite sua idade: ");
        numero = Integer.parseInt(s.nextLine());
        System.out.printf("Idade: %d\n", numero);
        System.out.printf("Digite um caractere: ");
        caractere = s.nextLine().charAt(0);
        System.out.printf("Caractere '%c'\n", caractere);
    }
}
