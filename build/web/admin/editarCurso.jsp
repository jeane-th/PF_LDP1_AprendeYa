<%-- 
    Document   : editarCurso
    Created on : 27 dic. 2025, 22:17:18
    Author     : josueLady
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Editar Curso</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white p-10">

<h1 class="text-2xl font-bold mb-6">✏ Editar Curso</h1>

<form action="${pageContext.request.contextPath}/admin/cursos" method="post" class="space-y-4">
    <input type="hidden" name="idCurso" value="${curso.idCurso}" />

    <label>Título:</label>
    <input type="text" name="titulo" value="${curso.titulo}" class="w-full p-2 rounded text-black" required />

    <label>Descripción:</label>
    <textarea name="descripcion" class="w-full p-2 rounded text-black" required>${curso.descripcion}</textarea>

    <label>Categoría:</label>
    <input type="text" name="categoria" value="${curso.categoria}" class="w-full p-2 rounded text-black" required />

    <label>Imagen URL:</label>
    <input type="text" name="imagen" value="${curso.imagen}" class="w-full p-2 rounded text-black" required />

    <label>Video URL:</label>
    <input type="text" name="video" value="${curso.video}" class="w-full p-2 rounded text-black" required />

    <label>Profesor:</label>
    <input type="text" name="profesor" value="${curso.profesor}" class="w-full p-2 rounded text-black" required />

    <label>Precio:</label>
    <input type="number" name="precio" value="${curso.precio}" step="0.01" class="w-full p-2 rounded text-black" required />

    <label>Duración (horas):</label>
    <input type="number" name="duracion" value="${curso.duracion}" class="w-full p-2 rounded text-black" required />

    <label>Activo:</label>
    <input type="checkbox" name="estado" <c:if test="${curso.estado}">checked</c:if> />

    <button type="submit" class="bg-blue-600 hover:bg-blue-700 px-4 py-2 rounded">Actualizar Curso</button>
</form>

<a href="${pageContext.request.contextPath}/admin/cursos" class="mt-4 inline-block text-blue-400">⬅ Volver a lista</a>

</body>
</html>