class Product {
    int productId;
    String productName;
    String category;

    Product(int id, String name, String category) {
        productId = id;
        productName = name;
        this.category = category;
    }
}

public class SearchExample {

    static int linearSearch(Product[] p, String name) {
        for(int i=0;i<p.length;i++) {
            if(p[i].productName.equals(name))
                return i;
        }
        return -1;
    }

    static int binarySearch(Product[] p, String name) {
        int low=0, high=p.length-1;

        while(low<=high) {
            int mid=(low+high)/2;

            int result = p[mid].productName.compareTo(name);

            if(result==0)
                return mid;
            else if(result<0)
                low=mid+1;
            else
                high=mid-1;
        }
        return -1;
    }

    public static void main(String[] args) {

        Product[] products = {
                new Product(1,"Camera","Electronics"),
                new Product(2,"Laptop","Electronics"),
                new Product(3,"Mobile","Electronics")
        };

        System.out.println(
                linearSearch(products,"Laptop"));

        System.out.println(
                binarySearch(products,"Mobile"));
    }
}