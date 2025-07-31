enum Color {
  black = 1,
  brown = 2,
  red = 3,
  orange = 4,
  yellow = 5,
  green = 6,
  blue = 7,
  violet = 8,
  grey = 9,
  white = 10,
};

export function decodedValue([first, second]: Color[]) {
  return parseInt(`${Color[first]}${Color[second]}`);
}
