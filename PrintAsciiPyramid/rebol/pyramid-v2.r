rebol []

pyramid: funct [p][
	
	insert/dup [] " " (length? p) / 2
	
	o: copy []
	insert o p

	b: 2
	e: (length? p) - 1

	while [ b < e ] [
		
		np: copy {}
		p: o/1
		forall p [
			i: index? p
			append np pick " /\" case [
				any [ b > i  e < i ] [ 1 ]
				b = i [ 2 ]
				e = i [ 3 ]
				p/1 = #"\" [ 2 ]
				p/1 = #"/" [ 3 ]
			]
		]
		b: b + 1
		e: e - 1
		append np {^/}
		insert o np
	]
	rejoin o
]


foreach t [
	"//\\/\\/\\\\"
	"/\\\\\\"
	"//\\\\///\\/\\"
	"/////////////\\"
] [
	print pyramid t
]