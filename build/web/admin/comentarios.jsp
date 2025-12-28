<%-- 
    Document   : comentarios
    Created on : 27 dic. 2025, 20:25:22
    Author     : josueLady
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    // validar por sesión y rol
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
        return;
    }

    String rol = (String) session.getAttribute("rol");
    if (rol == null || !rol.equalsIgnoreCase("Admin")) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Comentarios | Admin</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet" />
</head>

<body class="bg-gray-900 text-white min-h-screen font-sans">

<!-- header -->
<header class="bg-gray-950 shadow-lg sticky top-0 z-50">
    <div class="max-w-7xl mx-auto px-6 flex items-center justify-between h-16">
        <h1 class="text-2xl font-bold text-blue-400">💬 Gestión de Comentarios</h1>
        <a href="${pageContext.request.contextPath}/dashboardAdmin"
           class="bg-blue-600 hover:bg-blue-700 px-4 py-2 rounded-lg text-sm transition">
            ⬅ Volver al Panel
        </a>
    </div>
</header>

<!-- main -->
<main class="max-w-7xl mx-auto py-10 px-6">

    <h2 class="text-3xl font-bold text-blue-400 mb-6">
        Lista de Comentarios
    </h2>

    <div class="overflow-x-auto bg-gray-800 rounded-xl shadow-lg">
        <table class="table w-full text-sm">
            <thead class="bg-gray-700 text-blue-300 uppercase">
                <tr>
                    <th>ID</th>
                    <th>Usuario</th>
                    <th>Curso</th>
                    <th>Comentario</th>
                    <th>Valoración</th>
                    <th>Fecha</th>
                    <th>Estado</th>
                    <th>Acciones</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="c" items="${listaComentarios}">
                    <tr class="hover:bg-gray-700">

                        <td>${c.idReview}</td>

                        <td class="font-semibold text-blue-400">
                            ${c.usuario}
                        </td>

                        <td>
                            ${c.curso}
                        </td>

                        <td class="max-w-xs truncate">
                            ${c.comentario}
                        </td>

                        <td class="text-yellow-400 font-bold text-center">
                            ⭐ ${c.valoracion}
                        </td>

                        <td>
                            ${c.fecha}
                        </td>

                        <td>
                            <c:choose>
                                <c:when test="${c.estado == 1}">
                                    <span class="text-green-400 font-semibold">Activo</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="text-red-400 font-semibold">Inactivo</span>
                                </c:otherwise>
                            </c:choose>
                        </td>

                        <td class="flex gap-2">

                            <!-- boton activar / desactivar -->
                            <a href="${pageContext.request.contextPath}/admin/comentarios?accion=estado&id=${c.idReview}&estado=${c.estado == 1 ? 0 : 1}"
                               class="bg-yellow-500 hover:bg-yellow-600 px-3 py-1 rounded text-xs font-semibold transition">
                                🔄 Estado
                            </a>

                            <!-- eliminar -->
                            <a href="${pageContext.request.contextPath}/admin/comentarios?accion=eliminar&id=${c.idReview}"
                                class="btn btn-error btn-xs"
                                onclick="return confirm('¿Eliminar este comentario?');">
                                Eliminar
                             </a>

                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</main>

</body>
</html>