<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Plataforma/PrincipalWM.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="ProgramaIS.Vistas.Usuarios.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
        <h4 class="page-title">Usuario</h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
        <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
        <ol class="breadcrumb">
            <li><a href="../Plataforma/Menu.aspx">Menu</a></li>
            <li class="active">Usuario</li>
        </ol>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div>
            <form>

                <div class="col-md-6">
                    <div class="white-box">
                        <h3 class="box-title m-b-0">Registrar Usuario</h3>
                        <p class="text-muted m-b-30 font-13">Datos Personales </p>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Número de Identificacion</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Username">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nombres</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Apellidos</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Telefono</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password">
                                </div>
                            
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="white-box">
                        <p class="text-muted m-b-30 font-13">Datos de Usuario </p>
                        <div class="row">
                            <div class="col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Correo</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Username">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nombre de Usuario</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Contraseña</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Confirmar Contraseña</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password">
                                </div>
                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Registrar</button>
                                <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
