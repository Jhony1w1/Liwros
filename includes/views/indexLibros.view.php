<?php
require("header.inc.php");


?>

</section>
<div class="container">
    <h5 class="title is-5 has-text-centered"> Listado de Libro</h5>
    <div class="column is-11 is-offset-1">
        <div>
        <p class="has-text-right"><button class="button is-primary" class="add" aria-label="close" onclick="$('#addUser').addClass('is-active')"><i class="far fa-plus-square"></i>Agregar Libro</button></p>

	<table class="table is-bordered is-striped is-fullwidth">
	  <thead>
	    <tr>
	       	<th>No.</th>
		    <th>Titulo</th>
		    <th>Autor</th>
		    <th>Genero</th>
		    <th>idioma</th>
        <th>Compartir</th>
		    
	    </tr>
	  </thead>
	  <tbody>
      <?php
      $i=1;
      foreach($librostodos as $libro):
        ?>
		<tr>
	      <th><?php echo $i;?></th>
	      <td><?php echo $libro->titulo;?></td>
	      <td><?php echo $libro->autor;?></td>
          <td><?php echo $libro->genero;?></td>
          <td><?php echo $libro->idioma;?></td>
	      <?php
          
          ?>
          <td>
        </p>

  <p><button class="button is-link" ><i class="fas fa-edit"></i> Editar</button>
 <button value="<?php echo $libro->id ?>" class="button is-danger" onclick="verifica('delete.php?id=<?php echo $libro->id;?>');"><i class="fas fa-minus-circle"></i> Borrar</button></p>
 
	      	  
        </td>
	    </tr>

      <?php
        $i++; 
        endforeach; 
        ?>
        </tbody>
        </table>
            <!--p><strong>Nombre: </strong><?php echo $usuario[0] -> Nombre;?></p>
            <p><strong>Correo: </strong><?php echo $usuario[0] -> email;?></p -->
</div>
</div>
</div>

<!--Modals-->
<div class="modal" id="addUser">
  <div class="modal-background"></div>
  <div class="modal-card">
    <header class="modal-card-head">
      <p class="modal-card-title">Agregar Libro</p>
      <button class="delete" aria-label="close" onclick="$('#addUser').removeClass('is-active')"></button>
    </header>
    <section class="modal-card-body">
    <form action="crearLibro.php" method="post">
<div class="field">
  <label class="label">Nombre</label>
  <div class="control">
    <input class="input" type="text" name="nombre" id="nombre" placeholder="e.g Alex Smith">
  </div>
</div>
<div class="field">
  <label class="label">Autor</label>
  <div class="control">
    <input class="input" type="text" name="autor" id="autor" placeholder="e.g Alex Smith">
  </div>
</div>

<div class="field">
  <label class="label">Genero</label>
  <div class="select">
  <select name="admin" id="admin">
    <option value="1">Aventura</option>
    <option value="2">Novelas</option>
    <option value="3">Literatura Juvenil</option>
    <option value="4">Clásico</option>
  </select>
</div>
</div>

<div class="field">
  <label class="label">Idioma</label>
  <div class="control">
    <input class="input" type="text" name="idioma" id="idioma" placeholder="e.g Alex Smith">
  </div>
</div>

<div class="field">
  <label class="label">Resumen</label>
  <div class="control">
<textarea class="textarea" placeholder="e.g. Hello world"></textarea>
</div>
</div>

      <!-- Content ... -->
    </section>
    <footer class="modal-card-foot">
      <button class="button is-success">Guardar Cambios</button>
      </form>
      <button class="button" onclick="$('#addUser').removeClass('is-active');">Cancel</button>
    </footer>
  </div>
</div>

<?php
	require_once("footer.inc.php");
?>