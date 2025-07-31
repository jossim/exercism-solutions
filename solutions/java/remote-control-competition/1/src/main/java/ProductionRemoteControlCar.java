class ProductionRemoteControlCar implements RemoteControlCar, Comparable<ProductionRemoteControlCar> {
    private int distance = 0;
    private int victories = 0;

    public void drive() {
        distance += 10;
        System.out.println("Driving....");
    }

    public int getDistanceTravelled() {
        return distance;
    }

    public int getNumberOfVictories() {
        return victories;
    }

    public void setNumberOfVictories(int numberofVictories) {
        victories = numberofVictories;
    }

    @Override
    public int compareTo(ProductionRemoteControlCar prodCar) {
        if(victories > prodCar.getNumberOfVictories()) {
            return 1;
        }

        return -1;
    }
}
