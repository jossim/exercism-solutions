
class BirdWatcher {
    private final int[] birdsPerDay;

    public BirdWatcher(int[] birdsPerDay) {
        this.birdsPerDay = birdsPerDay.clone();
    }

    public int[] getLastWeek() {
        return this.birdsPerDay;
    }

    public int getToday() {
        if (this.birdsPerDay.length == 0) {
            return 0;
        }

        return this.birdsPerDay[this.birdsPerDay.length - 1];
    }

    public void incrementTodaysCount() {
        int todayIncremented = this.getToday() + 1;
        this.birdsPerDay[this.birdsPerDay.length - 1] = todayIncremented;
    }

    public boolean hasDayWithoutBirds() {
        for(int birdsOnDay : this.birdsPerDay) {
            if(birdsOnDay == 0) {
                return true;
            }
        }

        return false;
    }

    public int getCountForFirstDays(int numberOfDays) {
        int numberOfBirds = 0;

        if(numberOfDays > this.birdsPerDay.length) {
            numberOfDays = this.birdsPerDay.length;
        }

        for(int i = 0; i < numberOfDays; ++i) {
            numberOfBirds += this.birdsPerDay[i];
        }

        return numberOfBirds;
    }

    public int getBusyDays() {
        int busyDays = 0;

        for(int birdsOnDay : this.birdsPerDay) {
            if(birdsOnDay > 4) {
                busyDays++;
            }
        }

        return busyDays;
    }
}
