package chapter_09.tasks;

public class Talker {

    public void run(Greeting gr) {
        // 言語名を表示
        System.out.println(gr.language());

        // 挨拶文を表示
        System.out.println(gr.message());
    }
}
