"""Twelve Days exercise"""
def recite(start_verse, end_verse):
    return [ build_verse(verse, verse) for verse in range(start_verse, end_verse + 1) ]

def build_verse(start_verse, end_verse):
    lyrics = ''

    gifts = [
        'and a Partridge in a Pear Tree',
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
    lyric_verses = gifts[:end_verse]
    lyric_verses.reverse()

    lyrics += ', '.join(lyric_verses) + '.'

    return lyrics.replace('and ', '') if len(lyric_verses) == 1 else lyrics
