
document.addEventListener("DOMContentLoaded", function () {
    //получили 2 таблицы и  кнопку
    const sourceTable = document.getElementById("my-table");
    const targetTable = document.getElementById("result");
    const addButton = document.getElementById("addButton");

    //привязываем к кнопке действие
    addButton.addEventListener("click", function () {
        const selectedRow = sourceTable.querySelector(".selected");
        selectedRow.className="selected"
        const clonedRow = selectedRow.cloneNode(true);
        clonedRow.className='unselected'
        targetTable.appendChild(clonedRow);
    });

    sourceTable.addEventListener("click", function (event) {
        const selectedRow = event.target.closest("tr");
        if (selectedRow) {
            const previouslySelectedRow = sourceTable.querySelector(".selected");
            if (previouslySelectedRow) {
                previouslySelectedRow.classList.remove("selected");
            }
            selectedRow.classList.add("selected");
        }
    });
});
