package main

import "fmt"
import "time"

func main() {
	t0 := time.Now()
	isPrime := false
	primes := []int{2}
	i := 3

	for i = 3; i <= 1000000; i += 2 {
		isPrime = true
		for _, prime := range primes {
			if i%prime == 0 {
				isPrime = false
				break
			}
		}
		if isPrime {
			primes = append(primes, i)
		}
	}
	t1 := time.Since(t0)

	fmt.Println(t1)
	fmt.Println("Hello, playground")
	fmt.Println(primes[:100])
}
