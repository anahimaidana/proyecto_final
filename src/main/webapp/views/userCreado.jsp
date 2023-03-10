<%-- 
    Document   : userCreado
    Created on : ene 2, 2023, 11:26:56 a.m.
    Author     : -.ANAHI MAIDANA.-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/views/partials/header.jsp" %>

        <main class="d-flex flex-column justify-content-center align-items-center">
            <h2 class="mb-3">Informacion de registro:</h2>
            
            <%
            int uCreado = (int) session.getAttribute("uCreado");
            switch (uCreado) {
                case 1:
                    %>
                    <h3 class="text-success">¡Registro exitoso!</h3>
                    <%
                    break;
                case 2:
                    %>
                    <h3 class="text-danger">¡El usuario ya existe!</h3>
                    <%
                    break;
                default:
                    %>
                    <h3 class="text-danger">¡Registro fallido!</h3>
                    <%
                    break;
            }
            %>
            
            <a href="/showroombylu/" class="mt-3">Volver al INICIO</a>
            
        </main>


<%@include file="/views/partials/footer.jsp" %>