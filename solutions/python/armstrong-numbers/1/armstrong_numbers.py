def is_armstrong_number(number: int) -> bool:
    number_list = [int(i) for i in str(number)]
    power = len(number_list)

    return sum(i** power for i in number_list) == number
