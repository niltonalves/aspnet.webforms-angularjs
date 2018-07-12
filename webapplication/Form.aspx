<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="webapplication.Form" MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="HeadContent" ID="headContent" runat="server">
    <script src="client/app.js"></script>
    <script src="client/controller.js"></script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-app="demoApp" ng-controller="mainController">
        <ng-form name="formCadastro" novalidate>
            <h3>Formulário válido: {{formCadastro.$invalid ? 'Não' : 'Sim' }}</h3>

            <div class="form-group">
                <label for="inputNome">Nome</label>
                <input type="text" ng-model="nome" name="nome" class="form-control" id="inputNome" placeholder="Nome" required>
                <small class="text-danger p-2" ng-messages="formCadastro.nome.$error" ng-show="formCadastro.nome.$dirty">
                    <span ng-message="required">Digite seu nome</span>
                </small>
            </div>
            <div class="form-group">
                <label for="inputEmail">E-mail</label>
                <input type="email" ng-model="email" name="email" class="form-control" id="inputEmail" placeholder="E-mail" required>
                <small class="text-danger p-2" ng-messages="formCadastro.email.$error" ng-show="formCadastro.email.$dirty">
                    <span ng-message="required">Digite seu e-mail</span>
                    <span ng-message="email">E-mail incorreto.</span>
                </small>
            </div>
            <button type="button" class="btn btn-primary" ng-disabled="formCadastro.$invalid" ng-click="Salvar(formCadastro)">Salvar</button>
        </ng-form>
    </div>
</asp:Content>