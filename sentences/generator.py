#!/usr/bin/env python
import random

NOUNS = ("I", "You", "They", "All Dutch")
VERBS = ("like", "hate", "obey", "enjoy")
OBJECTS = ("Oreos", "Python", "Soccer", "Coffee")


def generate_sentence():
    sentence = "{} {} {}.".format(
        random.sample(NOUNS, 1)[0],
        random.sample(VERBS, 1)[0],
        random.sample(OBJECTS, 1)[0]
    )
    return sentence


if __name__ == "__main__":
    print(generate_sentence())
