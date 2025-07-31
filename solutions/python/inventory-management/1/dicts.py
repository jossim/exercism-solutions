"""Inventory Management exercise"""
def create_inventory(items):
    """

    :param items: list - list of items to create an inventory from.
    :return:  dict - the inventory dictionary.
    """

    inventory = {}

    for item in items:
        quantity = inventory.get(item)
        if quantity:
            inventory[item] = quantity + 1
        else:
            inventory[item] = 1

    return inventory


def add_items(inventory, items):
    """

    :param inventory: dict - dictionary of existing inventory.
    :param items: list - list of items to update the inventory with.
    :return:  dict - the inventory dictionary update with the new items.
    """
    for item in items:
        quantity = inventory.get(item)
        if quantity:
            inventory[item] = quantity + 1
        else:
            inventory[item] = 1

    return inventory


def decrement_items(inventory, items):
    """

    :param inventory: dict - inventory dictionary.
    :param items: list - list of items to decrement from the inventory.
    :return:  dict - updated inventory dictionary with items decremented.
    """

    for item in items:
        quantity = inventory[item]

        if quantity > 0:
            inventory[item] = quantity - 1

    return inventory


def remove_item(inventory, item):
    """
    :param inventory: dict - inventory dictionary.
    :param item: str - item to remove from the inventory.
    :return:  dict - updated inventory dictionary with item removed.
    """

    inventory.pop(item, 'not found')

    return inventory


def list_inventory(inventory):
    """

    :param inventory: dict - an inventory dictionary.
    :return: list of tuples - list of key, value pairs from the inventory dictionary.
    """

    item_list = []

    for item in inventory:
        quanity = inventory[item]

        if quanity > 0:
            item_list.append((item, quanity))

    return item_list
