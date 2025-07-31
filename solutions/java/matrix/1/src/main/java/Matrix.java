import java.util.ArrayList;

class Matrix {
    private ArrayList<ArrayList<Integer>> rows = new ArrayList<>();
    private ArrayList<ArrayList<Integer>> columns;

    Matrix(String matrixAsString) {
        String[] strRows = matrixAsString.split("\n");


        for (String sRow : strRows) {
            ArrayList<Integer> rowList = new ArrayList<>();
            String[] rowArray = sRow.split(" ");

            for (String ele : rowArray) {
                rowList.add(Integer.parseInt(ele));
            }

            rows.add(rowList);
        }

        columns = new ArrayList<>(rows.get(0).size());

        for (Integer row : rows.get(0)) {
            columns.add(new ArrayList<>());
        }

        for (int i = 0; i < rows.size(); ++i) {
            for (int j = 0; j < rows.get(0).size(); ++j) {
                columns.get(j).add(rows.get(i).get(j));
            }
        }
    }

    int[] getRow(int rowNumber) {
        int size = rows.get(rowNumber - 1).size();
        int[] row = new int[size];

        for(int i = 0; i < size; ++i) {
            row[i] = rows.get(rowNumber - 1).get(i);
        }
        return row;
    }

    int[] getColumn(int columnNumber) {
        int size = columns.get(columnNumber - 1).size();
        int[] column = new int[size];

        for(int i = 0; i < size; ++i) {
            column[i] = columns.get(columnNumber - 1).get(i);
        }
        return column;

    }
}
