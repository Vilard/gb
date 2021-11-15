// 1.1 (это обязательное задание) Сделайте в стиле es5, а затем в стиле es6

// (по аналогии из дополнительных видео -> 3 примеры наследования -> типы на es5 и es6),

// конструктор Product, который принимает параметры name и price, сохраните их как

// свойства объекта. Также объекты типа Product должны иметь метод make25PercentDiscount,

// который будет уменьшать цену в объекте на 25%. Имейте в виду, что метод make25PercentDiscount

// не должен быть внутри функции-конструктора, и также не нужно создавать отдельный объект-прототип

// (как объект transport в уроке).

"use strict"

function ProductES5 (name, price) {
    this.name = name
    this.price = price
}

ProductES5.prototype.make25PercentDiscount = function (){

    return this.price - (this.price / 100 * 25)
}


class ProductES6 {
    constructor (name, price) {
        this.name = name
        this.price = price
    }
    
    get make25PercentDiscount() {
        return this.price - (this.price / 100 * 25)
    }    
}

let p1 = new ProductES5("colbasa", 38)
let p2 = new ProductES6("salo", 38)

console.log(p1, p1.make25PercentDiscount())
console.log(p2, p2.make25PercentDiscount)
