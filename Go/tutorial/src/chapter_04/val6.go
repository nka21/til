package main

import "fmt"

func val6() {

	s := "abcdefg"
	fmt.Println(s)
	ms := "あいうえお"
	fmt.Println(ms)

	{
		ss := []byte(s)
		fmt.Println(ss)
		mss := []byte(ms)
		fmt.Println(mss)
	}

	fmt.Println("")

	{
		ss := []rune(s)
		fmt.Println(ss)
		mss := []rune(ms)
		fmt.Println(mss)
	}

	{
		ss := []rune(s)
		for _, v := range(ss) {
			fmt.Printf("%v, %v\n", string(v), v)
		}

		mss := []rune(ms)
		for _, v := range mss {
			fmt.Printf("%v, %v %T\n", string(v), v, v)
		}
	}
}