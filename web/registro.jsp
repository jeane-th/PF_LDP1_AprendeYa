<%-- 
    Document   : registro.jsp
    Created on : 23 dic 2025, 22:33:35
    Author     : jtafu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
        <link href="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.css" rel="stylesheet" />
        <link rel="icon" type="image/svg+xml" href="icons/icon_book.svg">
        <title>AprendeYa | Registro</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <header  class="h-16 fixed top-0 left-0 w-full z-50 bg-gray-900 items-center shadow-lg">
            <nav class="border-gray-200 px-6 py-2.5 bg-gray-900 w-full">
                <div class="flex justify-center items-center w-full">
                    <!-- Logo header -->
                    <div class="flex justify-start items-center"">
                        <a href="#" class="flex items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="text-blue-600 size-8 text-xl font-bold mr-3 h-6 sm:h-9">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25" />
                            </svg>
                            <span class="text-xl self-center font-bold  whitespace-nowrap text-white">AprenderYa</span>
                        </a>
                    </div>
                    <!--Menu-->
                    <div class="mx-20">
                        <ul class="flex justify-between items-center font-medium flex-row space-x-8 mt-0 ">
                            <li>
                                <!-- Buscador -->
                                <form action="#" method="GET" class="block pl-2">
                                    <label for="topbar-search" class="sr-only">Buscar</label>
                                    <div class="relative mt-1 w-96">
                                        <div class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none">
                                            <svg class="w-4 h-4 text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20"> <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/> </svg>
                                        </div>
                                        <input type="text" name="email" id="topbar-search" class=" border text-sm rounded-lg block w-full pl-9 p-2.5 bg-gray-700 border-gray-600 placeholder-gray-400 text-white focus:ring-blue-500 focus:border-blue-500 pl-10" placeholder="Buscar">
                                    </div>
                                </form>
                            </li>
                            <li>
                                <a href="#" class="block rounded bg-transparent p-0 text-white">Inicio</a>
                            </li>
                            <li>
                                <a href="#" class="block py-2 pr-4 pl-3 text-gray-700   hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-gray-700 lg:p-0 
                                   text-gray-400 lg:
                                   hover:text-white 
                                   hover:bg-gray-700 
                                   hover:text-white lg:
                                   hover:bg-transparent 
                                   border-gray-700">Cursos</a>
                            </li>
                            <li>
                                <a href="#" class="block py-2 pr-4 pl-3 text-gray-700   hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-gray-700 lg:p-0 
                                   text-gray-400 lg:
                                   hover:text-white 
                                   hover:bg-gray-700 
                                   hover:text-white lg:
                                   hover:bg-transparent 
                                   border-gray-700">Nosotros</a>
                            </li>
                        </ul>
                    </div>


                    <div class="flex items-center lg:order-2">
                        usuario 
                        <button type="button" class="flex mx-3  bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 
                                focus:ring-gray-600" id="user-menu-button" aria-expanded="false" data-dropdown-toggle="dropdown">
                            <span class="sr-only">Open user menu</span>

                            <span class="w-8 h-8 rounded-full border-2 border-white text-white bg-blue-600 flex items-center justify-center text-white">JT</span>
                        </button>
                        menu usuario 
                        <div class="hidden z-50 my-4 w-56 text-base list-none rounded divide-y divide-gray-100 shadow 
                             bg-gray-700 
                             divide-gray-600" id="dropdown">
                            <div class="py-3 px-4">
                                <span class="block font-semibold text-white
                                      ">Neil sims</span>
                                <span class="block  text-gray-500 truncate 
                                      text-gray-400">name@flowbite.com</span>
                            </div>
                            <ul class="py-1 text-gray-500 
                                text-gray-400" aria-labelledby="dropdown">
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4  hover:bg-gray-100 
                                       hover:bg-gray-600 
                                       hover:text-white gap-2">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                             stroke-linejoin="round" class="lucide lucide-cog-icon lucide-cog"><path d="M11 10.27 7 3.34"/><path d="m11 13.73-4 6.93"/><path d="M12 22v-2"/>
                                        <path d="M12 2v2"/><path d="M14 12h8"/><path d="m17 20.66-1-1.73"/><path d="m17 3.34-1 1.73"/><path d="M2 12h2"/><path d="m20.66 17-1.73-1"/>
                                        <path d="m20.66 7-1.73 1"/><path d="m3.34 17 1.73-1"/><path d="m3.34 7 1.73 1"/><circle cx="12" cy="12" r="2"/><circle cx="12" cy="12" r="8"/></svg>                                      
                                        Mis cursos
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4  hover:bg-gray-100 
                                       hover:bg-gray-600 
                                       hover:text-white gap-2">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-book-copy-icon lucide-book-copy"><path d="M5 7a2 2 0 0 0-2 2v11"/><path d="M5.803 18H5a2 2 0 0 0 0 4h9.5a.5.5 0 0 0 .5-.5V21"/><path d="M9 15V4a2 2 0 0 1 2-2h9.5a.5.5 0 0 1 .5.5v14a.5.5 0 0 1-.5.5H11a2 2 0 0 1 0-4h10"/></svg>                             
                                        Configuración
                                    </a>
                                </li>
                            </ul>
                            <ul class="py-1 text-gray-500 
                                text-gray-400" aria-labelledby="dropdown">
                                <li>
                                    <a href="#" class="block py-2 px-4  hover:bg-gray-100 
                                       hover:bg-gray-600 
                                       hover:text-white">Sign out</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </nav>
        </header>
        <main class="pt-16 ">
            <section class="pb-8 pt-2 antialiased 
                     bg-gray-900 md:py-16">
                <!-- Contenedor del formulario REGISTRO-->
                <div class="sm:mt-10 max-w-9/10 p-5 sm:max-w-md  mx-auto rounded-lg border border-gray-200 shadow-sm 
                     border-gray-700 
                     bg-gray-800">
                    <form class="max-w-sm mx-auto" action="registro" method="post">
                        <div class="mb-5">
                            <label for="nombre" class="block mb-2.5 text-sm font-medium text-gray-700 
                                   text-white">Nombre</label>
                            <input type="text" name="nombre"  id="nombre" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-xl focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 
                                   bg-gray-700 
                                   border-gray-600 
                                   placeholder-gray-400 
                                   text-white 
                                   focus:ring-blue-500 
                                   focus:border-blue-500 " placeholder="nombre">
                        </div>
                        <div class="mb-5">
                            <label for="email" class="block mb-2.5 text-sm font-medium text-gray-700 
                                   text-white">Email</label>
                            <input type="email" name="email"  id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-xl focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 
                                   bg-gray-700 
                                   border-gray-600 
                                   placeholder-gray-400 
                                   text-white 
                                   focus:ring-blue-500 
                                   focus:border-blue-500 " placeholder="name@flowbite.com">
                        </div>
                        <div class="mb-5">
                            <label for="password" class="block mb-2.5 text-sm font-medium text-gray-700 
                                   text-white">Contraseña</label>
                            <input type="password" name="password"  id="password" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-xl focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 
                                   bg-gray-700 
                                   border-gray-600 
                                   placeholder-gray-400 
                                   text-white 
                                   focus:ring-blue-500 
                                   focus:border-blue-500 " placeholder="********">
                        </div>
                        <div>
                            <label for="remember" class="flex items-center mb-5 mt-2 ">
                                <input id="remember" type="checkbox" value="" class="w-4 h-4 border border-default-medium rounded-xs bg-neutral-secondary-medium focus:ring-2 focus:ring-brand-soft 
                                       bg-gray-700 
                                       border-gray-600 
                                       placeholder-gray-400 
                                       text-white 
                                       focus:ring-blue-500 
                                       focus:border-blue-500" required />
                                <p class="ms-2 text-sm font-medium text-white select-none">Acepto <a href="#" class="text-blue-600 hover:underline">terminos y condiciones</a>.</p>
                            </label>

                        </div>
                        <button type="submit" class="text-white bg-blue-600 box-border border border-transparent hover:bg-brand-strong focus:ring-4 focus:ring-brand-medium shadow-xs font-medium leading-5 rounded-xl text-sm px-4 py-2.5 focus:outline-none w-full">Registrar</button>
                        <div class="pt-4 border-t border-gray-300 
                             border-gray-700 mt-4">
                            <p class=" text-sm font-medium text-gray-700 
                               text-white select-none h-6 w-full text-center">Tienes una cuenta <a href="login.jsp" class="text-blue-600 hover:underline">Inicia sesion aquí </a>.</p>
                        </div>

                    </form>
                    <div>
                        <p class="text-red-500 h-6 w-full text-center">
                            <c:if test="${not empty error}">
                                ${error}
                            </c:if></p>
                    </div>
                </div>

            </section>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.js"></script>
    </body>
</html>
