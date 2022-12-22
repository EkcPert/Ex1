package pr1;
import java.util.Scanner;
public class p4 {
    public static void main (String[]args) {
        Scanner sc = new Scanner(System.in); // создаёмобъект класса Scanner
        int[] m = new int[10];
        System.out.print("Введите 10 целых чисел: ");
        int i=0;
        int sum = 0;
        while (i < 10) {
            if (sc.hasNextInt()) {/* hasNextInt()возвращает истинну если с потока вводаможно считать целое число*/
                m[i] = sc.nextInt(); /* считывает целое число из потока ввода и сохраняет в массив*/
                sum=sum+m[i];
            } else {
                System.out.println("Вы ввели не целое число");
            }
            i++;
        }
        int j=0;
        int max =m[0];
        int min =m[0];
        do {
            if (m[j]>max) max=m[j];
            if (m[j]<min) min=m[j];
            j++;
        }
        while(j<10);
        System.out.println();
        System.out.println("sum="+sum);
        System.out.println("max="+max);
        System.out.println("min="+min);
    }
}
