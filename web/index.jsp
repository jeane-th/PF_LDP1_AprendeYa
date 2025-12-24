<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="es" data-theme="night">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AprenderYa - Cursos Online</title>
    
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        'brand-blue': '#2563eb', // Azul brillante del botón
                        'brand-dark': '#0f172a', // Fondo muy oscuro
                        'brand-card': '#1e293b', // Fondo de las cards
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-brand-dark text-white font-sans">

    <div class="navbar bg-brand-dark px-4 md:px-12 py-4">
        <div class="navbar-start">
            <a class="btn btn-ghost text-xl normal-case flex items-center gap-2">
                <i class="fa-solid fa-book-open text-blue-500"></i> <span class="font-bold text-white">AprenderYa</span>
            </a>
        </div>
        <div class="navbar-center hidden lg:flex">
            <ul class="menu menu-horizontal px-1 text-gray-300 text-base">
                <li><a class="hover:text-white">Inicio</a></li>
                <li><a class="hover:text-white">Cursos</a></li>
                <li><a class="hover:text-white">Categorías</a></li>
                <li><a class="hover:text-white">Nosotros</a></li>
            </ul>
        </div>
        <div class="navbar-end gap-4">
            <a class="hidden md:inline text-gray-300 hover:text-white text-sm cursor-pointer">Mi Perfil</a>
            <a class="hidden md:inline text-gray-300 hover:text-white text-sm cursor-pointer">Admin</a>
            <a class="btn bg-brand-blue hover:bg-blue-700 text-white border-none px-6 rounded-lg">Iniciar Sesión</a>
        </div>
    </div>

    <div class="hero py-20 bg-gradient-to-b from-blue-900/30 to-brand-dark">
        <div class="hero-content text-center">
            <div class="max-w-3xl">
                <h1 class="text-5xl font-bold text-white mb-6">Aprende Nuevas Habilidades</h1>
                <p class="py-2 text-xl text-gray-300 mb-8">
                    Accede a más de 500 cursos impartidos por expertos de la industria
                </p>
                <button class="btn bg-brand-blue hover:bg-blue-700 text-white border-none px-8 text-lg">Explorar Cursos</button>
            </div>
        </div>
    </div>

    <div class="container mx-auto px-4 md:px-12 -mt-6 mb-16">
        <div class="flex justify-center mb-10">
            <div class="relative w-full max-w-2xl">
                <span class="absolute inset-y-0 left-0 flex items-center pl-3">
                    <i class="fa-solid fa-magnifying-glass text-gray-400"></i>
                </span>
                <input type="text" placeholder="Buscar cursos..." class="input input-bordered w-full pl-10 bg-gray-800 border-gray-700 text-white focus:outline-none focus:border-blue-500 rounded-lg h-12" />
            </div>
        </div>

        <div class="flex flex-wrap justify-center gap-3">
            <button class="btn btn-sm bg-brand-blue text-white border-none hover:bg-blue-700 px-6 rounded-full"><i class="fa-solid fa-layer-group"></i> Todos</button>
            <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-laptop-code"></i> Desarrollo Web</button>
            <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-palette"></i> Diseño</button>
            <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-mobile-screen"></i> Marketing</button>
            <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-briefcase"></i> Negocios</button>
            <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-chart-simple"></i> Data Science</button>
            <button class="btn btn-sm btn-outline text-gray-300 hover:bg-gray-800 hover:text-white border-gray-700 px-4 rounded-full"><i class="fa-solid fa-camera"></i> Fotografía</button>
        </div>
    </div>

    <div class="container mx-auto px-4 md:px-12 mb-20">
        <h2 class="text-2xl font-bold text-white mb-8">Cursos Destacados</h2>
        
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            
            <div class="card bg-brand-card shadow-xl border border-gray-800">
                <figure class="relative h-48">
                    <img src="https://images.unsplash.com/photo-1633356122544-f134324a6cee?q=80&w=1000&auto=format&fit=crop" alt="React" class="w-full h-full object-cover" />
                    <div class="absolute top-2 right-2 badge bg-yellow-400 text-black border-none font-bold">Destacado</div>
                </figure>
                <div class="card-body p-6">
                    <div class="badge bg-blue-900 text-blue-200 border-none mb-2">Intermedio</div>
                    <h2 class="card-title text-white text-lg leading-tight">Desarrollo Web Completo con React</h2>
                    <p class="text-gray-400 text-sm mt-2">Aprende a crear aplicaciones web modernas desde cero con React, TypeScript y Tailwind CSS.</p>
                    <p class="text-gray-500 text-xs mt-4">Por María García</p>
                    
                    <div class="flex items-center gap-4 text-xs text-gray-400 mt-2 mb-4">
                        <span class="text-yellow-400 font-bold"><i class="fa-solid fa-star"></i> 4.8</span>
                        <span><i class="fa-solid fa-user-group"></i> 2340</span>
                        <span><i class="fa-regular fa-clock"></i> 12 horas</span>
                    </div>

                    <div class="card-actions justify-between items-center mt-auto">
                        <span class="text-2xl font-bold text-blue-400">$49.99</span>
                        <button class="btn btn-sm bg-brand-blue hover:bg-blue-700 text-white border-none">Ver Curso</button>
                    </div>
                </div>
            </div>

            <div class="card bg-brand-card shadow-xl border border-gray-800">
                <figure class="relative h-48">
                    <img src="https://images.unsplash.com/photo-1561070791-2526d30994b5?q=80&w=1000&auto=format&fit=crop" alt="Design" class="w-full h-full object-cover" />
                    <div class="absolute top-2 right-2 badge bg-yellow-400 text-black border-none font-bold">Destacado</div>
                </figure>
                <div class="card-body p-6">
                    <div class="badge bg-blue-900 text-blue-200 border-none mb-2">Principiante</div>
                    <h2 class="card-title text-white text-lg leading-tight">Diseño UI/UX: De Cero a Experto</h2>
                    <p class="text-gray-400 text-sm mt-2">Domina los principios del diseño de interfaces y experiencia de usuario para crear productos digitales...</p>
                    <p class="text-gray-500 text-xs mt-4">Por Carlos Méndez</p>
                    
                    <div class="flex items-center gap-4 text-xs text-gray-400 mt-2 mb-4">
                        <span class="text-yellow-400 font-bold"><i class="fa-solid fa-star"></i> 4.9</span>
                        <span><i class="fa-solid fa-user-group"></i> 1850</span>
                        <span><i class="fa-regular fa-clock"></i> 10 horas</span>
                    </div>

                    <div class="card-actions justify-between items-center mt-auto">
                        <span class="text-2xl font-bold text-blue-400">$39.99</span>
                        <button class="btn btn-sm bg-brand-blue hover:bg-blue-700 text-white border-none">Ver Curso</button>
                    </div>
                </div>
            </div>

            <div class="card bg-brand-card shadow-xl border border-gray-800">
                <figure class="relative h-48">
                    <img src="https://images.unsplash.com/photo-1551288049-bebda4e38f71?q=80&w=1000&auto=format&fit=crop" alt="Marketing" class="w-full h-full object-cover" />
                    <div class="absolute top-2 right-2 badge bg-yellow-400 text-black border-none font-bold">Destacado</div>
                </figure>
                <div class="card-body p-6">
                    <div class="badge bg-blue-900 text-blue-200 border-none mb-2">Intermedio</div>
                    <h2 class="card-title text-white text-lg leading-tight">Marketing Digital: Estrategias 2025</h2>
                    <p class="text-gray-400 text-sm mt-2">Aprende las estrategias más efectivas de marketing digital para hacer crecer tu negocio online.</p>
                    <p class="text-gray-500 text-xs mt-4">Por Ana Rodríguez</p>
                    
                    <div class="flex items-center gap-4 text-xs text-gray-400 mt-2 mb-4">
                        <span class="text-yellow-400 font-bold"><i class="fa-solid fa-star"></i> 4.7</span>
                        <span><i class="fa-solid fa-user-group"></i> 3120</span>
                        <span><i class="fa-regular fa-clock"></i> 8 horas</span>
                    </div>

                    <div class="card-actions justify-between items-center mt-auto">
                        <span class="text-2xl font-bold text-blue-400">$44.99</span>
                        <button class="btn btn-sm bg-brand-blue hover:bg-blue-700 text-white border-none">Ver Curso</button>
                    </div>
                </div>
            </div>

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

    <footer class="footer p-10 bg-brand-dark text-base-content border-t border-gray-800">
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
            <a class="link link-hover text-gray-400">Términos de Uso</a>
            <a class="link link-hover text-gray-400">Privacidad</a>
            <a class="link link-hover text-gray-400">Cookies</a>
        </nav>
    </footer>
    <div class="footer footer-center p-4 bg-brand-dark text-gray-500 border-t border-gray-800">
        <aside>
            <p>© 2025 AprenderYa. Todos los derechos reservados.</p>
        </aside>
    </div>

</body>
</html>

