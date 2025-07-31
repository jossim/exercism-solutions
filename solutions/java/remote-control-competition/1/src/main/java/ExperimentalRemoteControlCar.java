public class ExperimentalRemoteControlCar implements RemoteControlCar {
    private int distance = 0;

    public void drive() {
        distance += 20;
        System.out.println("Driving....");
    }

    public int getDistanceTravelled() {
        return distance;
    }
}
