EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int baking time already elapsed.
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time


def preparation_time_in_minutes(layers):
    """
    Returns the prep time in minutes based on the number of layers

    :param layers: int the number of layers in the lasagna
    :return: int number of minutes to prepare
    """
    return layers * PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """
    Returns the total time elapsed, including the prep time and cooking time

    :param number_of_layers: int number of layers
    :param elapsed_bake_time: int time lasagna has spent in the oven
    :return: int total time spend in preparation and baking
    """
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time
