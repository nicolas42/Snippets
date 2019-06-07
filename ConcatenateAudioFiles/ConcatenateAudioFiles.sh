#!/usr/local/bin/rebol 
rebol []

dir: %Input/
files: read dir
out: copy {}

foreach file files [ append out rejoin [ {file '} dir file {'^/} ] ]

print out

write %mylist.txt out

suffix: to-string suffix? first files

command: rejoin [ {# For running in finder - change current directory to directory of script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
echo $DIR
echo mylist.txt
}
{ffmpeg -f concat -safe 0 -i mylist.txt -c copy output} 
suffix
]

call/console command

; -safe 0 allows spaces in the files along with various other things
; ffmpeg definition of a safe file - https://www.ffmpeg.org/ffmpeg-formats.html#Options