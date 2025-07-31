import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class HandshakeCalculator {

    List<Signal> calculateHandshake(int number) {
        ArrayList<Signal> signals = new ArrayList<>();
        char[] binary = Integer.toBinaryString(number).toCharArray();
        int charLength = binary.length;

        if (binary[charLength - 1] == '1') {
            signals.add(Signal.WINK);
        }
        if (charLength > 1 && binary[charLength - 2] == '1') {
            signals.add(Signal.DOUBLE_BLINK);
        }
        if (charLength > 2 && binary[charLength - 3] == '1') {
            signals.add(Signal.CLOSE_YOUR_EYES);
        }
        if (charLength > 3 && binary[charLength - 4] == '1') {
            signals.add(Signal.JUMP);
        }
        if (charLength > 4 && binary[charLength - 5] == '1') {
            Collections.reverse(signals);
        }
        
        return signals;
    }

}
