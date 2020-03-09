<%@ Page Title="" Language="C#" MasterPageFile="~/ViewsInicio/Principal.Master" AutoEventWireup="true" CodeBehind="Inicial.aspx.cs" Inherits="ProgramaIS.ViewsInicio.Inicial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section id="main-slider" class="no-margin">
    <div class="carousel slide">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(../Estilos/Company/images/udla.png)">
          <div class="container">
            <div class="row slide-margin">
              <div class="col-sm-6">
                 <div class="carousel-content">
                  <h2 class="animation animated-item-1">PROGRAMA INGENIERÍA DE SISTEMAS </h2><h3><span style="color:black">Universidad de la Amazonia</span></h3>
                  <p class="animation animated-item-2">Somos un programa con 20 años de servicio a la comunidad universitaria...</p>
                </div>
              </div>

              <div class="col-sm-6 hidden-xs animation animated-item-4">
                <div class="slider-img">
<%--                  <img src="../Estilos/Company/images/Captura.png" class="img-responsive">--%>
                </div>
              </div>

            </div>
          </div>
        </div>
        <!--/.item-->
      </div>
      <!--/.carousel-inner-->
    </div>
    <!--/.carousel-->
  </section>
  <!--/#main-slider-->

      <div class="feature">
    <div class="container">
      <div class="text-center">
        <div class="col-md-3">
          <div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <i class="fa fa-user"></i>
            <h2>TÍTULO QUE OTORGA</h2>
            <p>Ingeniero de Sistemas</p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <i class="fa fa-user"></i>
            <h2>MODALIDAD</h2>
            <p>Presencial</p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
            <i class="fa fa-heart-o"></i>
            <h2>DURACIÓN</h2>
            <p>10 Semestres</p>
          </div>
        </div>
        <div class="col-md-3">
          <div class="hi-icon-wrap hi-icon-effect wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
            <i class="fa fa-cloud"></i>
            <h2>CRÉDITOS ACADÉMICOS</h2>
            <p>160</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="about">
    <div class="container">
      <div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
        <h2>PERFIL PROFESIONAL</h2>
        <img src="../Estilos/Company/images/02.png" class="img-responsive" />
          <p>
              La carrera profesional de Ingeniería de Sistemas, es multidisciplinaria, permitiendo a los egresados el acceso
             a diversos sectores ocupacionales, ya que este, combina en forma efectiva la aplicación de sus conocimientos en varias disciplinas, utilizando además los nuevos enfoques de análisis tales como: modelos, sistemas, investigación operacional, computacional, informática, entre otros, a la solución de problemas que envuelven relaciones complejas, entre diversos componentes.
          </p>
          <p>
              El egresado debe, frente a un sistema, estar en capacidad de discernir los requerimientos,
                elaborar abstracciones soportadas en conceptos de ciencias básicas y de ingeniería,
                analizarlos y diseñarlos a la escala de mayor detalle, ajustarlo, adaptarlo, corregirlo, optimizarlo o construirlo si es necesario, auditarlo, diseñar y ejecutar pruebas, posibilitar la integración con otros sistemas o entre subsistemas, operarlo y mantenerlo, reemplazarlo y determinar su vida útil. Debe además, tener autonomía para dirigir su desarrollo personal y una actitud de compromiso hacia la sociedad que lo circunda.
          </p>
      </div>

        <div class="col-md-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <h2>PERFIL OCUPACIONAL</h2>
            <p>
                Dado el proceso de integración y globalización, el papel del INGENIERO DE SISTEMAS se torna más importante a través de la interacción multidisciplinaria, derivada de las necesidades de las empresas de hoy de mantenerse constantemente informadas para optimizar la toma de decisiones.
            <p>
                La tecnología de información es esencial para competir en esta era, ya que integra a la gran variedad de elementos y habilidades utilizadas en la creación, almacenamiento y distribución de información, cumpliendo con su propósito de resolver problemas, liberar la creatividad e incrementar la productividad en el personal.
                El ambiente actual de negocios es muy competitivo, razón por la cual se requiere contar con información oportuna y actualizada, que represente a la empresa. Es necesario contar con la tecnología de información necesaria para aprovechar la información, y administrarla, para apoyar el manejo eficiente y competitivo de la organización.
            </p>
            <p>
              Este profesional podrá desempeñarse tanto en empresas públicas como privadas en puestos como programador de computadoras implementando sistemas de información, analista de sistemas
            </p>
             <img src="../Estilos/Company/images/3.jpg" class="img-responsive" />
        </div>
    </div>
  </div>


</asp:Content>
