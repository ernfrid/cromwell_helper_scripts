#!/usr/bin/env python

import sys
import json

def json_to_lines(stream):
    json_object = json.load(stream)
    outputs = json_object['outputs']
    for task in outputs:
        for line in outputs[task]:
            print line

if __name__ == '__main__':
    json_to_lines(sys.stdin)
