import java.util.HashMap;

class Product {
    int productId;
    String productName;
    int quantity;
    double price;

    Product(int productId, String productName, int quantity, double price) {
        this.productId = productId;
        this.productName = productName;
        this.quantity = quantity;
        this.price = price;
    }

    public String toString() {
        return productId + " " + productName +
               " Qty:" + quantity +
               " Price:" + price;
    }
}

public class Inventry {
    public static void main(String[] args) {

        HashMap<Integer, Product> inventory = new HashMap<>();

        inventory.put(101, new Product(101, "Laptop", 20, 50000));
        inventory.put(102, new Product(102, "Mouse", 50, 500));

        inventory.put(103, new Product(103, "Keyboard", 30, 1000));

        inventory.get(101).quantity = 25;

        inventory.remove(102);

        for(Product p : inventory.values()) {
            System.out.println(p);
        }
    }
}