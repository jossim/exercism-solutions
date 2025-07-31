enum Color {
  black = '',
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9,
};

enum Units {
  black = ' ohms',
  brown = '0 ohms',
  red = ' kiloohms',
  orange = ' kiloohms',
  yellow = '0 kiloohms',
  blue = ' megaohms',
  white = ' gigaohms',
}

export function decodedResistorValue([first, second, third]: string[]) {
  if (first === 'black' && second === 'black' && third === 'black') {
    return '0 ohms';
  }

  let value = `${Color[first as keyof typeof Color]}${Color[second as keyof typeof Color]}${Units[third as keyof typeof Units]}`;
  return value;
}
