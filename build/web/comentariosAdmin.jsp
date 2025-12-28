<%-- 
    Document   : comentariosAdmin
    Created on : 27 dic. 2025, 10:00:00 a. m.
    Author     : Otniel Jese
--%>

<%@page import="modelo.Review"%>
<%@page import="java.util.List"%>
<%@page import="dao.ReviewDAOImpl"%>
<%@page import="dao.ReviewDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ReviewDAO reviewDAO = new ReviewDAOImpl();
    List<Review> listaComentarios = reviewDAO.listarTodos();
%>

<!DOCTYPE html>
<html data-theme="dark">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Gestión de Comentarios - AprendeYa</title>
        <link href="https://cdn.jsdelivr.net/npm/daisyui@3.9.4/dist/full.css" rel="stylesheet" type="text/css" />
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body class="bg-base-300 min-h-screen">

        <div class="p-8 text-base-content max-w-[1400px] mx-auto">

            <div class="flex items-center gap-4 mb-6">
                <a href="${pageContext.request.contextPath}/"class="btn btn-ghost btn-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18" /></svg>
                    Volver
                </a>
                <div class="text-sm breadcrumbs text-gray-400">
                    <ul>
                        <li><a href="usuarioPanel.jsp">Panel de Administración</a></li>
                        <li><a>Comentarios</a></li>
                    </ul>
                </div>
            </div>

            <div class="tabs tabs-boxed bg-transparent mb-8 gap-4 border-b border-white/10 rounded-none pb-0">
                <a href="${pageContext.request.contextPath}/cursoPanel.jsp" class="tab hover:text-white">Cursos</a>
                <a href="${pageContext.request.contextPath}/usuarioPanel.jsp" class="tab hover:text-white">Usuarios</a>
                <a href="#" " class="tab hover:text-white">Matrículas</a>
                <a href="${pageContext.request.contextPath}/comentariosAdmin.jsp"  class="tab tab-active text-primary border-b-2 border-primary font-bold bg-transparent"">Comentarios</a>
                <a href="#" class="tab hover:text-white">Reportes</a>
            </div>

            <div class="mb-8">
                <h1 class="text-3xl font-bold text-white mb-2">Gestión de Comentarios</h1>
                <p class="text-gray-400">Administra los comentarios de los cursos.</p>
                <p class="text-gray-400">Total de comentarios: <%= listaComentarios.size()%></p>
            </div>
            <div class="bg-[#1d232a] p-4 rounded-lg border border-white/5 mb-6 flex flex-wrap gap-4 items-center">
                <div class="relative grow max-w-md">
                    <span class="absolute inset-y-0 left-0 flex items-center pl-3 text-gray-500">🔍</span>
                    <input type="text" id="searchInput" 
                           oninput="filterUsers()" placeholder="Buscar por nombre o email..." class="input input-bordered w-full pl-10 bg-[#15191e] border-white/10 focus:border-primary" />
                </div>
            </div>

            <div class="overflow-x-auto bg-[#1d232a] rounded-lg border border-white/5 shadow-xl">
                <table class="table w-full">
                    <thead class="bg-base-200/50 text-gray-400 font-semibold uppercase text-xs">
                        <tr>
                            <th class="py-4 pl-6">ID</th>
                            <th class="min-w-[180px]">Curso</th>
                            <th class="min-w-[180px]">Usuario</th>
                            <th class="max-w-[400px]">Comentario</th>
                            <th class="text-center">Valoración</th>
                            <th>Fecha</th>
                            <th class="pr-6 text-right">Acciones</th>
                        </tr>
                    </thead>
                    <tbody class="text-sm" id="commentsTableBody">
                        <% for (Review r : listaComentarios) {%>
                        <tr class="user-row hover:bg-white/5 border-b border-white/5 transition-colors">
                            <td class="pl-6 py-4"><%= r.getIdReview()%></td>
                            <td class="min-w-[180px]"><%= r.getNombreCurso()%></td>
                            <td class="min-w-[180px]"><%= r.getNombreUsuario()%></td>
                            <td class="max-w-[400px]"><%= r.getComentario()%></td>
                            <td class="text-center"><span class="mr-2">⭐</span><%= r.getValoracion()%></td>
                            <td><%= r.getFecha()%></td>
                            <td class="text-center">
                                <div class="dropdown dropdown-left">
                                    <div tabindex="0" role="button" class="btn btn-ghost btn-circle btn-sm">
                                        <i class="fa-solid fa-ellipsis-vertical text-lg"></i>
                                    </div>
                                    <ul tabindex="0" class="dropdown-content z-[1] menu p-2 shadow bg-base-100 rounded-box w-52">
                                        <li>
                                            <a onclick="abrirModalEditar('<%= r.getIdReview()%>', '<%= r.getIdCurso()%>', '<%= r.getIdUsuario()%>', '<%= r.getComentario()%>', '<%= r.getValoracion()%>')">
                                                <i class="fa-regular fa-pen-to-square"></i> Editar
                                            </a>
                                        </li>
                                        <li>
                                            <a class="text-error" href="ComentarioServlet?accion=eliminar&id=<%= r.getIdReview()%>" onclick="return confirm('¿Estás seguro de eliminar este comentario?')">
                                                <i class="fa-solid fa-trash-can"></i> Eliminar
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Modal Editar -->
        <dialog id="modal_editar_comentario" class="modal">
            <div class="modal-box w-11/12 max-w-3xl bg-slate-900 text-white">
                <h3 class="font-bold text-lg mb-4">Editar Comentario</h3>
                <form action="ComentarioServlet" method="POST">
                    <input type="hidden" name="accion" value="actualizar">
                    <input type="hidden" name="idReview" id="modal_edit_id">
                    <div class="grid grid-cols-2 gap-4">
                        <div class="form-control">
                            <label class="label"><span class="label-text text-white">ID Curso</span></label>
                            <input type="text" name="idCurso" id="modal_edit_idCurso" class="input input-bordered bg-slate-800" required />
                        </div>
                        <div class="form-control">
                            <label class="label"><span class="label-text text-white">ID Usuario</span></label>
                            <input type="text" name="idUsuario" id="modal_edit_idUsuario" class="input input-bordered bg-slate-800" required />
                        </div>
                        <div class="form-control col-span-2">
                            <label class="label"><span class="label-text text-white">Comentario</span></label>
                            <textarea name="comentario" id="modal_edit_comentario" class="textarea textarea-bordered bg-slate-800" required></textarea>
                        </div>
                        <div class="form-control">
                            <label class="label"><span class="label-text text-white">Valoración (1-5)</span></label>
                            <input type="number" name="valoracion" id="modal_edit_valoracion" class="input input-bordered bg-slate-800" min="1" max="5" required />
                        </div>
                    </div>
                    <div class="modal-action mt-6">
                        <button type="button" class="btn btn-ghost" onclick="document.getElementById('modal_editar_comentario').close()">Cancelar</button>
                        <button type="submit" class="btn btn-primary bg-blue-600 border-none hover:bg-blue-700 text-white">Guardar Cambios</button>
                    </div>
                </form>
            </div>
            <form method="dialog" class="modal-backdrop"><button>close</button></form>
        </dialog>
        <script>
            // el filtro funciona
            function filterUsers() {
                const searchInput = document.getElementById('searchInput');
                const rows = document.querySelectorAll('.user-row');
                const noResults = document.getElementById('noResults');

                const searchTerm = searchInput.value.toLowerCase();

                let visibleCount = 0;

                rows.forEach(row => {
                    const rowText = row.innerText.toLowerCase();

                    const matchesSearch = rowText.includes(searchTerm);

                    if (matchesSearch) {
                        row.style.display = '';
                        visibleCount++;
                    } else {
                        row.style.display = 'none';
                    }
                });
            }
        </script>
        <script>
            function abrirModalEditar(id, idCurso, idUsuario, comentario, valoracion) {
                document.getElementById('modal_edit_id').value = id;
                document.getElementById('modal_edit_idCurso').value = idCurso;
                document.getElementById('modal_edit_idUsuario').value = idUsuario;
                document.getElementById('modal_edit_comentario').value = comentario;
                document.getElementById('modal_edit_valoracion').value = valoracion;
                document.getElementById('modal_editar_comentario').showModal();
            }
        </script>

    </body>
</html>
