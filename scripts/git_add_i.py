import os
import sys
import subprocess
import re
import argparse

parser = argparse.ArgumentParser(description='Stage files after looking at the diff')

parser.add_argument('--untracked',
    dest='include_untracked',
    action='store_true',
    default=False,
    help='Also include untracked files (default: false)')

args = parser.parse_args()

if args.include_untracked:
    stream = os.popen('git status --porcelain --untracked-files=normal')
else:
    stream = os.popen('git status --porcelain --untracked-files=no')

output = stream.read()

path_pattern = '^[DAUM\? ][DAUM\?]:? '
for ln in output.splitlines():
    matches = re.findall(path_pattern, ln)
    if len(matches) == 1:
        print("File: " + ln)
        ln = ln[len(matches[0]):]
    else:
        print("Ignore: " + ln)
        continue

    ln = ":/" + ln

    os.system("git diff -- " + ln)

    print("Add " + ln + "? ([y]es,[n]o,[s]top)")
    res = raw_input("")
    if res == 'y':
        print("Adding " + ln)
        os.system("git add -- " + ln)
    elif res == 's':
        print("Stopping at " + ln)
        break
    else: # no
        print("Skipping " + ln)

print("Done")
os.system("git status")

