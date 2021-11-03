// 3. Объявить 2 переменные a, b положительные
// если a, b положительные вывести их разность(0 можно считать положительным)
// если a, b отрицательные вывести произведение
// если разных знаков сумму

let a = -11
let b = -11

if (Math.sign(a) == 1 && Math.sign(b) == 1) {
    console.log(a-b)
} else if (Math.sign(a) == -1 && Math.sign(b) == -1) {
    console.log(a*b)
} else {
    console.log(a+b)
}