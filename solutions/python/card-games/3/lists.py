"""Card Games exercise"""

def get_rounds(number):
    """

     :param number: int - current round number.
     :return: list - current round and the two that follow.
    """

    return [number, number + 1, number + 2]


def concatenate_rounds(rounds_1, rounds_2):
    """

    :param rounds_1: list - first rounds played.
    :param rounds_2: list - second set of rounds played.
    :return: list - all rounds played.
    """

    return rounds_1 + rounds_2


def list_contains_round(rounds, number):
    """

    :param rounds: list - rounds played.
    :param number: int - round number.
    :return:  bool - was the round played?
    """
    for game_round in rounds:
        if game_round == number:
            return True

    return False


def card_average(hand):
    """

    :param hand: list - cards in hand.
    :return:  float - average value of the cards in the hand.
    """

    card_sum = 0
    size = len(hand)

    for card in hand:
        card_sum += card

    return card_sum / size


def approx_average_is_average(hand):
    """

    :param hand: list - cards in hand.
    :return: bool - is approximate average the same as true average?
    """
    true_average = card_average(hand)
    first_last_avg = (hand[0] + hand[-1]) / 2

    middle_index = int(len(hand) / 2)
    middle_card = hand[middle_index]

    if true_average == first_last_avg:
        return True
    if true_average == middle_card:
        return True

    return False


def average_even_is_average_odd(hand):
    """

    :param hand: list - cards in hand.
    :return: bool - are even and odd averages equal?
    """

    odd_hand_avg = card_average(hand[1::2])
    even_hand_avg = card_average(hand[::2])

    return odd_hand_avg == even_hand_avg


def maybe_double_last(hand):
    """

    :param hand: list - cards in hand.
    :return: list - hand with Jacks (if present) value doubled.
    """

    if hand[-1] == 11:
        hand[-1] = 22

    return hand
