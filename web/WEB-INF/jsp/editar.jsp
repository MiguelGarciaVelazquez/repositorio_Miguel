<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   
    <link rel="stylesheet" > <link rel="stylesheet"< href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>PRUEBA</title>
    </head>
    <body>
      
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>EDITAR</h4>
                </div>
                <div class="car-body">
                    <form method="POST">
                        <label>id_usuario:  ${lista[0].id_usu}</label><p/>
                        <input type="hidden" name="id_usu" value="${lista[0].id_usu}">
                        <label>nombre</label>
                        <input type="text" name="nombre" class="form-control"  value="${lista[0].nombre}" required="">
                        <label>apellidos</label>
                        <input type="text" name="apellido" class="form-control"  value="${lista[0].apellido}" required="true">
                          <input type="submit" value="EDITAR" class="btn btn-danger">
                          <a href="index.htm" class="btn btn-info">REGRESAR</a>
                    </form>
                </div>
                          
            </div>
            
        </div>
    </body>
</html>
 