#!/bin/bash
# This is the old command line:
#xsel | festival --tts --pipe
# The new command is
xsel | espeak --stdin
