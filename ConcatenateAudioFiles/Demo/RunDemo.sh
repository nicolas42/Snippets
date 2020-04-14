# For running in finder - change current directory to directory of script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
echo $DIR

# Actual command
ffmpeg -f concat -i mylist.txt -c copy output.mp3