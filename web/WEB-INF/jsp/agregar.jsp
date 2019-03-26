<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>PRUEBA</title>
    </head>
    <body>
      
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>AGREGAR NUEVO REGISTRO</h4>
                </div>
                <div class="car-body">
                    <form method="POST">
                        <label>id_usuario</label>
                        <input type="int" name="id_usu" class="form-control" required="id_usu">
                        <label>nombre</label>
                        <input type="text" name="nombre" class="form-control" required="nombre">
                        <label>apellidos</label>
                        <input type="text" name="apellido" class="form-control" required="apellido">
                          <input type="submit" value="agregar" class="btn btn-info" >
                          <a href="index.htm" class="btn btn-info">REGRESAR</a>
                    </form>
                </div>
            </div>
            
        </div>
    </body>
</html>
 