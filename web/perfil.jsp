<%-- 
    Document   : modoDarck
    Created on : 19 dic 2025, 14:48:11
    Author     : jtafu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
        <link href="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.css" rel="stylesheet" />
        <link rel="icon" type="image/svg+xml" href="icons/icon_book.svg">
        <title>AprendeYa | Perfil</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <header  class="h-16 fixed top-0 left-0 w-full z-50 bg-gray-900 items-center">
            <nav class="bg-white border-gray-200 px-4 lg:px-6 py-2.5 dark:bg-gray-900 w-full">
                <div class="flex flex-wrap justify-between items-center mx-auto max-w-screen-xl">
                    <div class="flex justify-start items-center"">
                        <button data-collapse-toggle="mobile-menu-2" type="button" class="inline-flex items-center p-2 mr-2 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="mobile-menu-2" aria-expanded="false">
                            <span class="sr-only">Open main menu</span>
                            <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
                            <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                        </button>
                        <a href="#" class="flex items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="text-white size-8 text-xl font-bold mr-3 h-6 sm:h-9">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M12 6.042A8.967 8.967 0 0 0 6 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 0 1 6 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 0 1 6-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0 0 18 18a8.967 8.967 0 0 0-6 2.292m0-14.25v14.25" />
                            </svg>
                            <span class="text-xl self-center font-bold text-white whitespace-nowrap dark:text-white">AprenderYa</span>
                        </a>
                    </div>
                    <div class="flex items-center lg:order-2">
                        <!-- usuario -->
                        <button type="button" class="flex mx-3  bg-gray-800 rounded-full md:mr-0 focus:ring-4 focus:ring-gray-300 dark:focus:ring-gray-600" id="user-menu-button" aria-expanded="false" data-dropdown-toggle="dropdown">
                            <span class="sr-only">Open user menu</span>
                            <!--<img class="w-8 h-8 rounded-full" src="https://flowbite.com/docs/images/people/profile-picture-5.jpg" alt="user photo">-->
                            <span class="w-8 h-8 rounded-full border-2 border-white text-white bg-blue-600 flex items-center justify-center text-white">JT</span>
                        </button>
                        <!-- Dropdown menu usuario -->
                        <div class="hidden z-50 my-4 w-56 text-base list-none bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600" id="dropdown">
                            <div class="py-3 px-4">
                                <span class="block font-semibold text-gray-900 dark:text-white">Neil sims</span>
                                <span class="block  text-gray-500 truncate dark:text-gray-400">name@flowbite.com</span>
                            </div>
                            <ul class="py-1 text-gray-500 dark:text-gray-400" aria-labelledby="dropdown">
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4  hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white gap-2">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                             stroke-linejoin="round" class="lucide lucide-cog-icon lucide-cog"><path d="M11 10.27 7 3.34"/><path d="m11 13.73-4 6.93"/><path d="M12 22v-2"/>
                                        <path d="M12 2v2"/><path d="M14 12h8"/><path d="m17 20.66-1-1.73"/><path d="m17 3.34-1 1.73"/><path d="M2 12h2"/><path d="m20.66 17-1.73-1"/>
                                        <path d="m20.66 7-1.73 1"/><path d="m3.34 17 1.73-1"/><path d="m3.34 7 1.73 1"/><circle cx="12" cy="12" r="2"/><circle cx="12" cy="12" r="8"/></svg>                                      
                                        Mis cursos
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="flex items-center py-2 px-4  hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white gap-2">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-book-copy-icon lucide-book-copy"><path d="M5 7a2 2 0 0 0-2 2v11"/><path d="M5.803 18H5a2 2 0 0 0 0 4h9.5a.5.5 0 0 0 .5-.5V21"/><path d="M9 15V4a2 2 0 0 1 2-2h9.5a.5.5 0 0 1 .5.5v14a.5.5 0 0 1-.5.5H11a2 2 0 0 1 0-4h10"/></svg>                             
                                        Configuración
                                    </a>
                                </li>
                            </ul>
                            <ul class="py-1 text-gray-500 dark:text-gray-400" aria-labelledby="dropdown">
                                <li>
                                    <a href="#" class="block py-2 px-4  hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">Sign out</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="hidden justify-between items-center w-full lg:flex lg:w-auto lg:order-1" id="mobile-menu-2">
                        <ul class="flex flex-col lg:items-center mt-4 font-medium lg:flex-row lg:space-x-8 lg:mt-0 ">
                            <li>
                                <form action="#" method="GET" class="lg:block lg:pl-2">
                                    <label for="topbar-search" class="sr-only">Search</label>
                                    <div class="relative mt-1 lg:w-96">
                                        <div class="flex absolute inset-y-0 left-0 items-center pl-3 pointer-events-none">
                                            <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20"> <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/> </svg>
                                        </div>
                                        <input type="text" name="email" id="topbar-search" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full pl-9 p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 pl-10" placeholder="Search">
                                    </div>
                                </form>
                            </li>
                            <li>
                                <a href="#" class="block py-2 pr-4 pl-3 text-white rounded lg:bg-transparent lg:text-gray-700 lg:p-0 dark:text-white" aria-current="page">Inicio</a>
                            </li>
                            <li>
                                <a href="#" class="block py-2 pr-4 pl-3 text-gray-700   hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-gray-700 lg:p-0 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">Cursos</a>
                            </li>
                            <li>
                                <a href="#" class="block py-2 pr-4 pl-3 text-gray-700   hover:bg-gray-50 lg:hover:bg-transparent lg:border-0 lg:hover:text-gray-700 lg:p-0 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">Nosotros</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main class="pt-16 ">
            <section class="bg-gradient-to-br from-blue-900 via-blue-800 to-gray-900 text-white">
                <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 md:items-start">
                    <div class="flex flex-col items-center md:flex-row gap-6">
                        <div class="w-32 h-32 rounded-full border-4 border-white shadow-lg
                             text-white flex items-center justify-center text-5xl flex-shrink-0">
                            JT
                        </div>
                        <div class="flex flex-col">
                            <div class="flex flex-col items-center md:items-start md:flex-row md:justify-start
                                 text-center md:text-left gap-4">
                                <h1 class="text-3xl font-bold mb-2 text-center md:text-left">
                                    Jeaneth Tafur</h1>
                            </div>
                            <div class="flex flex-col items-center md:items-start md:flex-row md:justify-start
                                 text-center md:text-left gap-2 md:gap-6 ">
                                <div class="flex items-center gap-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-mail-icon lucide-mail"><path d="m22 7-8.991 5.727a2 2 0 0 1-2.009 0L2 7"/><rect x="2" y="4" width="20" height="16" rx="2"/></svg>
                                    <span>Jeaneth@gmail.com</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-map-pin-icon lucide-map-pin"><path d="M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0"/><circle cx="12" cy="10" r="3"/></svg>
                                    <span>Perú</span>
                                </div>
                                <div class="flex items-center gap-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-globe-icon lucide-globe"><circle cx="12" cy="12" r="10"/><path d="M12 2a14.5 14.5 0 0 0 0 20 14.5 14.5 0 0 0 0-20"/><path d="M2 12h20"/></svg>
                                    <a href=# target="_blank" class="hover:text-white">
                                        www.jeanethtafur.com
                                    </a>
                                </div>
                            </div>
                            <div class="flex flex-col items-center md:items-start md:flex-row md:justify-start
                                 text-center md:text-left gap-4">
                                <h1 class="mb-2 md:text-left mt-4">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut neque odio. Sed erat justo, venenatis id nisi at, faucibus lobortis sapien. Praesent sed sem urna. Integer sollicitudin diam elit, vitae accumsan risus lobortis non. Donec eget condimentum velit, vitae.
                                </h1>
                                <span></span>
                            </div>
                        </div>
                    </div>
                    <!-- tarjetas de usuario -->
                    <div class="grid grid-cols-2 md:grid-cols-4 gap-4 mt-8">
                        <div class="bg-white/10 backdrop-blur-sm rounded-lg p-4">
                            <div class="flex items-center gap-3">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="lucide lucide-book-open-icon lucide-book-open"><path d="M12 7v14"/>
                                <path d="M3 18a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"/></svg>
                                <div>
                                    <div class="text-2xl font-bold">8</div>
                                    <div class="text-sm text-blue-100">Cursos Inscritos</div>
                                </div>
                            </div>
                        </div>
                        <div class="bg-white/10 backdrop-blur-sm rounded-lg p-4">
                            <div class="flex items-center gap-3">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="lucide lucide-circle-check-big-icon lucide-circle-check-big">
                                <path d="M21.801 10A10 10 0 1 1 17 3.335"/><path d="m9 11 3 3L22 4"/></svg>
                                <div>
                                    <div class="text-2xl font-bold">6</div>
                                    <div class="text-sm text-blue-100">Completados</div>
                                </div>
                            </div>
                        </div>
                        <div class="bg-white/10 backdrop-blur-sm rounded-lg p-4">
                            <div class="flex items-center gap-3">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" 
                                     stroke-linejoin="round" class="lucide lucide-award-icon lucide-award">
                                <path d="m15.477 12.89 1.515 8.526a.5.5 0 0 1-.81.47l-3.58-2.687a1 1 0 0 0-1.197 0l-3.586 2.686a.5.5 0 0 1-.81-.469l1.514-8.526"/><circle cx="12" cy="8" r="6"/></svg>
                                <div>
                                    <div class="text-2xl font-bold">4</div>
                                    <div class="text-sm text-blue-100">Certificados</div>
                                </div>
                            </div>
                        </div>
                        <div class="bg-white/10 backdrop-blur-sm rounded-lg p-4">
                            <div class="flex items-center gap-3">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-trending-up-icon lucide-trending-up"><path d="M16 7h6v6"/><path d="m22 7-8.5 8.5-5-5L2 17"/></svg>
                                <div>
                                    <div class="text-2xl font-bold">12</div>
                                    <div class="text-sm text-blue-100">Días seguidos</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="bg-gray-50 py-8 antialiased dark:bg-gray-900 md:py-12">
                <div class="mx-auto max-w-screen-xl px-4 2xl:px-0">
                    <!-- Heading & Filters -->
                    <div class="mb-4 items-end justify-between space-y-4 sm:flex sm:space-y-0 md:mb-8">
                        <h2 class="mt-3 text-xl font-semibold text-gray-900 dark:text-white sm:text-2xl">Mis cursos</h2>
                        <div class="flex items-center space-x-4">
                            <button id="sortDropdownButton1" data-dropdown-toggle="dropdownSort1" type="button" class="flex w-full items-center justify-center rounded-lg border border-gray-200 bg-white px-3 py-2 text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-gray-700 focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white dark:focus:ring-gray-700 sm:w-auto">
                                <svg class="-ms-0.5 me-2 h-4 w-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 4v16M7 4l3 3M7 4 4 7m9-3h6l-6 6h6m-6.5 10 3.5-7 3.5 7M14 18h4" />
                                </svg>
                                Ordenar
                                <svg class="-me-0.5 ms-2 h-4 w-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 9-7 7-7-7" />
                                </svg>
                            </button>
                            <div id="dropdownSort1" class="z-50 hidden w-40 divide-y divide-gray-100 rounded-lg bg-white shadow dark:bg-gray-700" data-popper-placement="bottom">
                                <ul class="p-2 text-left text-sm font-medium text-gray-500 dark:text-gray-400" aria-labelledby="sortDropdownButton">
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white"> Mas popular </a>
                                    </li>
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white"> Menos popular </a>
                                    </li>
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white">A-Z </a>
                                    </li>
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white">Z-A </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- comment -->
                            <!-- comment -->
                            <button id="sortDropdownButton1" data-dropdown-toggle="dropdownSort2" type="button" class="flex w-full items-center justify-center rounded-lg border border-gray-200 bg-white px-3 py-2 text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-gray-700 focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white dark:focus:ring-gray-700 sm:w-auto">
                                <svg class="-ms-0.5 me-2 h-4 w-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-width="2" d="M18.796 4H5.204a1 1 0 0 0-.753 1.659l5.302 6.058a1 1 0 0 1 .247.659v4.874a.5.5 0 0 0 .2.4l3 2.25a.5.5 0 0 0 .8-.4v-7.124a1 1 0 0 1 .247-.659l5.302-6.059c.566-.646.106-1.658-.753-1.658Z" />
                                </svg>
                                Filtrar
                                <svg class="-me-0.5 ms-2 h-4 w-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 9-7 7-7-7" />
                                </svg>
                            </button>
                            <div id="dropdownSort2" class="z-50 hidden w-40 divide-y divide-gray-100 rounded-lg bg-white shadow dark:bg-gray-700" data-popper-placement="bottom">
                                <ul class="p-2 text-left text-sm font-medium text-gray-500 dark:text-gray-400" aria-labelledby="sortDropdownButton">
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white"> Tecnologia</a>
                                    </li>
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white"> Diseño </a>
                                    </li>
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white">Marketing </a>
                                    </li>
                                    <li>
                                        <a href="#" class="group inline-flex w-full items-center rounded-md px-3 py-2 text-sm text-gray-500 hover:bg-gray-100 hover:text-gray-900 dark:text-gray-400 dark:hover:bg-gray-600 dark:hover:text-white">Finanzas</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="mb-4 grid gap-4 sm:grid-cols-2 md:mb-8 lg:grid-cols-3 xl:grid-cols-4">
                        <div class="rounded-lg border border-gray-200 bg-white shadow-sm dark:border-gray-700 dark:bg-gray-800">
                            <div class="rounded-t-lg w-64 w-full overflow-hidden">
                                <img 
                                    src="https://picsum.photos/600/300"
                                    class="w-full h-full object-cover"
                                    alt=""
                                    >
                            </div>
                            <div class="m-6">
                                <div class="mb-4 flex items-center justify-between gap-4">
                                    <!-- categoria -->
                                    <span class="me-2 rounded bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-gray-800 dark:bg-blue-900 dark:text-gray-300">Tecnologia</span> 
                                    <div class="flex items-center justify-end gap-1">
                                        <button type="button" data-tooltip-target="tooltip-add-to-favorites" 
                                                class="rounded-lg p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900 
                                                dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white
                                                cursor-pointer">
                                            <span class="sr-only"> Add to Favorites </span>
                                            <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6C6.5 1 1 8 5.8 13l6.2 7 6.2-7C23 8 17.5 1 12 6Z" />
                                            </svg>
                                        </button>
                                        <div id="tooltip-add-to-favorites" role="tooltip" class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm 
                                             font-medium text-white opacity-0 shadow-sm transition-opacity duration-300 dark:bg-gray-700" 
                                             data-popper-placement="top">
                                            Add to favorites
                                            <div class="tooltip-arrow" data-popper-arrow=""></div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-lg font-semibold leading-tight text-gray-900 dark:text-white">Desarrollo Web Completo con React</p>
                                <p class="text-base mt-2 font-medium text-gray-500 dark:text-gray-400">Por María García</p>
                                <div class="mt-4 mb-4 flex items-center gap-2">
                                    <div class="flex items-center">
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                    </div>
                                    <p class="text-sm font-medium text-gray-900 dark:text-white">5.0</p>
                                    <p class="text-sm font-medium text-gray-500 dark:text-gray-400">(455)</p>
                                </div>
                                <div class="mt-4 flex items-center justify-between gap-4 ">
                                    <button type="button" 
                                            class="inline-flex items-center rounded-lg bg-blue-700 px-5 py-2.5 text-sm font-medium text-white 
                                            hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-primary-300 
                                            dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-primary-800 
                                            w-full justify-center cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                             class="lucide lucide-eye-icon lucide-eye mr-2"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/></svg>
                                        Ver curso
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="rounded-lg border border-gray-200 bg-white shadow-sm dark:border-gray-700 dark:bg-gray-800">
                            <div class="rounded-t-lg w-64 w-full overflow-hidden">
                                <img 
                                    src="https://picsum.photos/600/300"
                                    class="w-full h-full object-cover"
                                    alt=""
                                    >
                            </div>
                            <div class="m-6">
                                <div class="mb-4 flex items-center justify-between gap-4">
                                    <!-- categoria -->
                                    <span class="me-2 rounded bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-gray-800 dark:bg-blue-900 dark:text-gray-300">Tecnologia</span> 
                                    <div class="flex items-center justify-end gap-1">
                                        <button type="button" data-tooltip-target="tooltip-add-to-favorites" 
                                                class="rounded-lg p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900 
                                                dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white
                                                cursor-pointer">
                                            <span class="sr-only"> Add to Favorites </span>
                                            <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6C6.5 1 1 8 5.8 13l6.2 7 6.2-7C23 8 17.5 1 12 6Z" />
                                            </svg>
                                        </button>
                                        <div id="tooltip-add-to-favorites" role="tooltip" class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm 
                                             font-medium text-white opacity-0 shadow-sm transition-opacity duration-300 dark:bg-gray-700" 
                                             data-popper-placement="top">
                                            Add to favorites
                                            <div class="tooltip-arrow" data-popper-arrow=""></div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-lg font-semibold leading-tight text-gray-900 dark:text-white">Desarrollo Web Completo con React</p>
                                <p class="text-base mt-2 font-medium text-gray-500 dark:text-gray-400">Por María García</p>
                                <div class="mt-4 mb-4 flex items-center gap-2">
                                    <div class="flex items-center">
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                    </div>
                                    <p class="text-sm font-medium text-gray-900 dark:text-white">5.0</p>
                                    <p class="text-sm font-medium text-gray-500 dark:text-gray-400">(455)</p>
                                </div>
                                <div class="mt-4 flex items-center justify-between gap-4 ">
                                    <button type="button" 
                                            class="inline-flex items-center rounded-lg bg-blue-700 px-5 py-2.5 text-sm font-medium text-white 
                                            hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-primary-300 
                                            dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-primary-800 
                                            w-full justify-center cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                             class="lucide lucide-eye-icon lucide-eye mr-2"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/></svg>
                                        Ver curso
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="rounded-lg border border-gray-200 bg-white shadow-sm dark:border-gray-700 dark:bg-gray-800">
                            <div class="rounded-t-lg w-64 w-full overflow-hidden">
                                <img 
                                    src="https://picsum.photos/600/300"
                                    class="w-full h-full object-cover"
                                    alt=""
                                    >
                            </div>
                            <div class="m-6">
                                <div class="mb-4 flex items-center justify-between gap-4">
                                    <!-- categoria -->
                                    <span class="me-2 rounded bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-gray-800 dark:bg-blue-900 dark:text-gray-300">Tecnologia</span> 
                                    <div class="flex items-center justify-end gap-1">
                                        <button type="button" data-tooltip-target="tooltip-add-to-favorites" 
                                                class="rounded-lg p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900 
                                                dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white
                                                cursor-pointer">
                                            <span class="sr-only"> Add to Favorites </span>
                                            <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6C6.5 1 1 8 5.8 13l6.2 7 6.2-7C23 8 17.5 1 12 6Z" />
                                            </svg>
                                        </button>
                                        <div id="tooltip-add-to-favorites" role="tooltip" class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm 
                                             font-medium text-white opacity-0 shadow-sm transition-opacity duration-300 dark:bg-gray-700" 
                                             data-popper-placement="top">
                                            Add to favorites
                                            <div class="tooltip-arrow" data-popper-arrow=""></div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-lg font-semibold leading-tight text-gray-900 dark:text-white">Desarrollo Web Completo con React</p>
                                <p class="text-base mt-2 font-medium text-gray-500 dark:text-gray-400">Por María García</p>
                                <div class="mt-4 mb-4 flex items-center gap-2">
                                    <div class="flex items-center">
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                    </div>
                                    <p class="text-sm font-medium text-gray-900 dark:text-white">5.0</p>
                                    <p class="text-sm font-medium text-gray-500 dark:text-gray-400">(455)</p>
                                </div>
                                <div class="mt-4 flex items-center justify-between gap-4 ">
                                    <button type="button" 
                                            class="inline-flex items-center rounded-lg bg-blue-700 px-5 py-2.5 text-sm font-medium text-white 
                                            hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-primary-300 
                                            dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-primary-800 
                                            w-full justify-center cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                             class="lucide lucide-eye-icon lucide-eye mr-2"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/></svg>
                                        Ver curso
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="rounded-lg border border-gray-200 bg-white shadow-sm dark:border-gray-700 dark:bg-gray-800">
                            <div class="rounded-t-lg w-64 w-full overflow-hidden">
                                <img 
                                    src="https://picsum.photos/600/300"
                                    class="w-full h-full object-cover"
                                    alt=""
                                    >
                            </div>
                            <div class="m-6">
                                <div class="mb-4 flex items-center justify-between gap-4">
                                    <!-- categoria -->
                                    <span class="me-2 rounded bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-gray-800 dark:bg-blue-900 dark:text-gray-300">Tecnologia</span> 
                                    <div class="flex items-center justify-end gap-1">
                                        <button type="button" data-tooltip-target="tooltip-add-to-favorites" 
                                                class="rounded-lg p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900 
                                                dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white
                                                cursor-pointer">
                                            <span class="sr-only"> Add to Favorites </span>
                                            <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6C6.5 1 1 8 5.8 13l6.2 7 6.2-7C23 8 17.5 1 12 6Z" />
                                            </svg>
                                        </button>
                                        <div id="tooltip-add-to-favorites" role="tooltip" class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm 
                                             font-medium text-white opacity-0 shadow-sm transition-opacity duration-300 dark:bg-gray-700" 
                                             data-popper-placement="top">
                                            Add to favorites
                                            <div class="tooltip-arrow" data-popper-arrow=""></div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-lg font-semibold leading-tight text-gray-900 dark:text-white">Desarrollo Web Completo con React</p>
                                <p class="text-base mt-2 font-medium text-gray-500 dark:text-gray-400">Por María García</p>
                                <div class="mt-4 mb-4 flex items-center gap-2">
                                    <div class="flex items-center">
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                    </div>
                                    <p class="text-sm font-medium text-gray-900 dark:text-white">5.0</p>
                                    <p class="text-sm font-medium text-gray-500 dark:text-gray-400">(455)</p>
                                </div>
                                <div class="mt-4 flex items-center justify-between gap-4 ">
                                    <button type="button" 
                                            class="inline-flex items-center rounded-lg bg-blue-700 px-5 py-2.5 text-sm font-medium text-white 
                                            hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-primary-300 
                                            dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-primary-800 
                                            w-full justify-center cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                             class="lucide lucide-eye-icon lucide-eye mr-2"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/></svg>
                                        Ver curso
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="rounded-lg border border-gray-200 bg-white shadow-sm dark:border-gray-700 dark:bg-gray-800">
                            <div class="rounded-t-lg w-64 w-full overflow-hidden">
                                <img 
                                    src="https://picsum.photos/600/300"
                                    class="w-full h-full object-cover"
                                    alt=""
                                    >
                            </div>
                            <div class="m-6">
                                <div class="mb-4 flex items-center justify-between gap-4">
                                    <!-- categoria -->
                                    <span class="me-2 rounded bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-gray-800 dark:bg-blue-900 dark:text-gray-300">Tecnologia</span> 
                                    <div class="flex items-center justify-end gap-1">
                                        <button type="button" data-tooltip-target="tooltip-add-to-favorites" 
                                                class="rounded-lg p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900 
                                                dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white
                                                cursor-pointer">
                                            <span class="sr-only"> Add to Favorites </span>
                                            <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6C6.5 1 1 8 5.8 13l6.2 7 6.2-7C23 8 17.5 1 12 6Z" />
                                            </svg>
                                        </button>
                                        <div id="tooltip-add-to-favorites" role="tooltip" class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm 
                                             font-medium text-white opacity-0 shadow-sm transition-opacity duration-300 dark:bg-gray-700" 
                                             data-popper-placement="top">
                                            Add to favorites
                                            <div class="tooltip-arrow" data-popper-arrow=""></div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-lg font-semibold leading-tight text-gray-900 dark:text-white">Desarrollo Web Completo con React</p>
                                <p class="text-base mt-2 font-medium text-gray-500 dark:text-gray-400">Por María García</p>
                                <div class="mt-4 mb-4 flex items-center gap-2">
                                    <div class="flex items-center">
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                    </div>
                                    <p class="text-sm font-medium text-gray-900 dark:text-white">5.0</p>
                                    <p class="text-sm font-medium text-gray-500 dark:text-gray-400">(455)</p>
                                </div>
                                <div class="mt-4 flex items-center justify-between gap-4 ">
                                    <button type="button" 
                                            class="inline-flex items-center rounded-lg bg-blue-700 px-5 py-2.5 text-sm font-medium text-white 
                                            hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-primary-300 
                                            dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-primary-800 
                                            w-full justify-center cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                             class="lucide lucide-eye-icon lucide-eye mr-2"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/></svg>
                                        Ver curso
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="rounded-lg border border-gray-200 bg-white shadow-sm dark:border-gray-700 dark:bg-gray-800">
                            <div class="rounded-t-lg w-64 w-full overflow-hidden">
                                <img 
                                    src="https://picsum.photos/600/300"
                                    class="w-full h-full object-cover"
                                    alt=""
                                    >
                            </div>
                            <div class="m-6">
                                <div class="mb-4 flex items-center justify-between gap-4">
                                    <!-- categoria -->
                                    <span class="me-2 rounded bg-blue-100 px-2.5 py-0.5 text-xs font-medium text-gray-800 dark:bg-blue-900 dark:text-gray-300">Tecnologia</span> 
                                    <div class="flex items-center justify-end gap-1">
                                        <button type="button" data-tooltip-target="tooltip-add-to-favorites" 
                                                class="rounded-lg p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900 
                                                dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white
                                                cursor-pointer">
                                            <span class="sr-only"> Add to Favorites </span>
                                            <svg class="h-5 w-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6C6.5 1 1 8 5.8 13l6.2 7 6.2-7C23 8 17.5 1 12 6Z" />
                                            </svg>
                                        </button>
                                        <div id="tooltip-add-to-favorites" role="tooltip" class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm 
                                             font-medium text-white opacity-0 shadow-sm transition-opacity duration-300 dark:bg-gray-700" 
                                             data-popper-placement="top">
                                            Add to favorites
                                            <div class="tooltip-arrow" data-popper-arrow=""></div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text-lg font-semibold leading-tight text-gray-900 dark:text-white">Desarrollo Web Completo con React</p>
                                <p class="text-base mt-2 font-medium text-gray-500 dark:text-gray-400">Por María García</p>
                                <div class="mt-4 mb-4 flex items-center gap-2">
                                    <div class="flex items-center">
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                        <svg class="h-4 w-4 text-yellow-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
                                        <path d="M13.8 4.2a2 2 0 0 0-3.6 0L8.4 8.4l-4.6.3a2 2 0 0 0-1.1 3.5l3.5 3-1 4.4c-.5 1.7 1.4 3 2.9 2.1l3.9-2.3 3.9 2.3c1.5 1 3.4-.4 3-2.1l-1-4.4 3.4-3a2 2 0 0 0-1.1-3.5l-4.6-.3-1.8-4.2Z" />
                                        </svg>
                                    </div>
                                    <p class="text-sm font-medium text-gray-900 dark:text-white">5.0</p>
                                    <p class="text-sm font-medium text-gray-500 dark:text-gray-400">(455)</p>
                                </div>
                                <div class="mt-4 flex items-center justify-between gap-4 ">
                                    <button type="button" 
                                            class="inline-flex items-center rounded-lg bg-blue-700 px-5 py-2.5 text-sm font-medium text-white 
                                            hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-primary-300 
                                            dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-primary-800 
                                            w-full justify-center cursor-pointer">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" 
                                             class="lucide lucide-eye-icon lucide-eye mr-2"><path d="M2.062 12.348a1 1 0 0 1 0-.696 10.75 10.75 0 0 1 19.876 0 1 1 0 0 1 0 .696 10.75 10.75 0 0 1-19.876 0"/>
                                        <circle cx="12" cy="12" r="3"/></svg>
                                        Ver curso
                                    </button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--                    <div class="w-full text-center">
                                            <button type="button" class="rounded-lg border border-gray-200 bg-white px-5 py-2.5 text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-gray-700 focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white dark:focus:ring-gray-700">Show more</button>
                                        </div>-->
                </div>

            </section>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/flowbite@4.0.1/dist/flowbite.min.js"></script>

    </body>
</html>
