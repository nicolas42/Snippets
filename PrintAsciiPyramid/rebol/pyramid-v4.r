rebol []

;Iterative

pyramid: funct[a][
	w: copy {}
	l: length? a s: 3 e: l - 2 
	print loop l / 2 - 1 [ 
		m: any [ for i s e 1 [ append {} pick "/\" a/:i = #"\" ] {} ]
		++ s 
		-- e
		append w { }
		head insert a rejoin [ w "/" m "\^/" ] 
	]
]

; Recursive

pyramid: funct[a][

	rpyramid: func [a s e w /local m][ 
		m: any [ for i s e 1 [ append {} pick "/\" a/1/:i = #"\" ] {} ]
		++ s 
		-- e
		append w { }
		insert a rejoin [ w "/" m "\^/" ] 
		either empty? m [ a ] [ rpyramid a s e w ]
	]

	a: append copy [] a
	w: copy {}
	l: length? a/1 s: 3 e: l - 2 w
	rpyramid a s e w
]

foreach t [
	"//\\/\\/\\\\"
	"/\\\\\\"
	"//\\\\///\\/\\"
	"/////////////\\"
] [
	print pyramid t
]

