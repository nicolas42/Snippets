rebol []

make-pyramid: func [ 
	p [string!]
	/local pyramid beg end np
] [

	; p: "//\\/\\/\\\\"
	pyramid: copy []
	insert pyramid p

	beg: 2
	end: (length? p) - 1

	while [ beg < end ] [
		np: copy {}
		p: first pyramid
		forall p [
			append np case [
				any [ beg > index? p  end < index? p ] [ #" "]
				beg = index? p [ #"/" ]
				end = index? p [ #"\" ]
				p/1 = #"\" [ #"/" ]
				p/1 = #"/" [ #"\" ]
			]
		]
		beg: beg + 1
		end: end - 1
		append np newline
		insert pyramid np
	]
	rejoin pyramid
]


foreach test [
	"//\\/\\/\\\\"
	"/\\\\\\"
	"//\\\\///\\/\\"
	"/////////////\\"
] [
	print make-pyramid test
]



