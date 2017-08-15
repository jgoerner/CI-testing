#!/usr/bin/env python
from sentences import generator


def test_sentence_three_words_long():
    sentence = generator.generate_sentence()
    assert len(sentence.split()) == 3
