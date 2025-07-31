"""Twelve Days exercise"""
def recite(start_verse, end_verse):
    return [ build_verse(verse, verse) for verse in range(start_verse, end_verse + 1) ]

def build_verse(start_verse, end_verse):
    lyrics = ''
    verses = list(range(0, end_verse))
    verses.reverse()

    gifts = [
        'a Partridge in a Pear Tree',
        'two Turtle Doves',
        'three French Hens',
        'four Calling Birds',
        'five Gold Rings',
        'six Geese-a-Laying',
        'seven Swans-a-Swimming',
        'eight Maids-a-Milking',
        'nine Ladies Dancing',
        'ten Lords-a-Leaping',
        'eleven Pipers Piping',
        'twelve Drummers Drumming'
    ]

    days = [
        'first', 'second', 'third', 'fourth', 'fifth', 'sixth', 'seventh', 'eighth',
        'ninth', 'tenth', 'eleventh', 'twelfth'
    ]

    lyrics = f"On the {days[start_verse - 1]} day of Christmas my true love gave to me: "
    lyric_verses = []

    # print(f"VERSES: {verses}")

    for verse in verses:
        lyric_verses.append(gifts[verse])

    if len(lyric_verses) > 1:
        lyrics += ', '.join(lyric_verses[:-1])
        lyrics += f', and {lyric_verses[-1]}.'
    else:
        lyrics += ', '.join(lyric_verses) + '.'

    # print("SONG: " + lyrics)
    return lyrics
