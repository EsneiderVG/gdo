<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GDO - Home</title>
    <link rel="icon" href="/img/gdo-img.png">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/css/cursos/cursomain.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/components/popup.css">

</head>
<body>

<%@ include file="../../plantillas/header_cursos.jsp" %>    

    <div class="container mx-auto mt-10 adp-main">

        <div class="flex-row-cont">
            <div class="container-boxy-card">
                <div class="flex items-center my-4">
                    <img src="${usuario.imagenPerfil}" alt="" class="img-medium rounded-full mr-3">
                    <p class="text-2xl font-medium"><c:out value="${usuario.username}"/>, desarrolla tus habilidades y avanza en tu carrera con GDO</p>
                </div>
                <div class="mb-6">
                    Vuelve a centrarte en ti y tus metas. Usa el código EDXFRESHSTART para obtener descuentos en la inscripción de programas seleccionados hasta el 31 de agosto de 2023.
                </div>
                <c:if test = "${usuario.userType.id == 2}">
                    <div class="flex">
                        <button id="btn-abrir-popup" class="buttons-neon text-white font-bold py-2 px-4 rounded ">Crear nueva ruta</button>
                    </div>
                </c:if>
            </div>
            <div class="circle-bck">
                <img src="/img/img-courses-1.svg" alt="course" class="img-intro">
            </div>
            
        </div>  

        <div class="rutas-container-main mb-16">
            <h1 class="text-2xl mt-6">
                <span><i class="fa-solid fa-laptop-code"></i></span>
                Rutas de Aprendizaje!
            </h1>
            <div class="scroll-road">

                <div class="roadmaps-container my-6">
                    
                    <c:forEach var="i" items="${roadmaps}">
                        <div class="card-road">
                            <button data-modal-target="${i.name}" data-modal-toggle="${i.name}"  type="button">
                                <img class="xdimg" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1869px-Python-logo-notext.svg.png" alt="">
                            </button>
                        </div>
                        <c:import url="popups/rutasAprendizajes.jsp">
                            <c:param name="title" value="Welcome to ${i.name}"/>
                            <c:param name="description" value="${i.description}"/>
                            <c:param name="id" value="${i.id}"/>
                            <c:param name="userFN" value="${i.createdFor.firstName}"/>
                            <c:param name="userLN" value="${i.createdFor.lastName}"/>
                            <c:param name="butValue" value="${i.name}"/>
                        </c:import>  
                    </c:forEach>
                  
                </div>
            </div>
        </div>

        <div class="flex-col rounded-2xl mt-20 border-themes">
            <div class="title-top p-4">
                <p class="text-xl font-medium">Identify the skills you need to advance your career</p>
                <span>Good lucky</span>
            </div>
            <div class="flex-row-cont-selected gap-6 p-4">
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">1</span> Cursos de JavaScript
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">1</span> Cursos de Python
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">1</span> Cursos de Java
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">1</span> Cursos de React
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">1</span> Cursos de Angular
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">1</span> Cursos de Flutter
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">2</span> Cursos de Kotlin
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                <div class="box-top flex items-center justify-around px-4 py-4 rounded-xl">
                    <span class="mark mr-2">3</span> Cursos de C++
                    <a href="#">Explorar 
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>
                
            </div>
            
        </div>

        <div class="course-section mt-6 mb-6">       

            <h1 class="text-2xl">Cursos Bytelearn</h1>

            <div class="flex items-center gap-2 mt-4 flex-wrap">
                <span class="buttons-neon px-4 py-2 rounded">Github</span>
                <span class="buttons-neon px-4 py-2 rounded">JavaScript</span>
                <span class="buttons-neon px-4 py-2 rounded">Git</span>
                <span class="buttons-neon px-4 py-2 rounded">Sql</span>
                <span class="buttons-neon px-4 py-2 rounded">React</span>
            </div>

            <div id="default-carousel" class="relative w-full" data-carousel="static">
                <!-- Carousel wrapper -->
                <div class="relative overflow-hidden rounded-lg height-adp">
                    <!-- Item 1 -->

                    
                    <div class="hidden duration-700 ease-in-out" data-carousel-item>
                        <div class="contents-cards-slide">
                            
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                    <div class="hidden duration-700 ease-in-out" data-carousel-item>
                        <div class="contents-cards-slide px-16">
                            
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            <div class="card 1">
                                <div class="card_image">
                                    <img src="https://i.redd.it/b3esnz5ra34y.jpg" />
                                </div>

                                <div class="info-course px-1">

                                    <div class="card_title title-white px-4 pt-4">
                                        <p>Curso de python</p>
                                        <p class="text-base">Curso de python 100% gratis</p>
                                        <p class="mt-4">By: Neider Caceres</p>
                                    </div>

                                </div>
                            </div>
                            
                            
                        </div>
                    </div>
                    
                    <!-- Item 2 -->
                    
                    
                </div>
                <!-- Slider indicators -->
                <div class="absolute z-30 flex space-x-3 -translate-x-1/2 bottom-5 left-1/2">
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="true" aria-label="Slide 1" data-carousel-slide-to="0"></button>
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 2" data-carousel-slide-to="1"></button>
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 3" data-carousel-slide-to="2"></button>
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 4" data-carousel-slide-to="3"></button>
                    <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 5" data-carousel-slide-to="4"></button>
                </div>
                <!-- Slider controls -->
                <button type="button" class="absolute top-0 left-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-prev>
                    <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/70 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                        <svg class="w-4 h-4 text-white dark:text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4"/>
                        </svg>
                        <span class="sr-only">Previous</span>
                    </span>
                </button>
                <button type="button" class="absolute top-0 right-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none" data-carousel-next>
                    <span class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/70 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
                        <svg class="w-4 h-4 text-white dark:text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 6 10">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4"/>
                        </svg>
                        <span class="sr-only">Next</span>
                    </span>
                </button>
            </div>

        </div>   

        <c:import url="popups/crearRutaAprendizaje.jsp">
            <c:param name="selected" value="Welcome to Page 1"/>
            <c:param name="x" value="python"/>
        </c:import> 
        

    </div>       

    <%@ include file="../../plantillas/footer.jsp" %>

    <script src="/js/cardsColor.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>
    <script src="/js/popup.js"></script>

</body>
</html>