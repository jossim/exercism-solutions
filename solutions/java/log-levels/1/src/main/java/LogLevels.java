public class LogLevels {
    
    public static String message(String logLine) {
        int index = logLine.indexOf(":");
        return logLine.substring(index + 1).strip();
    }

    public static String logLevel(String logLine) {
        int index = logLine.indexOf("]");
        String level = logLine.substring(1, index).toLowerCase();

        return level;
    }

    public static String reformat(String logLine) {
        String message = LogLevels.message(logLine);
        String level = LogLevels.logLevel(logLine);
        String reformated_message = message + " (" + level + ")";

        return  reformated_message;
    }
}
