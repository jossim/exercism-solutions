import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class HandshakeCalculator {

    List<Signal> calculateHandshake(int number) {
        ArrayList<Signal> signals = new ArrayList<>();
        int[] binaryPlaces = {1, 2, 4, 8};

        for (int i = 0; i < binaryPlaces.length; ++i) {
            if ((number & binaryPlaces[i]) == binaryPlaces[i]) {
                signals.add(Signal.values()[i]);
            }
        }

        if ((number & 16) == 16) {
            Collections.reverse(signals);
        }
        
        return signals;
    }

}
