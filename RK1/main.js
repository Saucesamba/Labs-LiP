const array= new Array()


//функция добавления данных в таблицу
function append(value){
    const table=document.getElementById("my-table")
    const row=table.rows[0]
    const td=document.createElement("td")
    td.textContent=value
    row.appendChild(td);
}


//мейн функция, считываем данные и добавляем в таблицу
const form = document.getElementById('form'); 
form.addEventListener('submit', function (event) {
    event.preventDefault(); //запрет обновления страницы
    const value = document.getElementById('elem').value
    if (!isNaN(value)){
        array.push(value)
        append(value)
    }
    else{
        alert("Input error, try again!")
    }
    console.log(array)
});

/*
//функция для выполнения необходимых действий

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("calculateButton").addEventListener("click", function() {
        var table = document.getElementById("my-table");
        
        document.getElementById("task").textContent = "Сумма чисел во второй колонке: " + sum;
    });
});
*/
