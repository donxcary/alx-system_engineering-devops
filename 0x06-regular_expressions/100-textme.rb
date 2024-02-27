#!/usr/bin/env ruby
# This code takes a command-line argument and extracts the from, to, and flags fields from it
import re
import sys
input = sys.argv[1]
pattern = r"\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]"
matches = re.findall(pattern, input)
output = ",".join([",".join(match) for match in matches])
print(output)

