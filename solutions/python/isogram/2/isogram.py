"""Isogram exercise"""
import re

def is_isogram(string):
    string = re.sub(r'[\W-]+', '', string.lower())
    return len(string) == len(set(string))
