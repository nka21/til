package chapter_09;

public class Friend extends Member {
    int age;

    public void set(int age) {
        this.age = age;
    }

    public void disp() {
        super.disp(); // "Memberクラスです。"
        System.out.println("Frindクラスです。");
    }
}
