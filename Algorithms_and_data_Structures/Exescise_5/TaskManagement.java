class Task {
    int taskId;
    String taskName;
    String status;
    Task next;

    Task(int id, String name, String status) {
        taskId = id;
        taskName = name;
        this.status = status;
    }
}

public class TaskManagement {

    static Task head = null;

    static void add(int id, String name, String status) {
        Task newNode = new Task(id, name, status);

        if(head == null)
            head = newNode;
        else {
            Task temp = head;
            while(temp.next != null)
                temp = temp.next;
            temp.next = newNode;
        }
    }

    static void display() {
        Task temp = head;

        while(temp != null) {
            System.out.println(temp.taskName);
            temp = temp.next;
        }
    }

    public static void main(String[] args) {

        add(1,"Coding","Pending");
        add(2,"Testing","Completed");

        display();
    }
}