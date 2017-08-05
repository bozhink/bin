#!/bin/bash
#xsel | festival --tts --pipe
xsel | espeak --stdin -s 160 -v en
