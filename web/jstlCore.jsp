<%-- 
    Document   : jstlCore
    Created on : 11/10/2019, 19:48:23
    Author     : Alumno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Core</title>
    </head>
    <body>
        <h1>JSTL Core</h1>
        <!--Manipulacion Variables-->
        <c:set var = "nombre" value="Ernesto"/>
        Variable nombre: <c:out value="${nombre}"/>
        <br>
        <br>
        
        Variable con codigo html:
        <c:out value="<h1>Hola</h1>" escapeXml="true"/>
        <br>
        <br>
        
        <!--Codigo cndicionad , uso del if-->
        <c:set var="bandera" value="true"/>
        
        <c:if test="${bandera}">
            La Bandera es verdadera
        </c:if>
            
        <br>
        <!--Codigo condicinado, similar al switch-->
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion==1}">
                    <br>
                    Opcion 1 proporcionada
                    <br>
                </c:when>
                <c:when test="${parm.opcion==2}">
                    <br>
                    Opcion 2 proporcionada
                    <br>
                </c:when>
                <c:otherwise>
                    <br>
                    Opcion proporcionada desconocida: ${param.opcion}
                    <br>
                </c:otherwise>    
            </c:choose>
        </c:if>
                    
        <!--Iteracion de una arreglo-->
        <%
            //Uso de Scriplet
            //Creamos el arreglo con un scriplet (aunque no es buena practica)
            String [] nombres = {"Claudia", "Pedro","Carlos", "Ana"};
            //Compartimos el arreglo de nombres
            //en el alcance(scope) de request
            request.setAttribute("nombres", nombres);
            %>
            
            <br>
            Lista de Nombres en el arreglo:
            <br>
            <ul>
                <c:forEach varStatus="status" var="persona" items="${nombres}">
                    <li>${status.count} - Nombre: ${persona}</li>
                </c:forEach>
            </ul>
            
            <br>
            <a href="index.jsp">Regresar al inicio</a>
            
    </body>
</html>