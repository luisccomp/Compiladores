import java.util.Scanner;

public class Micro09 {
    public static void main(String[] args) {
        float preco, venda, novoPreco;
        Scanner s = new Scanner(System.in);

        System.out.printf("Digite o preço: ");
        preco = s.nextFloat();
        System.out.printf("Digite a venda: ");
        venda = s.nextFloat();

        if ((venda < 500) || (preco < 300)) {
            novoPreco = preco + 10 / 100 * preco;
        }
        else if ((venda >= 500 && venda < 1200) || (preco >= 30 && preco < 80)) {
            novoPreco = preco + 15 / 100 * preco;
        }
        else if (venda >= 1200 || preco >= 80) {
            novoPreco = preco - 20 / 100 * preco;
        }
    }
}
