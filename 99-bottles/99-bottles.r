REBOL []

data: [ 
    99 { bottles of beer} { on the wall} {, } {.^/} 
    {Take one down and pass it around, } 98 { bottle of beer} 
    {no more} {No more} {Go to the store and buy some more, } 99 
]


drink: does [ 
    print {} 
    data/1: data/1 - 1 
    data/7: data/7 - 1 
]

loop 97 [ 
    foreach n [ 1 2 3 4  1 2 5  6 7 2 3 5 ] [ prin data/:n ] 
    drink 
]

foreach row [
	[ 1 2 3 4  1 2 5  6 7 8 3 5 ]
	[ 1 8 3 4  1 8 5  6 9 2 3 5 ]
	[ 10 2 3 4  9 2 5  11 12 2 3 5 ]
] [
    foreach n row [ prin data/:n ] 
    drink 
]

