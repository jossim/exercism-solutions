class SqueakyClean {
    static String clean(String identifier) {
        StringBuilder sb = new StringBuilder(identifier.length());

        boolean capitalize = false;

        for(int i = 0; i < identifier.length(); ++i) {
            char ch = identifier.charAt(i);

            if(Character.isISOControl(ch)) {
                sb.append("CTRL");
            } else if(Character.isWhitespace(ch)) {
                sb.append("_");
            } else if(ch >= 'α' && ch <= 'ω') {
                continue;
            } else if(Character.isLetter(ch)) {
                if(capitalize) {
                    capitalize = false;
                    sb.append(Character.toUpperCase(ch));
                } else {
                    sb.append(ch);
                }
            } else if(ch == '-') {
                capitalize = true;
            }
        }

        return sb.toString();
    }
}
