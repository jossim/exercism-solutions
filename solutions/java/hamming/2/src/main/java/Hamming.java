public class Hamming {
    private char[] leftStrand;
    private char[] rightStrand;

    public Hamming(String leftStrand, String rightStrand) {
        if (leftStrand.length() != rightStrand.length()) {
            if (leftStrand.length() == 0) {
                throw new IllegalArgumentException("left strand must not be empty.");
            } else if (rightStrand.length() == 0) {
                throw new IllegalArgumentException("right strand must not be empty.");
            } else {
                throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
            }
        }

        this.leftStrand = leftStrand.toCharArray();
        this.rightStrand = rightStrand.toCharArray();
    }

    public int getHammingDistance() {
        int distance = 0;

        for (int i = 0; i < leftStrand.length; ++i) {
            if (leftStrand[i] != rightStrand[i]) {
                distance++;
            }
        }
        return distance;
    }
}
