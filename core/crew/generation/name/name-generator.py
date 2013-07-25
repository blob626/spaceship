#! /usr/bin/python3

import random
import json
import configparser

from name import *

config = configparser.ConfigParser()
config.read('name.config')

class NameGenerator():
    def __init__(self, first_names, last_names):
        self.first_names = first_names
        self.last_names = last_names


    def random_name(self):
        first = random.choice(first_names)
        last = random.choice(last_names)
        return Name(first, last)


    def random_names(self, num):
        return [self.random_name() for i in range(num)]


def name_list(filename):
    with open(filename) as in_file:
        return [line.strip() for line in in_file]


first_names = name_list(config['Files']['First'])
last_names = name_list(config['Files']['Last'])
nameGenerator = NameGenerator(first_names, last_names)

names = nameGenerator.random_names(4)
#print(json.dumps(names))
for i in names:
    print(i.first + " " + i.last)
