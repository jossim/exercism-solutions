"""Tisbury Treasure Hunt exercise"""
import re

def get_coordinate(record):
    """

    :param record: tuple - a (treasure, coordinate) pair.
    :return: str - the extracted map coordinate.
    """

    return record[1]


def convert_coordinate(coordinate):
    """

    :param coordinate: str - a string map coordinate
    :return:  tuple - the string coordinate seperated into its individual components.
    """

    return (coordinate[0], coordinate[1])


def compare_records(azara_record, rui_record):
    """

    :param azara_record: tuple - a (treasure, coordinate) pair.
    :param rui_record: tuple - a (location, coordinate, quadrant) trio.
    :return: bool - True if coordinates match, False otherwise.
    """

    return azara_record[1] == (rui_record[1][0] + rui_record[1][1])


def create_record(azara_record, rui_record):
    """

    :param azara_record: tuple - a (treasure, coordinate) pair.
    :param rui_record: tuple - a (location, coordinate, quadrant) trio.
    :return:  tuple - combined record, or "not a match" if the records are incompatible.
    """

    if compare_records(azara_record, rui_record):
        return (
            azara_record[0], # location
            azara_record[1], # coordinate
            rui_record[0], # location
            rui_record[1], # coordinate
            rui_record[2] # quadrant
        )

    return "not a match"


def clean_up(combined_record_group):
    """

    :param combined_record_group: tuple of tuples - everything from both participants.
    :return: string of tuples separated by newlines - everything "cleaned". Excess coordinates and information removed.
    """
    records = ''

    for record in combined_record_group:
        treasure = record[0]
        regex_test = re.search("'", treasure)

        if regex_test:
            treasure = f'"{treasure}"'
        else:
            treasure = f"'{treasure}'"

        records += f"({treasure}, '{record[2]}', {record[3]}, '{record[-1]}')\n"

    print(records)

    return records
