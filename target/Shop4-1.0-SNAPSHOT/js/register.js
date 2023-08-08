/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.querySelector("#name").oninput = function (){
    let errorBlock =  document.querySelector("#errorName");
   if(errorBlock.classList.contains("erorr")){
       errorBlock.classList.remove("erorr");
   }
}

document.querySelector("#passwordA").oninput = function (){
    let errorBlock =  document.querySelector("#errorPass");
   if(errorBlock.classList.contains("erorr")){
       errorBlock.classList.remove("erorr");
   }
}