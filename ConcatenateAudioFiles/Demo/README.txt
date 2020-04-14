=== Ffmpeg Concat demuxer

To concatenate media files with ffmpeg (specifically the Concat demuxer)

1. Create a file mylist.txt with all the files you want to have concatenated in the following form (lines starting with a # are ignored):

	# this is a comment
	file '/path/to/file1'
	file '/path/to/file2'
	file '/path/to/file3'

Note that these can be either relative or absolute paths. Then you can stream copy or re-encode your files:

2. Run the following command in the terminal, making sure that the output file's extension is the same as the input file's.

	ffmpeg -f concat -i mylist.txt -c copy output


source: from https://trac.ffmpeg.org/wiki/Concatenate


Example:

	# this is a comment
	file '/path/to/file1.flac'
	file '/path/to/file2.flac'
	file '/path/to/file3.flac'

	ffmpeg -f concat -i mylist.txt -c copy output.flac

Rebol can be used to generate the file list

	foreach file read dir [ print rejoin [ {file '} dir file {'} ] ]

Just change dir and you're good to go.
