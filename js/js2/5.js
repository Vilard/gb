// 5.реализовать функцию с трем аргументами, func math (arg1, arg2, operation)
// в зависимомти от передданого значения операции использовать свич, выполнить одну из операций


const sum = (a, b) => a+b
const minus = (a, b) => a-b
const mul = (a, b) => a*b
const div = (a, b) => a/b

const mathOps = (a, b, operation)  => {
    switch(operation) {    
        case "+":
            return sum(a,b)
        case "-":
            return minus(a,b)
        case "*":
            return mul(a,b)
        case "/":
            return div(a,b)
    } 
}

console.log(mathOps(2,3,"+"))
console.log(mathOps(10,3,"-"))
console.log(mathOps(2,7,"*"))
console.log(mathOps(2,3,"/"))
