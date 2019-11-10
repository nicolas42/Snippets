package main

import "fmt"

func singTheSong(b int) {
	if b > 1 {
		fmt.Printf("%v bottles of beer on the wall, %v bottles of beer.\n",
			b, b)
		fmt.Printf("Take one down and pass it around, %v bottles of beer on the wall.\n", b-1)
	} else if b == 1 {
		fmt.Printf("1 bottle of beer on the wall, 1 bottle of beer.\n")
		fmt.Printf("Take one down and pass it around, no more bottles of beer on the wall.\n")
	} else {
		fmt.Printf("No more bottles of beer on the wall, no more bottles of beer.\n")
		fmt.Printf("Go to the store and buy some more, 99 bottles of beer on the wall.\n")
	}
}

func main() {
	for b := 99; b >= 0; b-- {
		singTheSong(b)
	}
}
