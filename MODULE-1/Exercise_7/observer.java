import java.util.*;

interface Observer {
    void update(double price);
}

interface Stock {
    void registerObserver(Observer o);
    void deregisterObserver(Observer o);
    void notifyObservers();
}

class StockMarket implements Stock {
    private List<Observer> observers = new ArrayList<>();
    private double price;

    public void setPrice(double price) {
        this.price = price;
        notifyObservers();
    }

    public void registerObserver(Observer o) {
        observers.add(o);
    }

    public void deregisterObserver(Observer o) {
        observers.remove(o);
    }

    public void notifyObservers() {
        for (Observer o : observers) {
            o.update(price);
        }
    }
}

class MobileApp implements Observer {
    public void update(double price) {
        System.out.println("Mobile App: Stock price = " + price);
    }
}

class WebApp implements Observer {
    public void update(double price) {
        System.out.println("Web App: Stock price = " + price);
    }
}

public class observer{
    public static void main(String[] args) {

        StockMarket stock = new StockMarket();

        Observer mobile = new MobileApp();
        Observer web = new WebApp();

        stock.registerObserver(mobile);
        stock.registerObserver(web);

        stock.setPrice(5000);
    }
}