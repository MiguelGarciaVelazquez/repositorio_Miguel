<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
       <link rel="stylesheet" > <link rel="stylesheet"< href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
       <title>PRUEBA</title>
    </head>

    <body>
     
        <div class="container mt-4">
            
            <a class="btn btn-secondary"  href="agregar.htm">nuevo registro</a>
           <div class="card border-info">
          
               
              </div>
               <div class="car-body">
                  
                  <table  class="table table-hover">
                       <thead>
                           <tr>
                               <th>ID_USUARIO</th>
                               <th>NOMBRE</th>
                               <th>APELLIDO</th>
                               <th>EDITAR</th>
                               <th>ELIMINAR</th>
                           </tr>
                       </thead>
                       <tbody>
                           <c:forEach var="dato" items="${lista}">
                      
                           <tr>
                               <td>${dato.id_usu}</td>
                               <td>${dato.nombre}</td>
                               <td>${dato.apellido}</td>
                               <td>
                       <a href="editar.htm?id=${dato.id_usu}" class="btn btn-info" >EDITAR</a>
                                          
                               </td>
                               <td>
                        <a href="delete.htm?id=${dato.id_usu}" class="btn btn-danger">ELIMINAR</a>
                               </td>
                               </c:forEach>
                  </tr>
                       </tbody>
                   </table>

               </div>
  
    </body>
</html>
