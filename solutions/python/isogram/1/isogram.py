"""Isogram exercise"""
import re

def is_isogram(string):
    str_list = list(re.sub(r'[\W-]+', '', string.lower()))

    return len(str_list) == len(set(str_list))
