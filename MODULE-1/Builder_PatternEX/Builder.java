class Computer {

    String cpu;
    int ram;
    int storage;

    private Computer(Builder b) {
        cpu = b.cpu;
        ram = b.ram;
        storage = b.storage;
    }

    void show() {
        System.out.println("CPU : " + cpu);
        System.out.println("RAM : " + ram + " GB");
        System.out.println("Storage : " + storage + " GB");
    }

    static class Builder {
        String cpu;
        int ram;
        int storage;

        Builder setCpu(String cpu) {
            this.cpu = cpu;
            return this;
        }

        Builder setRam(int ram) {
            this.ram = ram;
            return this;
        }

        Builder setStorage(int storage) {
            this.storage = storage;
            return this;
        }

        Computer build() {
            return new Computer(this);
        }
    }
}

public class Builder {
    public static void main(String[] args) {

        Computer c1 = new Computer.Builder()
                .setCpu("Intel i5")
                .setRam(8)
                .setStorage(512)
                .build();

        Computer c2 = new Computer.Builder()
                .setCpu("AMD Ryzen 7")
                .setRam(16)
                .setStorage(1000)
                .build();

        c1.show();
        System.out.println();

        c2.show();
    }
}