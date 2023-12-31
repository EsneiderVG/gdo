<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>GDO - Guide for DevOps</title>
  <link rel="icon" href="/img/gdo-img.png">
  <link rel="stylesheet" href="/css/home/main.css">
  <script src="https://kit.fontawesome.com/15c45fe034.js" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" charset="utf-8"></script>
  <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
 
<%@ include file="plantillas/header_home.jsp" %>

  <main class="container mx-auto">
    <!-- first bloque -->
    <div class="box-container mg-bt-20">
      <div class="row-flex gp-50 justify-center">
        <div class="box-item w-xx">
          <h1 class="title-xxl">
            Construye Tu Mañana Hoy y Aprende sin Límites.
          </h1>
          <p>
            Descubre todos los cursos y rutas de aprendizaje que tenemos para ti solo con un click
          </p> 
          <c:choose>
            <c:when test="${usuario != null}">
              <form action="/cursos">
                <button>Ver RoadMaps!</button>
              </form>
            </c:when>
            <c:otherwise>
              <form action="/user/new">
                <button>Registrate!</button>
              </form>
            </c:otherwise>
          </c:choose>
        </div>
        <div class="box-item circle-bck">
          <img src="img/img1.svg" alt="current" />
        </div>
      </div>
    </div>

    <!-- <div class="box-container pd-20 mg-bt-60">
      <div class="row-flex gp-50">
        <div class="box-item">
          <h1 class="porcent-text-card">3</h1>
          <span class="sub-text-porcent">De cada 10 personas</span>
          <p>
            Quieren empezar en el mundo TI y no saben como.
          </p>
        </div>
        <div class="box-item">
          <h1 class="porcent-text-card">0</h1>
          <span class="sub-text-porcent">Costos</span>
          <p>
            Gdo es un aplicativo sin animo de lucro en el cual puedes aprender sobre el mundo TI.
          </p>
        </div>
        <div class="box-item">
          <h1 class="porcent-text-card">30</h1>
          <span class="sub-text-porcent">Costs</span>
          <p>
            Discover data across your contract ecosystem to drive savings and
            reduce risk through Terzo AI
          </p>
        </div>
      </div>
    </div> -->

    <div class="cont-sep row-flex-sep justify-center gp-20">
      <div class="separeted-circle"></div>
      <div class="separeted"></div>
    </div>

    <!-- <div class="box-container  mg-bt-60">
      <div class="col-flex">
        <div class="box-item w-100" style="text-align: center">
          <h1 class="title-xxl">
            Contract Intelligence to drive financial performance
          </h1>
          <div class="img-back-card">
            <img class="img-col" src="img/home-dashboard.jpg" alt="home-dashboard" />
          </div>
          <div class="move-up-card">
            <p class="fnt-18">
              Terzo helps leaders track every dollar coming in and going out
              of the organization
            </p>
            <button>See a Demo!</button>
          </div>
        </div>
      </div>
    </div> -->

    <div class="box-container mg-bt-20" id="gdo">
      <div class="row-flex gp-50 justify-space">
        <div class="box-item w-xx">
          <h1 class="title-xxl">
            ¿Qué es GDO?
          </h1>
          <p>
            GDO es una aplicación web de enseñanza sin ánimo de lucro para todo aquel que quiera introducirse en el mundo de la programación pero no saben por dónde empezar.
            <br><br>
            Encontrarás una guía clara para aprender diversos temas de la programación; facilitando el acceso a la información y la documentación de este emocionante campo digital.
          </p>
          <form action="/about">
            <button>ver más</button>
          </form>
        </div>
        <div class="box-item circle-bck">
          <img src="img/intake.jpg" alt="Contability" />
        </div>
      </div>
    </div>
    <div class="box-container mg-bt-20">
      <div class="row-flex gp-50 justify-space">
        <div class="box-item circle-bck">
          <img src="img/visualize.jpg" alt="Contability" />
        </div>
        <div class="box-item w-xx">
          <h1 class="title-xxl">
            Futuro y Sostenibilidad
          </h1>
          <p>
            Sabemos que el mundo está en constante evolución, por lo que no nos quedaremos atrás y junto a nuestros estudiantes estamos encaminados hacia el futuro. Las rutas de educación estarán en constante actualización así como la creación de nuevas rutas.
            <br><br>
            No tenemos ánimo de lucro, aceptamos donaciones para mantener el proyecto. Si nos quieres apoyar enviar un correo a elmejorproyecto@gmail.com :D
          </p>
          <form action="/faq">
            <button>preguntas frecuentes</button>
          </form>
        </div>

      </div>
    </div>

    <div class="cont-sep row-flex-sep justify-center gp-20">
      <div class="separeted-circle"></div>
      <div class="separeted"></div>
    </div>



    <div class="box-container mg-bt-60 mg-tp-60">
      <div class="msg-end col-flex gp-50 justify-center center-x">
        <img src="/img/gdo-img.png" alt="terzo" width="105" />
        <h2 class="title-xxl">
          Construye Tu Mañana Hoy y Aprende sin Límites
        </h2>
        <!-- <button>Book a demo</button> -->
      </div>

    </div>
  </main>

  <%@ include file="plantillas/footer.jsp" %>
  
  <script src="https://cdn.jsdelivr.net/npm/less"></script>
  <script src="js/header.js"></script>
</body>

</html>