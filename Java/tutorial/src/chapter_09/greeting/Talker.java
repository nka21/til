package chapter_09.greeting;

/*
 * 挨拶を実行するクラス
 */
public class Talker {

    /*
     * 挨拶の実行を表示する
     *
     * @param Greeting型 gr
     */
    public void run(Greeting gr) {
        // 言語名を表示
        System.out.println(gr.language());

        // 挨拶文を表示
        System.out.println(gr.message());
    }
}
