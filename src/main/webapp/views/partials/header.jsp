<%-- 
    Document   : header
    Created on : ene 2, 2023, 10:41:25 a.m.
    Author     : -.ANAHI MAIDANA.-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Showroom by Lu</title>
        <link rel="stylesheet" href="/showroombylu/css/tags.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    </head>
<body class="vh-100">
    <header class="d-flex flex-row justify-content-around align-items-center text-center text-light fondo_header">
            <a href="/showroombylu">
                <img class="rounded" style="height: 70px;" src="/showroombylu/img/logo.jpg" alt="logo"/>
            </a>
            <h1>Showroom by Lu - Bikinis</h1>
            <p></p>
            <%
                boolean isLogin;
                if(session.isNew()){
                    session.setAttribute("isLogin", false); 
                }
                isLogin = (boolean) session.getAttribute("isLogin");
            %>
            
            <ul class="nav nav-pills">
                <li class="nav-item mx-2" style="display: <%= isLogin?"none":"initial" %>">
                    <a class="nav-link active" href="/showroombylu/views/login.jsp">Ingresar</a>
                </li>
                <li class="nav-item mx-2" style="display: <%= isLogin?"none":"initial" %>">
                    <a class="nav-link active" href="/showroombylu/views/registro.jsp">Registrarme</a>
                </li>
                <li class="nav-item mx-2" style="display: <%= !isLogin?"none":"initial" %>">
                    <a class="nav-link active" href="/showroombylu/usuario/viewUser">Mi cuenta</a>
                </li>
                <li class="nav-item mx-2" style="display: <%= !isLogin?"none":"initial" %>">
                    <a class="nav-link active" href="/showroombylu/usuario/logoutUser">Salir</a>
                </li>
            </ul>
        
    </header>