// 1.2 (это обязательное задание) Сделайте в стиле es5, а затем в стиле es6 (по
//     аналогии из дополнительных видео -> 3 примеры наследования -> механика наследования),
//     а) конструктор Post, который принимает параметры author, text, date и сохраняет
//     их как свойства объекта. Объекты типа Post должны иметь метод edit, который будет
//     принимать текст и записывать его в свойство text объекта.
//     б) конструктор AttachedPost, который принимает параметры author, text, date.
//     Проинициализируйте эти свойства с помощью конструктора Post, чтобы не
//     дублировать код. Также в конструкторе AttachedPost должно создаваться свойство
//     highlighted со значением false. Унаследуйте в объектах типа AttachedPost методы из Post.
//     Объекты типа AttachedPost должны иметь метод makeTextHighlighted,    
//     который будет назначать свойству highlighted значение true.
"use strict"

function PostES5 (author,text, date){
    this.author = author
    this.text = text
    this.date = date
}

PostES5.prototype.edit = function(newText) {
    this.text = newText
}



let p1 = new PostES5("im", "many symbols", "now")
console.log(p1)

p1.edit("new many sumbols")
console.log(p1)

function AttachedPostES5 (author,text, date) {
    PostES5.call(this, author,text, date) 
    this.highlighted = false
} 

AttachedPostES5.prototype.makeTextHighlighted = function() {
    this.highlighted = true
}

let ap1 = new AttachedPostES5("im(AP1)", "many symbols(AP1)", "now(AP1)")

console.log(ap1)
ap1.makeTextHighlighted()
console.log(ap1)



class PostES6 {
    constructor(author,text, date) {
        this.author = author
        this.text = text
        this.date = date
    }
    edit (newText) {
        this.text = newText
    }
}

let p2 = new PostES6("im", "many symbols", "now")
console.log(p2)

p2.edit("new many sumbols")
console.log(p2)

class AttachedPostES6 extends PostES6 {
    highlighted = false
    
    makeTextHighlighted () {
        this.highlighted = true
    }
}

let ap2 = new AttachedPostES6("im(AP2)", "many symbols(AP2)", "now(AP2)")

console.log(ap2)
ap2.makeTextHighlighted()
console.log(ap2)
