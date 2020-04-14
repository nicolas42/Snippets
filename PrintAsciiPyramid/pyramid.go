package main
//import "os"
func main(){
//	print(pyramid(os.Args[1]))
	println(pyramid(`//\\/\\/\\\\`))
}

func pyramid (a string) string {
	o,b,e,w := a,2,len(a)-2, " "
	for b<=e {
		a := []byte(a)[b:e]
		for i,_ := range a { 
			if a[i]=='/' {
				a[i]='\\'
			} else {
				a[i]='/'
			} 
		}
		o = w + "/" + string(a) + "\\\n" + o
		w+=" "
		b++
		e--
	}
	return o
}

/* // Old Version
package main

func main() {

	const arg = `//\\/\\/\\\\`
	const width = len(arg)
	const height = width/2
	
	var a [height][width]byte
	// fmt.Println(len(arg))
	
	for y,row := range a {
		for x,_ := range row {
			a[y][x] = ' '
		}
	}
	// for _,a := range a { fmt.Println(string(a[:])) }
	
	for x,_ := range a[height-1] {
		a[height-1][x] = arg[x]
	}

	b := 1
	e := width-2


// tests
//	a[0][b]=1
//	a[0][e]=2
//	a[height-1][width-1]=99
//	fmt.Println(a)
	
	for y:=height-1; y>=1; y-- {
		a[y-1][b] = '/'
		for x:=b+1; x<=e-1; x++ {
			if a[y][x] == '/' { 
				a[y-1][x] = '\\'
			}
			if a[y][x] == '\\' { 
				a[y-1][x] = '/'
			}		
		}
		a[y-1][e] = '\\'
		b++
		e--
	}
	
	for y,row := range a {
		for x,_ := range row {
			print(string(a[y][x]))
		}
		println()
	}
	
}

*/
