package main

import "fmt"

func val4() {
	// 単純な代入だと「ポインターが一緒」になる
	{
		s := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
		s2 := s
		fmt.Printf("%p, %p \n", s, s2)
		s[0] = 11
		fmt.Println(s2) // [11, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	}
	{
		s := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
		// [2:5] 2から5
		// [2:] 2から最後まで
		// [:5] 最初から５まで
		s2 := s[2:5]
		fmt.Printf("%p, %p \n", s, s2)
		fmt.Println(len(s), len(s2), s2) // [11, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	}
}