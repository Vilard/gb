// 1. задать температуру в градусах по цельсию. 
// вывести в алерт по Форенгейту
// tf = (9/5)*tc + 32

"use strict"

let tc = +prompt("введите температуру в гравусах по цельсию")

function tf (tc){
	return (9 / 5) * tc + 32
}

alert(`температура в градусах по форенгейту ${tf(tc)}`)