package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {

	// Seed the random number generator
	rand.Seed(time.Now().UnixNano())

	// Generate random numbers to build the bridge
	for i := 0; i < 2000; i++ {
		// Generate a random number between 0 and 5
		num := rand.Intn(6)
		char := ' '

		// Depending on the number, set the character
		switch num {
		case 0:
			char = 'A'
		case 1:
			char = 'B'
		case 2:
			char = 'C'
		case 3:
			char = 'D'
		case 4:
			char = 'E'
		case 5:
			char = 'F'
		}

		// Print the character
		fmt.Print(string(char))
	}
	fmt.Println()
}