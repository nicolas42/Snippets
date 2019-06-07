rebol []


a: "//\\/\\/\\\\"

pyramid: funct[a][
	w: length? a
	h: w / 2
	o: copy []
	append o a
	loop h [
		insert o head insert/dup copy {} { } l
	]
	foreach o o [ print o ]

	print w
	print h

	for y h 1 -1 [
		na: copy {}
		for x 1 w 1 [

			append na do select reduce [
				x < h and (x + y - h < 0) [" "]
				x < h and (x + y - h = 0) ["/"]
				x < h and (x + y - h > 0) [ pick "/\" o/:y/:x = #"\" ]
				x > h and (x - y - h - 1 < 0) [" "]
				x > h and (x - y - h - 1 = 0) ["\"]
				x > h and (x - y - h - 1 > 0) [ pick "/\" o/:y/:x = #"\" ]
			] true		
		]
		insert o na
	]
	rejoin o
]

foreach t [
	"//\\/\\/\\\\"
	; "/\\\\\\"
	"//\\\\///\\/\\"
	; "/////////////\\"
] [
	print pyramid t
]
