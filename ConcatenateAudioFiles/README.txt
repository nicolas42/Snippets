Requires:
the rebol interpreter available at http://www.rebol.com/downloads.html (~1 megabyte) 

Usage:
To use just put files in 'Input' directory then run 'ConcatenateAudioFiles.sh'.  


FFMPEG Concat Docs
https://trac.ffmpeg.org/wiki/Concatenate

Ffmpeg Concat demuxer

Create a file mylist.txt with all the files you want to have concatenated in the following form (lines starting with a # are ignored):

	# this is a comment
	file '/path/to/file1'
	file '/path/to/file2'
	file '/path/to/file3'

Note that these can be either relative or absolute paths. Then you can stream copy or re-encode your files:

	ffmpeg -f concat -i mylist.txt -c copy output

The output file need the same suffix as the files it's concatenating, in my experience.

	# this is a comment
	file '/path/to/file1.flac'
	file '/path/to/file2.flac'
	file '/path/to/file3.flac'

	ffmpeg -f concat -i mylist.txt -c copy output.flac



Rebol generating the file list

	foreach file read dir [ print rejoin [ {file '} dir file {'} ] ]

Just change dir and you're good to go
