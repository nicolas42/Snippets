rebol []

pyramid: funct [l][
	
	o: copy []
	b: 3
	e: (length? l) - 3
	w: copy { }

	loop  [
		m: for i b e 1 [
			append {} pick "\/" a/:i = #"/"
		]
		nl: rejoin [ w "/" m "\" w {^/}]
		insert o nl

		++ b
		-- e
		append w copy { }
		l: nl
		nl: copy {}
	]
	rejoin o
]


foreach t [
	"//\\/\\/\\\\^/"
	"/\\\\\\^/"
	"//\\\\///\\/\\^/"
	"/////////////\\^/"
] [
	print pyramid t
]
