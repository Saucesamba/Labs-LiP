
function output(node, indentLevel) {
    // Создаем отступ для текущего уровня вложенности
    const indent = "  ".repeat(indentLevel);
  
    // Если узел является элементом, выводим его
    if (node.nodeType === Node.ELEMENT_NODE) {

      // Выводим отступ и открывающий тег элемента
      const el=document.createElement("pre")
      el.textContent=indent+"<"+node.tagName+">"
      document.body.appendChild(el);
      console.log(node.tagName)
      // Рекурсивно обходим дочерние элементы
      for (let i = 0; i < node.childNodes.length; i++) {
        output(node.childNodes[i], indentLevel + 1);
      }
  
      // Выводим закрывающий тег элемента
      const elb=document.createElement("pre")
      elb.textContent=indent+"<"+node.tagName+"/>"
      document.body.appendChild(elb);
      console.log(node.tagName)
    }
  }
  
