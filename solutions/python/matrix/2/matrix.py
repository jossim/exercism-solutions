"""Matrix exercise"""
class Matrix:
    def __init__(self, matrix_string):
        self.rows = [
            [
                int(string) for string in row.split(' ')
            ] for row in matrix_string.split("\n")
        ]

        self.columns = [[] for i in range(len(self.rows[0]))]

        for i in range(len(self.rows)):
            for j in range(len(self.rows[0])):
                self.columns[j].append(self.rows[i][j])

    def row(self, index):
        print(self.rows)
        return self.rows[index - 1]

    def column(self, index):
        print(self.columns)
        return self.columns[index - 1]
