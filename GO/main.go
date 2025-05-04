package main

import (
	"fmt"
	"time"
)

var globalvar = 69

// Function
func basics(arg int, arg0 int) (int, int) {
	// func test(arg, arg0 int) int
	// Ommit the int at the end makes the function void

	// Variable declaration
	a := 15
	var b = 2
	var c int
	c = 3
	fmt.Println(a + b + c)
	c = 4
	// var complex
	// vat float
	// string

	// Print variable type
	fmt.Printf("The type of a is: %T\n", a)

	// if-else
	if a < 10 {
		fmt.Println("a < 10")
	} else if b := 43; a < 20 {
		fmt.Println("10 < a < 20")
		fmt.Println("We can declare variable in if-else statement", b)
	}

	// Switch statements
	// Don't need indentation and has default in golang

	// Loop - only for loop
	// classic for loop
	for i := 1; i < 5; i++ {
		fmt.Println(i)
	}
	// fake while loop
	u := 0
	for u < 5 {
		fmt.Println("Fake while loop", u)
		u++
	}

	// Return
	return arg + arg0, globalvar
}

func collections() {

	// List
	// Fixed length
	a := [5]int{1, 2, 3, 4, 5}
	fmt.Println(a)
	// Dynamic length
	b := make([]int, 0)
	fmt.Println(b)
	b = append(b, 1, 2, 3, 4)
	fmt.Println(b)
	c := []int{1, 2, 3, 4}
	c[0] = 10000
	fmt.Println(c)

	// Map
	m := map[string]int{
		"a": 1,
		"b": 2,
	}
	fmt.Println(m)

	// Struct
	var p Point
	p0 := Point{1, 2}
	p0.X = 69
	fmt.Println(p)
	fmt.Println(p0)

	// Pointer
	q := &p
	q.X = 10        // Don't need &
	fmt.Println(*q) // Dereference
}

// Struct
type Point struct {
	X int
	Y int
}

// Add Function Struct - All first capital
// Declare out of struct
// Dereference
func (p *Point) SetPoint(x, y int) {
}

// Interface
type Shape interface {
	Print() // Don't need func
}
type Rectangle struct{}
type Triangle struct{}
func (r Rectangle) Print() {
	fmt.Println("Rectangle")
}
func (t Triangle) Print() {
	fmt.Println("Triangle")
}
func ShapeTest() {
	var s Shape
	s = Rectangle{}
	s.Print()
	s = Triangle{}
	s.Print()
}

// Error Handling
func errorHandle() {
	_, err := fmt.Println("dd")
	if err != nil {
		fmt.Println("Error")
	} else {
		fmt.Println("Works")
	}
}

// Concurrency
// Thread -> Goroutines
func func0() {
	time.Sleep(500 * time.Millisecond)
	fmt.Println("Function 0")
}
func func1() {
	fmt.Println("Function 1")
}
func cc(){
	go func1()
	func0()
}
// Channel
func func00(ch chan string){
	ch <- "00"
}
func func01(ch chan string){
	ch <- "01"
}
func channel(){
	ch := make(chan string)

    go func01(ch)
    res1 := <-ch

    go func00(ch)
    res2 := <-ch

    fmt.Println(res1, res2)
}


// Main Function
func main() {
	fmt.Println("Hello, world")

	fmt.Println("\nFunction call:")
	fmt.Println(basics(1, 2))

	fmt.Println("\nCollections:")
	collections()

	fmt.Println("\nError handling:")
	errorHandle()

	fmt.Println("\nConcurrency:")
	cc()

	fmt.Println("\nChannel:")
	channel()
}
