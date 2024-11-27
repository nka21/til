package chapter_07.tasks;

public class DispOutput {
    public void outputExec(CompoundInterestResultBean[] resultBeanArray) {
        // 配列の最後を取得したいので、-1をする
        CompoundInterestResultBean lastResultBean = resultBeanArray[resultBeanArray.length - 1];
        // 最後のインデックスの値を取得
        int lastTotalInterest = lastResultBean.getTotalInterest();

        System.out.println("===============================");
        for (CompoundInterestResultBean result : resultBeanArray) {

            // 最終行かどうか
            if (lastTotalInterest == result.getTotalInterest()) {
                System.out.println("===============================");
                System.out.println("元利合計: " + result.getTotalInterest() + "円");
                System.out.println("===============================");
            } else {
                System.out.println(
                        result.getEveryMonth() + "ヶ月目: " + result.getTotalInterest() + "円");
            }
        }
    }
}
