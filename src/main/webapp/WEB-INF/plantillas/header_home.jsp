<link rel="stylesheet" href="/css/plantillas/header_home.css">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<header>
    <div class="logo row-flex center-x">
      <img src="/img/gdo-img.png" alt="Imagen del logo" width="35" />
      <a href="/" class="logo">GDO</a>
    </div>

    <div class="navigation">
      <ul class="menu row-flex center-x">
        <div class="close-btn"></div>
        <li class="menu-item"><a href="#gdo">¿Por qué Gdo?</a></li>
        <li class="menu-item">
          <a class="sub-btn" href="#">Acerca<i class="fas fa-angle-down ml-2"></i></a>
          <ul class="sub-menu">
            <li class="sub-item"><a href="/about">¿Qué es Gdo?</a></li>
            <!-- <li class="sub-item"><a href="#">Sub Item 02</a></li> -->
            <li class="sub-item"><a href="/faq">FAQ</a></li>
          </ul>
        </li>
        
        <li class="menu-item">
          <a class="sub-btn" href="#">Contenido<i class="fas fa-angle-down ml-2"></i></a>
          <ul class="sub-menu">
            <li class="sub-item"><a href="/cursos">Cursos</a></li>
          </ul>
        </li>

        <li class="menu-item"><a href="#">Preguntas frecuentes</a></li>
        <div class="row-flex btns-log-up ">
          <c:choose>
            <c:when test="${usuario != null}">
              <li class="menu-item btn-a"><a href="/logout">LogOut</a></li>
            </c:when>
            <c:otherwise>
              <li class="menu-item"><a href="/user/new">Sign Up</a></li>
              <li class="menu-item btn-a"><a href="/login">Login</a></li>
            </c:otherwise>
        </c:choose>

        </div>

      </ul>

    </div>
    <div class="menu-btn"></div>
  </header>