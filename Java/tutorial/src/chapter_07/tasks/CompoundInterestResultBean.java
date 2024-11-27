package chapter_07.tasks;

public class CompoundInterestResultBean {
    // 経過月データ管理
    private int everyMonth;
    // 複利合計(元金+利息)データ管理
    private int totalInterest;

    public CompoundInterestResultBean(int everyMonth, int totalInterest) {
        this.everyMonth = everyMonth;
        this.totalInterest = totalInterest;
    }

    public int getEveryMonth() {
        return everyMonth;
    }

    public void setEveryMonth(int everyMonth) {
        this.everyMonth = everyMonth;
    }

    public int getTotalInterest() {
        return totalInterest;
    }

    public void setTotalInterest(int totalInterest) {
        this.totalInterest = totalInterest;
    }
}
