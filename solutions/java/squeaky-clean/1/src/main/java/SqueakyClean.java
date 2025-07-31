class SqueakyClean {
    static String clean(String identifier) {
        // StringBuilder sb = new StringBuilder(identifier);

        // for(int i = 0; i < sb.capacity(); ++i) {
        //     System.out.println("Printing char below");
        //     System.out.println(sb.charAt(i));
        // }

        return identifier.replace(' ', '_');
    }
}
