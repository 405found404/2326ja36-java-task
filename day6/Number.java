class NumberThread extends Thread {
    public void run() {
        for (int i = 1; i <= 10; i++) {
            System.out.println("Number: " + i);
            try {
                Thread.sleep(500); // 0.5 second delay
            } catch (InterruptedException e) {
                System.out.println("Thread Interrupted");
            }
        }
    }
    public static void main(String[] args) {
        NumberThread t1 = new NumberThread();
        t1.start();
    }
}
