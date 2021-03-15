<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RSVP.About" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Семинар</h1>
    <h2>Приглашаем на семинар</h2>
    <p>
        Напоминаем Вам, что если Вы планируете выступить с докладом, то презентация для
        доклада должна быть загружена до начала работы секции
    </p>
    <p><% DateTime dateTime = new DateTime(2021, 1, 1, 9, 0, 0); %>
        Начало регистрации <%=dateTime.ToString("MM/dd/yyyy HH:mm") %></p>
</asp:Content>
