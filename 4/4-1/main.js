const dictionary={}
//функция добавления данных в словарь 
function appzap(name,price){
    dictionary[name]=price
}

//функция добавления данных в таблицу
function append(name,price){
    const table=document.getElementById("my-table")
    //проверка на наличие
    if ((name in dictionary)==true){
        for (i=0;i<table.rows.length; i++){
            const row = table.rows[i];
            if (row.cells[0].textContent==name){
                var num = parseInt(row.cells[1].textContent)
                row.cells[1].textContent=num+parseInt(price)
            }

        }
    }
    //иначе просто добавляем строку и записываем данные
    else{
    const row=document.createElement("tr")
    const td1=document.createElement("td")
    td1.colSpan=2
    td1.textContent=name
    const td2=document.createElement("td")
    td2.className="price"
    td2.colSpan=2
    td2.textContent=price
    row.appendChild(td1);
    row.appendChild(td2);
    table.appendChild(row);
    }
}

//мейн функция, считываем данные и добавляем в таблицу
const form = document.getElementById('form'); 
form.addEventListener('submit', function (event) {
    event.preventDefault(); //запрет обновления страницы
    const name = document.getElementById('name').value;
    const price = document.getElementById('price').value;
    append(name,price)
    appzap(name,price)
    console.log(dictionary)
    console.log(name);
    console.log(price);
});

//функция подсчёта стоимости списка продуктов
document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("calculateButton").addEventListener("click", function() {
        var table = document.getElementById("my-table");
        var sum = 0;
        for (var i = 1; i < table.rows.length; i++) {
            var cellValue = parseFloat(table.rows[i].cells[1].textContent);

            if (!isNaN(cellValue)) {
                sum += cellValue;
            }
        }

        document.getElementById("Sum").textContent = "Сумма чисел во второй колонке: " + sum;
    });
});
