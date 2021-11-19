// обьяснить почему такие результаты
// 1
// let a = 1, b = 1, c, d;

// 2
// c = ++a
// alert(c)

// 3
// d = b++
// alert(d)

// 4
// c = 2 + ++a
// alert(c)

// 5
// d = 2 + a++
// alert(d)

// alert(a)
// alert(b)

// 1
let a = 1, b = 1, c, d;

// 2
// c == 2   a == 1 => a + 1 == 2 => c = a
c = ++a
alert(c)

// 3
// d == 1   b == 1 => d == 1 => b + 1 == 2
d = b++
alert(d)

// 4
// c == 5   a == 2 => a + 1 == 3 => a + 2 == 5
c = 2 + ++a
alert(c)

// 5
// d == 4   b == 2 => b + 2 == 4 = d => b + 1 == 3
d = 2 + b++
alert(d)

alert(a)
alert(b)
