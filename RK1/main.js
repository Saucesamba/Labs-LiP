var array= new Array()
//функция добавления данных в массив
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
    if (!isNaN(value) && !(value.trim() =='')){
        array.push(value)
        append(value)
    }
    else{
        alert("Input error, try again!")
    }
    console.log(array)
});

var ind=0
document.addEventListener("DOMContentLoaded", function() {
const form1= document.getElementById("task")
form1.addEventListener('submit', function (event) {
    event.preventDefault(); //запрет обновления страницы
    const inde = document.getElementById('ind').value
    ind=inde
    console.log(ind)
});
});

//функция для поиска произведения элемнтов кратных 3 и вывод иго на экран

document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("calculateButton").addEventListener("click", function() {
        var pr=1
        for (i=0;i<array.length; i++){
            if (array[i]%3 === 0 ){
                pr*=array[i]
                console.log(pr)
            }
        }
        array[ind]=pr
        const output = document.getElementById("out-table")
        const row=output.rows[0]
        for (i=0;i<array.length; i++){
            const td=document.createElement("td")
            td.textContent=array[i]
            row.appendChild(td);
        }
    });
});

