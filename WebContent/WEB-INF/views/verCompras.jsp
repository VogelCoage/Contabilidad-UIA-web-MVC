<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ page import="uia.com.contabilidad.ContabilidadUIA.*" %>
<%@ page import="uia.com.presentacion.*" %>
<%@ page import="java.util.ArrayList" %>



<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<title>Cuentas</title>
</head>
<body>	

   
    <table border=1>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Id</th>
                <th>Compras</th>
                <th>Cuentas</th>
                <th>Cheques</th>
                <th colspan=2>Mantenimiento</th>
            </tr>
        </thead>
        <tbody>
        	<c:forEach var="cliente" items="${clientes}">
                <tr>
                    <td><c:out value="${cliente.name}" /></td>
                    <td><c:out value="${cliente.id}" /></td>                   
                    <c:choose>
                    <c:when test="${cliente.name == clienteActual}">
                    <td>
		            	<table border=1>
					        <tbody>
								<c:forEach var="compra" items="${compras}">
						         	<tr>
						            	<td><c:out value="${compra.name}" /></td>
						                <td><c:out value="${compra.id}" /></td>
						             </tr>
						         </c:forEach>
		                    </tbody>
		    			</table>
		    		</td>
		    		</c:when>
		    		</c:choose>
		    		<c:choose>
		    		<c:when test="${cliente.name ==clienteActual }">
		    			<td>
		    				<table border = 1>
		    					<tbody>
		    						<c:forEach var = "cuenta" items="${cuentas}">
		    							<tr>
		    								<td><c:out value="${cuenta.name}" /></td>
		    								<td><c:out value="${cuenta.id}" /></td>
		    							</tr>
		    						</c:forEach>
		    					</tbody>
		    				</table>
		    			</td>
		    			
		    		</c:when>
		    		</c:choose>
		    		<c:choose>
		    		<c:when test="${cliente.name ==clienteActual }">
		    			<td>
		    				<table border = 1>
		    					<tbody>
		    						<c:forEach var = "cheque" items="${cheques}">
		    							<tr>
		    								<td><c:out value="${cheque.name}" /></td>
		    								<td><c:out value="${cheque.id}" /></td>
		    							</tr>
		    						</c:forEach>
		    					</tbody>
		    				</table>
		    			</td>
		    			
		    		</c:when>
		    		</c:choose>
	    				<td>Pendiente</td>
	    				<td>Pendiente</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p>Agregar Cliente</p>
    <p>Agregar Cuenta</p>
</body>
</html>