interface PaymentProcessor {
    void processPayment(double amount);
}

class GooglePay {
    void pay(double amount) {
        System.out.println("Paid Rs." + amount + " using Google Pay");
    }
}

class PhonePe {
    void sendMoney(double amount) {
        System.out.println("Paid Rs." + amount + " using PhonePe");
    }
}

class GooglePayAdapter implements PaymentProcessor {

    GooglePay gpay;

    GooglePayAdapter(GooglePay gpay) {
        this.gpay = gpay;
    }

    public void processPayment(double amount) {
        gpay.pay(amount);
    }
}

class PhonePeAdapter implements PaymentProcessor {

    PhonePe phonepe;

    PhonePeAdapter(PhonePe phonepe) {
        this.phonepe = phonepe;
    }

    public void processPayment(double amount) {
        phonepe.sendMoney(amount);
    }
}

public class adapter {
    public static void main(String[] args) {

        PaymentProcessor p1 =
                new GooglePayAdapter(new GooglePay());

        PaymentProcessor p2 =
                new PhonePeAdapter(new PhonePe());

        p1.processPayment(1000);
        p2.processPayment(2000);
    }
}