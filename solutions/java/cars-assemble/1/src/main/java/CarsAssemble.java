public class CarsAssemble {

    public double productionRatePerHour(int speed) {
        int cars_per_hour = speed * 221;
        double successful_cars_per_hour = cars_per_hour;

        if(speed > 4 && speed < 9) {
            successful_cars_per_hour = cars_per_hour * 0.9;
        } else if(speed == 9) {
            successful_cars_per_hour = cars_per_hour * 0.8;
        } else if(speed == 10) {
            successful_cars_per_hour = cars_per_hour * 0.77;
        }

        return successful_cars_per_hour;
    }

    public int workingItemsPerMinute(int speed) {
        double cars_per_hour = productionRatePerHour(speed);
        double cars_per_minute = cars_per_hour / 60;

        return (int) cars_per_minute;
    }
}
