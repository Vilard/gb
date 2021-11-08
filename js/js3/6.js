// 6 Нарисовать горку с помощью console.log (используя цикл for), как показано на рисунке,
// только у вашей горки должно быть 20 рядов, а не 5:

const paintStar = (n) => {
    let star = '' 
    for(let i = 0; i < n; i++) {
        star = star + "*"
        console.log(star)
    }
}

paintStar(20)
