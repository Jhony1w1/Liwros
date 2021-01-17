<?php 

// Initialize site configuration
require_once('includes/config.inc.php');

$nom=null;
$correo=null;
$adm=null;

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(isset($_POST['idU']) && intval($_POST['idU'])){
        $id=$_POST["idU"];
    $nom=$_POST["nombre"];
    $correo=$_POST["email"];
    $adm=$_POST["admin"];

    $agregaUsr = new Usuario();
    $agregaUsr ->id=$id;
    $agregaUsr ->nombre=$nom;
    $agregaUsr ->email=$correo;
    $agregaUsr ->admin=$adm;
    $agregaUsr ->save();

    }else{
    $nom=$_POST["nombre"];
    $correo=$_POST["email"];
    $adm=$_POST["admin"];

    $agregaUsr = new Usuario();
    $agregaUsr ->nombre=$nom;
    $agregaUsr ->email=$correo;
    $agregaUsr ->admin=$adm;
    $agregaUsr ->save();
    }
    
}

// Include page view
require_once(VIEW_PATH.'indexLibros.php');