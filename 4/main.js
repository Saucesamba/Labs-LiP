var table=document.getElementById("my-table")
var myarr=new Array(100)

//получили нашу форму
 let form=document.forms.my;

 //создали переменные, в которых хранятся наши поля ввода
let InpName=form.elements.name;
let InpCost=form.elements.cost;

function append(){
    var row=document.createElement("tr")
    var td1=document.createElement("td")
    td1.textContent=InpName.value
    var td2=document.createElement("td")
    td2.textContent=InpCost.value
    row.appendChild(td1);
    row.appendChild(td2);
    tbody.appendChild(row);
}