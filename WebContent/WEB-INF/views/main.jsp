<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SpringJPA</title>
</head>
<body>

 <form action="${pageContext.request.contextPath}/form" method="post">
                       <label>Buscar por ID</label> <input type="number" name="identificador" ><br>
                       <input type= "submit" value= "Enviar">
                </form>
                
<H1>Usuario buscado</H1>
  <table border="1">
       <tr>
           <th>Name</th>
           <th>Last Name</th>
           <th>Age</th>
           <th>Status</th>
           
       </tr>
       
    
      
         <tr>
           <th>${student2.sName}</th>
           <th>${student2.lName}</th>
           <th>${student2.sAge}</th>
           <th>${student2.activoDelegate}</th>
           
       </tr>
       
  </table>
  
<H1>Lista de Usuarios</H1>
  <table border="1">
       <tr>
           <th>Name</th>
           <th>Last Name</th>
           <th>Age</th>
           <th>Status</th>
           
       </tr>
       
    
       <c:forEach items="${student}" var="student">
         <tr>
           <th>${student.sName}</th>
           <th>${student.lName}</th>
           <th>${student.sAge}</th>
           <th>${student.activoDelegate}</th>
           
       </tr>
       </c:forEach>
       
  </table>

</body>
</html>