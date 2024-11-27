package chapter_08;

public class SalesEmp extends Employee {
    String birthDate = "2022/1/5";

    private int salesId;
    private int salesVolume;

    public SalesEmp(String empName, int empId, int salesId, int salesVolume) {
        super(empName, empId);
        this.salesId = salesId;
        this.salesVolume = salesVolume;
    }

    public void empDisp() {
        System.out.println("営業部番号:" + salesId);
        System.out.println("個人売上高" + salesVolume);
    }
}
