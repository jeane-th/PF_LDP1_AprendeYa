<%-- 
    Document   : login.jsp
    Created on : 24 dic 2025, 17:54:10
    Author     : jtafu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- libreria control -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <!-- libreria de funciones -->

<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
        <link href="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.css" rel="stylesheet" />
        <!-- Librería JustValidate (SIN defer) -->
        <script src="https://cdn.jsdelivr.net/npm/just-validate@latest/dist/just-validate.production.min.js"></script>
        <link rel="icon" type="image/svg+xml" href="icons/icon_book.svg">
        <title>AprendeYa | Login</title>
    </head>
 <body class="bg-gray-900">
        
         <%-- mensaje cierre de sesion --%>
            <c:if test="${param.logout eq 'success'}">
                <div id="logoutToast"
                     class="fixed top-5 right-5 bg-green-600 text-white px-4 py-2 rounded-lg shadow-lg z-50 transition">
                    ✅ Sesión cerrada correctamente.
                </div>
                <script>
                    // arreglo desbanecimiento
                    setTimeout(() => {
                        const toast = document.getElementById('logoutToast');
                        if (toast) toast.style.display = 'none';
                    }, 3000);
                </script>
             </c:if>
        
          <header class="h-16 fixed top-0 left-0 w-full z-50 bg-gray-900 shadow-lg">
            <div class="max-w-7xl mx-auto px-6 flex items-center justify-between text-white h-full">
                <!-- Logo -->
                <div>

                    <a href="${pageContext.request.contextPath}/" class="flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                             stroke="currentColor" class="text-blue-600 size-8 text-xl font-bold mr-3 h-6 sm:h-9">
                        <path stroke-linecap="round" stroke-linejoin="round"
                              d="M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25" />
                        </svg>
                        <span class="text-3xl font-bold">AprendeYa</span>
                    </a>
                </div>
                <!-- Menu -->
                <nav>

                    <a href="${pageContext.request.contextPath}/" class="px-2">Inicio</a>
                    <a href="${pageContext.request.contextPath}/perfil" class="px-2">Mis cursos</a>
                </nav>
                        <!-- si no esta logeado -->
                        <a href="${pageContext.request.contextPath}/login.jsp"
                           class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-1 px-2 p rounded-xl cursor-pointer px-4 py-2.5 my-4">
                            Iniciar sesión</a>
            </div>
        </header>

        <main class="bg-blue-950/50 py-16 mt-16">
            <section
                class="p-5 max-w-md mx-auto rounded-lg border border-gray-200 shadow-sm border-gray-700 bg-gray-800">
                <div class="mb-5">
                    <div class="size-16 bg-blue-600 text-white rounded-full flex items-center justify-center mx-auto mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none"
                             stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                             class="lucide lucide-user-icon lucide-user">
                        <path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2" />
                        <circle cx="12" cy="7" r="4" />
                        </svg>
                    </div>
                    <h2 class="text-2xl font-bold text-center text-white mb-2">Iniciar sesión</h2>
                    <p class="text-center text-white mb-6">Ingresa a tu cuenta para matricularte</p>
                </div>
                <form id="formLogin" class="max-w-sm mx-auto" action="login" method="post">
                    <div class="mb-5">
                        <label for="email" class="block mb-2.5 text-sm font-medium text-gray-700 text-white">Email</label>
                        <input type="email" name="email" id="email"
                               class="border border-gray-300 text-gray-900 rounded-xl focus:border-blue-500 block w-full p-2.5 bg-gray-700 placeholder-gray-400 text-white"
                               placeholder="name@flowbite.com">
                    </div>
                    <div class="mb-5">
                        <label for="password"
                               class="block mb-2.5 text-sm font-medium text-gray-700 text-white">Contraseña</label>
                        <input type="password" name="password" id="password"
                               class="border border-gray-300 text-gray-900 rounded-xl focus:border-blue-500 block w-full p-2.5 bg-gray-700 placeholder-gray-400 text-white"
                               placeholder="********">
                    </div>
                    <button type="submit"
                            class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-1 px-2 p rounded-xl cursor-pointer w-full px-4 py-2.5 my-4">
                        Iniciar sesion
                    </button>

                    <!-- mensaje si hay error -->
                    <c:if test="${not empty error}">
                        <p class="text-red-500 text-center font-semibold mt-2">${error}</p>
                    </c:if>

                    <div class="pt-4 border-t border-gray-300 border-gray-700 mt-4">
                        <p class="text-sm font-medium text-gray-700 text-white select-none h-6 w-full text-center">
                            ¿No tienes una cuenta?
                            <a href="registro.jsp" class="text-blue-600 hover:underline ml-2">Registrate aquí</a>
                        </p>
                    </div>
                </form>
            </section>
        </main>
        <footer class="flex flex-rown justify-between gap-10 p-10 bg-gray-900 text-base-content border-t border-gray-800 max-w-7xl mx-auto">
            <aside>
                <div class="flex items-center gap-2 mb-2">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                         stroke="currentColor" class="text-blue-600 size-8 text-xl font-bold mr-3 h-6 sm:h-9">
                    <path stroke-linecap="round" stroke-linejoin="round"
                          d="M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25" />
                    </svg>
                    <span class="text-xl font-bold text-white">AprenderYa</span>
                </div>
                <p class="text-gray-400 max-w-xs">Tu plataforma de aprendizaje online para alcanzar tus metas profesionales.</p>
            </aside> 
            <nav class="flex flex-col">
                <h6 class="footer-title text-white opacity-100">Cursos</h6> 
                <a class="link link-hover text-gray-400">Desarrollo Web</a>
                <a class="link link-hover text-gray-400">Diseño</a>
                <a class="link link-hover text-gray-400">Marketing</a>
                <a class="link link-hover text-gray-400">Negocios</a>
            </nav> 
            <nav class="flex flex-col">
                <h6 class="footer-title text-white opacity-100">Empresa</h6> 
                <a class="link link-hover text-gray-400">Sobre Nosotros</a>
                <a class="link link-hover text-gray-400">Blog</a>
                <a class="link link-hover text-gray-400">Carreras</a>
                <a class="link link-hover text-gray-400">Contacto</a>
            </nav> 
            <nav class="flex flex-col">
                <h6 class="footer-title text-white opacity-100">Legal</h6> 
                <a class="link link-hover text-gray-400">Terminos de Uso</a>
                <a class="link link-hover text-gray-400">Privacidad</a>
                <a class="link link-hover text-gray-400">Cookies</a>
            </nav>
        </footer>
        <div class="footer footer-center p-4 bg-gray-900 text-gray-500 border-t border-gray-800">
            <aside class="text-center">
                <p>© 2025 AprenderYa. Todos los derechos reservados.</p>
            </aside>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.js"></script>

        <!-- validacion -->
        <script>
            const validate = new JustValidate('#formLogin', {
                errorFieldCssClass: 'border-red-500',
                errorLabelCssClass: 'text-red-500 text-sm mt-1',
                focusInvalidField: true
            });

            validate
                    .addField('#email', [
                        {rule: 'required', errorMessage: 'Complete su email'},
                        {rule: 'email', errorMessage: 'Email inválido'}
                    ])
                    .addField('#password', [
                        {rule: 'required', errorMessage: 'Complete su contraseña'},
                        {rule: 'minLength', value: 6, errorMessage: 'Mínimo 6 caracteres'}
                    ])
                    .onSuccess((event) => {
                        event.target.submit();
                    });
        </script>

    </body>

</html>