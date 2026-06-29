class Employee {
    int employeeId;
    String name;
    String position;
    double salary;

    Employee(int id, String name,
             String position, double salary) {
        employeeId = id;
        this.name = name;
        this.position = position;
        this.salary = salary;
    }
}

public class EmployeeManagement {

    public static void main(String[] args) {

        Employee emp[] = new Employee[5];

        emp[0] = new Employee(1,"Arun","Manager",50000);
        emp[1] = new Employee(2,"Rahul","Developer",40000);

        for(Employee e : emp) {
            if(e != null)
                System.out.println(e.name);
        }

        int searchId = 2;

        for(Employee e : emp) {
            if(e != null && e.employeeId == searchId)
                System.out.println("Found: " + e.name);
        }

        emp[1] = null;
    }
}