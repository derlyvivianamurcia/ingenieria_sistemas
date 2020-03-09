<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="ProgramaIS.ViewsInicio.IniciarSesion" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../Estilos/ampleadmin/plugins/images/02.png">
    <title>Programa Ing. Sistemas</title>
    <!-- Bootstrap Core CSS -->
    <link href="../Estilos/ampleadmin/ampleadmin/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="../Estilos/ampleadmin/ampleadmin/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../Estilos/ampleadmin/ampleadmin/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="../Estilos/ampleadmin/ampleadmin/css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <section id="wrapper" class="new-login-register">
        <div class="lg-info-panel">
            <div class="inner-panel">
                <a href="javascript:void(0)" class="p-20 di">
                    <img src="../Estilos/ampleadmin/plugins/images/admin-logo.png"></a>
                <div class="lg-content">
                    <h2>PROGRAMA DE INGENIERÍA DE SISTEMAS</h2>
                    <p class="text-muted">Plataforma para la gestión de la información </p>
                </div>
            </div>
        </div>
        <div class="new-login-box">
            <div class="white-box">
                <h3 class="box-title m-b-0">Inicio de Sesión</h3>
                <small>Ingrese sus datos</small>

                <form runat="server">
                    <div class="form-group  m-t-20">
                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-lg-8 col-md-offset-2">
                                    <asp:Panel ID="Resultados" Visible="false" runat="server" CssClass="alert alert-danger">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                        <asp:Label ID="LResultado" runat="server" Text=""></asp:Label>
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group  m-t-20">
                        <div class="col-xs-12">
                            <asp:TextBox ID="Txt_Usuario" runat="server" CssClass="form-control" placeholder="Nombre de usuario" MaxLength="20"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group  m-t-20">
                        <div class="col-xs-12">
                            <asp:TextBox ID="Txt_Contra" runat="server" CssClass="form-control" TextMode="Password" placeholder="Nombre de usuario" MaxLength="20"></asp:TextBox>

                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="form-group text-center m-t-20">
                        <div class="col-md-12">
                            <asp:Button ID="PaginaInicio" runat="server" Text="Iniciar Sesion" CssClass="btn btn-success btn-rounded" OnClick="Ingresar_Click" />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Volver a Inicio" CssClass="btn btn-default btn-rounded" OnClick="PaginaInicio_Click" />

                        </div>
                    </div>


                </form>

            </div>
        </div>


    </section>
    <!-- jQuery -->
    <script src="../Estilos/ampleadmin/plugins/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../Estilos/ampleadmin/ampleadmin/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="../Estilos/ampleadmin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>

    <!--slimscroll JavaScript -->
    <script src="../Estilos/ampleadmin/ampleadmin/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../Estilos/ampleadmin/ampleadmin/js/waves.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="../Estilos/ampleadmin/ampleadmin/js/custom.min.js"></script>
    <!--Style Switcher -->
    <script src="../Estilos/ampleadmin/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>
</html>
