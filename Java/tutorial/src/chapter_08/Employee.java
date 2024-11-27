package chapter_08;

public class Employee {
    private String empName;

    private int empId;

    String hireDate = "2019/10/01";
    String birthDate = "2003/10/21";

    public Employee(String empName, int empId) {
        this.empName = empName;
        this.empId = empId;
    }

    public void disp() {
        System.out.println("社員名: " + empName);
        System.out.println("社員番号: " + empId);
    }
}
