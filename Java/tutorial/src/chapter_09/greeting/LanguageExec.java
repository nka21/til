package chapter_09.greeting;

public class LanguageExec {
    public static void main(String[] args) {
        Talker talker = new Talker();
        talker.run(new JapaneseGreeting());
    }
}
