export const colorCode = (color: string): number => {
  return COLORS.findIndex((ele: string) => color === ele);
}

export const COLORS = [
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
