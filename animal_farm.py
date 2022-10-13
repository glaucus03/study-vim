#!/usr/bin/python3

"""Our own little animal farm. """

import sys


def add_animal(farm, animal):
    farm.add(animal)
    return farm


def main(animals):
    farm = set()
    for animal in animals:
        farm = add_animal(farm, animal)
        print(1)
        print(2)
        print(3)        
    print("We've got some animals in the farm:", ",".join(farm) + '.')


if __name__ == '__main__':
    if len(sys.argv) == 1:
        print("Pass at least one animal type!")
    main(sys.argv[1:])
