package main

import "fmt"

func main() {
	{
		m := map[string]int{}
		m["hoge"] = 10
		m["foo"] = 22
		fmt.Println(m)
	}

	{
		m := make(map[string]int, 0)
		m["hoge"] = 10
		m["foo"] = 22
		fmt.Println(m)
	}

	{
		m := map[string]int{
			"hoge": 10,
			"foo": 23,
		}
		fmt.Println(m)
	}

	{
		m := map[float64]bool{
			3.14: true,
			1.414: false,
		}
		fmt.Println(m)
	}
}