<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Plataforma/PrincipalWM.Master" AutoEventWireup="true" CodeBehind="Aspectos.aspx.cs" Inherits="ProgramaIS.Vistas.Aspectos.Aspectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
        <h4 class="page-title">Aspectos </h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
        <button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right m-l-20"><i class="ti-settings text-white"></i></button>
        <ol class="breadcrumb">
            <li><a href="../Plataforma/Menu.aspx">Menu</a></li>
            <li class="active">Aspectos</li>
        </ol>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="col-md-12">
                        <div class="panel panel-info">
                            <div class="panel-heading">Aspectos curriculares</div>
                            <div class="panel-wrapper collapse in" aria-expanded="true">
                                <div class="panel-body">
                                    <form action="#" class="form-horizontal form-bordered">
                                        <div class="form-body">
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Asunto</label>
                                                <div class="col-md-7">
                                                    <input type="text" placeholder="" class="form-control">
                                                </div>
                                            </div>
                                                   <div class="form-body">
                                            <div class="white-box">
                                                <input type="file" id="input-file-disable-remove" class="dropify" data-show-remove="false"><div class="dropify-preview">
                                                    <span class="dropify-render"></span>
                                                    <div class="dropify-infos">
                                                        <div class="dropify-infos-inner">
                                                            <p class="dropify-filename"><span class="file-icon"></span><span class="dropify-filename-inner"></span></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="control-label col-md-2">Comentarios</label>
                                                <div class="col-md-9">
                                                    <textarea class="form-control" rows="4" id="input7" required=""></textarea>

                                                </div>
                                            </div>
                                            
                                            
                                                </div>
                                           
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-30">
                                                    <div class="row">
                                                        <div class="col-md-offset-3 col-md-10">
                                                            <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Registrar</button>
                                                            <button type="button" class="btn btn-default">Cancelar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>

