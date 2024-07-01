# Wordlist Processor
A simple bash script to process a wordlist and create a new one based on the specified command

# Usage
```
[gifi@ThinkPad wlproc]$ ./wlproc.sh -h
Usage: ./wlproc.sh <command> <wordlist> <new_wordlist>
```

# Example
```
[gifi@ThinkPad solve]$ ./wlproc.sh "./lesspass.rs -l 32 veracrypt chernyy" match.txt new.txt

Elapsed time: 1,538
CPU time: 0,280

Done.
```