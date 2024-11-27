package chapter_09.greeting;

/*
 * 日本語で挨拶文を作成するクラス
 */
public class JapaneseGreeting extends Greeting {

    /*
     * 日本語を取得
     */
    public String language() {
        return "Japanese";
    }

    /*
     * 日本語の挨拶文を取得
     */
    public String message() {
        return "こんにちは";
    }
}
