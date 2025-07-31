""" Raindrops exercise """
def convert(number):
    words = {
        3: 'Pling',
        5: 'Plang',
        7: 'Plong'
    }

    return ''.join([
        word for num, word in words.items() if number % num == 0
    ]) or f"{number}"
