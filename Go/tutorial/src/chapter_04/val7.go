package main

import "fmt"

// 構造体
type Hoge struct {
	ID uint64
	Name string
}

func main() {
	{
		h := Hoge{}
		h.ID = 123
		h.Name = "おいちゃん"
		fmt.Println(h)
		fmt.Printf("%+v \n", h)
		fmt.Printf("%#v \n", h)
	}
	{
		h := Hoge {
			ID: 101,
			Name: "はにゃ", // 最後尾にカンマ必要
		}
		fmt.Println(h)
		fmt.Printf("%+v \n", h)
		fmt.Printf("%#v \n", h)
	}
	{
		h := Hoge{ID: 102, Name: "👍"}
		fmt.Println(h)
		fmt.Printf("%+v \n", h)
		fmt.Printf("%#v \n", h)
	}
	{
		m := make(map[Hoge]string)
		m[Hoge{ID: 102, Name: "👍"}] = "hogera"
		fmt.Println(m)
	}
}