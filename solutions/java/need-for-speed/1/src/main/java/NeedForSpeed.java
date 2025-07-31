class NeedForSpeed {
    private int speed;
    private int batteryDrain;
    private int batteryLevel = 100;
    private int distance = 0;

    NeedForSpeed(int speed, int batteryDrain) {
        this.speed = speed;
        this.batteryDrain = batteryDrain;
    }

    public boolean batteryDrained() {
        return batteryLevel < batteryDrain;
    }

    public int distanceDriven() {
        return distance;
    }

    public int getSpeed() {
        return speed;
    }

    public int getBatteryDrain() {
        return batteryDrain;
    }

    public void drive() {
        if (!batteryDrained()) {
            distance += speed;
            batteryLevel -= batteryDrain;
        }
    }

    public static NeedForSpeed nitro() {
        return new NeedForSpeed(50, 4);
    }
}

class RaceTrack {
    private int distance;

    RaceTrack(int distance) {
        this.distance = distance;
    }

    public boolean carCanFinish(NeedForSpeed car) {
        return ((double) distance / car.getSpeed()) <= (100.0 / car.getBatteryDrain());
    }
}
