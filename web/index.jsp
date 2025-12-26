
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="es" data-theme="night">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
        <link href="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet" type="text/css" />
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="icon" type="image/svg+xml" href="icons/icon_book.svg">
        <title>AprendeYa</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

        <script>
            tailwind.config = {
                theme: {
                    extend: {
                        colors: {
                            'brand-blue': '#2563eb', // Azul brillante del botÃ³n
                            'brand-dark': '#0f172a', // Fondo muy oscuro
                            'brand-card': '#1e293b', // Fondo de las cards
                        }
                    }
                }
            }
        </script>
    </head>
    <body class="bg-brand-dark text-white font-sans">
        <header class="h-16 fixed top-0 left-0 w-full z-50 bg-gray-900 shadow-lg">
            <div class="max-w-7xl mx-auto px-6 flex items-center justify-between text-white h-full">
                <div>
                    <!-- Logo -->
                    <a href="#" class="flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                             stroke="currentColor" class="text-blue-600 size-8 text-xl font-bold mr-3 h-6 sm:h-9">
                        <path stroke-linecap="round" stroke-linejoin="round"
                              d="M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25" />
                        </svg>
                        <span class="text-3xl font-bold">AprendeYa</span>
                    </a>
                </div>
                <nav>
                    <!-- Menu -->
                    <a href="" class="px-2">Inicio</a>
                    <a href="" class="px-2">Cursos</a>
                    <a href="" class="px-2">Nosotros</a>
                </nav>

                <button type="submit"
                        class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-1 px-2 p rounded-xl cursor-pointer px-4 py-2.5 my-4">
                    Iniciar sesion</button>
                <!--                <div>
                                     Boton usuario 
                                    <button type="button" class="" id="user-menu-button" aria-expanded="false"
                                            data-dropdown-toggle="dropdown">
                                        <span class="sr-only">Open user menu</span>
                                        <span
                                            class="bg-blue-600 hover:bg-blue-700 text-white font-bold py-1 px-2 w-8 h-8 rounded-full flex items-center justify-center border-1 border-white cursor-pointer">J</span>
                                    </button>
                                     menu usuario  
                                    <div class="hidden z-50 my-4 w-56 text-white rounded shadow bg-gray-700" id="dropdown">
                                        <div class="py-3 px-4">
                                            <span class="block font-semibold">Neil sims</span>
                                            <span class="block truncate">name@flowbite.com</span>
                                        </div>
                                        <ul class="py-1" aria-labelledby="dropdown">
                                            <li>
                                                <a href="#"
                                                   class="flex items-center py-2 px-4  hover:bg-gray-100 hover:bg-gray-600 hover:text-white gap-2">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                         stroke-linejoin="round" class="lucide lucide-book-copy-icon lucide-book-copy">
                                                    <path d="M5 7a2 2 0 0 0-2 2v11" />
                                                    <path d="M5.803 18H5a2 2 0 0 0 0 4h9.5a.5.5 0 0 0 .5-.5V21" />
                                                    <path
                                                        d="M9 15V4a2 2 0 0 1 2-2h9.5a.5.5 0 0 1 .5.5v14a.5.5 0 0 1-.5.5H11a2 2 0 0 1 0-4h10" />
                                                    </svg>
                                                    Mis cursos
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#"
                                                   class="flex items-center py-2 px-4  hover:bg-gray-100 hover:bg-gray-600 hover:text-white gap-2">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                                                         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                         stroke-linejoin="round" class="lucide lucide-cog-icon lucide-cog">
                                                    <path d="M11 10.27 7 3.34" />
                                                    <path d="m11 13.73-4 6.93" />
                                                    <path d="M12 22v-2" />
                                                    <path d="M12 2v2" />
                                                    <path d="M14 12h8" />
                                                    <path d="m17 20.66-1-1.73" />
                                                    <path d="m17 3.34-1 1.73" />
                                                    <path d="M2 12h2" />
                                                    <path d="m20.66 17-1.73-1" />
                                                    <path d="m20.66 7-1.73 1" />
                                                    <path d="m3.34 17 1.73-1" />
                                                    <path d="m3.34 7 1.73 1" />
                                                    <circle cx="12" cy="12" r="2" />
                                                    <circle cx="12" cy="12" r="8" />
                                                    </svg>
                                                    Configuración
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="py-1" aria-labelledby="dropdown">
                                            <li>
                                                <a href="#" class="block py-2 px-4  hover:bg-gray-600">Cerrar sesión</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>-->
            </div>
        </header>

        <div class=" bg-blue-600 hero py-20 bg-gradient-to-b from-blue-900/30 to-brand-dark mt-16">
            <div class="hero-content text-center">
                <div class="max-w-3xl">
                    <h1 class="text-5xl font-bold text-white mb-6 mt-6">Aprende Nuevas Habilidades</h1>
                    <p class="py-2 text-xl text-gray-300 mb-8">
                        Accede a más de 500 cursos impartidos por expertos de la industria
                    </p>
                    <!--                    <button class="btn bg-brand-blue hover:bg-blue-700 text-white border-none px-8 text-lg">Explorar Cursos</button>-->
                </div>
            </div>
        </div>

        <div class="container mx-auto px-4 md:px-12 m-16">
            <!--            <div class="flex justify-center mb-10">
                            <div class="relative w-full max-w-2xl">
                                <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                                    <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                                </span>
                                <input type="text" placeholder="Buscar cursos..." class="input input-bordered w-full pl-10 bg-gray-800 border-gray-700 text-white focus:outline-none focus:border-blue-500 rounded-lg h-12" />
                            </div>
                        </div>-->

            <div class="flex flex-wrap justify-center gap-3">
                <button class="btn btn-sm bg-brand-blue text-white border-none hover:bg-blue-700 px-6 rounded-full"><i class="fa-solid fa-layer-group"></i> Todos</button>
                <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-laptop-code"></i> Desarrollo Web</button>
                <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-palette"></i> Diséño</button>
                <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-mobile-screen"></i> Marketing</button>
                <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-briefcase"></i> Negocios</button>
                <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-chart-simple"></i> Data Science</button>
                <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-camera"></i> Fotografìa</button>
            </div>
        </div>

        <div class="container mx-auto px-4 md:px-12 mb-20">
            <h2 class="text-2xl font-bold text-white mb-8">Cursos Destacados</h2>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
    <c:forEach var="c" items="${listaCursos}">
                <div class="card bg-brand-card shadow-xl border border-gray-800">
                
                        <figure class="relative h-48">
                            <img src="https://images.unsplash.com/photo-1633356122544-f134324a6cee?q=80&w=1000&auto=format&fit=crop" alt="React" class="w-full h-full object-cover" />
                            <div class="absolute top-2 right-2 badge bg-yellow-400 text-black border-none font-bold">Destacado</div>
                        </figure>

                        <div class="card-body p-6">

                            <div class="badge bg-blue-900 text-blue-200 border-none mb-2">${c.categoria}</div>
                            <h2 class="card-title text-white text-lg leading-tight">${c.titulo}</h2>
                            <p class="text-gray-400 text-sm mt-2">${c.descripcion}</p>
                            <p class="text-gray-500 text-xs mt-4">${c.profesor}</p>
                            <div class="flex items-center gap-4 text-xs text-gray-400 mt-2 mb-4">
                                <span class="text-yellow-400 font-bold"><i class="fa-solid fa-star"></i> 4.8</span>
<!--                                <span><i class="fa-solid fa-user-group"></i> 2340</span>-->
                                <span><i class="fa-regular fa-clock"></i> ${c.duracion} horas</span>
                            </div>
                            <div class="card-actions justify-between items-center mt-auto">
                                <span class="text-2xl font-bold text-blue-400">S/ ${c.precio}</span>
                                <button class="btn btn-sm bg-brand-blue hover:bg-blue-700 text-white border-none">Ver Curso</button>
                            </div>

                        </div>
                 
                </div>
   </c:forEach>
         

            </div>
        </div>

        <div class="bg-blue-600 w-full py-16">
            <div class="container mx-auto px-4">
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8 text-center text-white">
                    <div class="flex flex-col items-center">
                        <i class="fa-solid fa-book-open text-4xl mb-4"></i>
                        <div class="text-4xl font-bold mb-1">500+</div>
                        <div class="text-blue-100">Cursos Disponibles</div>
                    </div>
                    <div class="flex flex-col items-center">
                        <i class="fa-solid fa-users text-4xl mb-4"></i>
                        <div class="text-4xl font-bold mb-1">50,000+</div>
                        <div class="text-blue-100">Estudiantes Activos</div>
                    </div>
                    <div class="flex flex-col items-center">
                        <i class="fa-regular fa-star text-4xl mb-4"></i>
                        <div class="text-4xl font-bold mb-1">4.8</div>
                        <div class="text-blue-100">Valoración Promedio</div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer p-10 bg-brand-dark text-base-content border-t border-gray-800 max-w-7xl mx-auto">
            <aside>
                <div class="flex items-center gap-2 mb-2">
                    <i class="fa-solid fa-book-open text-blue-500 text-xl"></i>
                    <span class="text-xl font-bold text-white">AprenderYa</span>
                </div>
                <p class="text-gray-400 max-w-xs">Tu plataforma de aprendizaje online para alcanzar tus metas profesionales.</p>
            </aside> 
            <nav>
                <h6 class="footer-title text-white opacity-100">Cursos</h6> 
                <a class="link link-hover text-gray-400">Desarrollo Web</a>
                <a class="link link-hover text-gray-400">Diseño</a>
                <a class="link link-hover text-gray-400">Marketing</a>
                <a class="link link-hover text-gray-400">Negocios</a>
            </nav> 
            <nav>
                <h6 class="footer-title text-white opacity-100">Empresa</h6> 
                <a class="link link-hover text-gray-400">Sobre Nosotros</a>
                <a class="link link-hover text-gray-400">Blog</a>
                <a class="link link-hover text-gray-400">Carreras</a>
                <a class="link link-hover text-gray-400">Contacto</a>
            </nav> 
            <nav>
                <h6 class="footer-title text-white opacity-100">Legal</h6> 
                <a class="link link-hover text-gray-400">Terminos de Uso</a>
                <a class="link link-hover text-gray-400">Privacidad</a>
                <a class="link link-hover text-gray-400">Cookies</a>
            </nav>
        </footer>
        <div class="footer footer-center p-4 bg-brand-dark text-gray-500 border-t border-gray-800">
            <aside>
                <p>© 2025 AprenderYa. Todos los derechos reservados.</p>
            </aside>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.js"></script>
    </body>
</html>

