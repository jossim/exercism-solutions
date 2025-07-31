export function decodedValue(colors: string[]) {
  const COLORS = [
      'black',
      'brown',
      'red',
      'orange',
      'yellow',
      'green',
      'blue',
      'violet',
      'grey',
      'white',
   ];

  colors = colors.slice(0, 2);

  return parseInt(`${COLORS.indexOf(colors[0])}${COLORS.indexOf(colors[1])}`);
}
