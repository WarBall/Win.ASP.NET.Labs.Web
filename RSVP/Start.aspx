<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="RSVP.Start" MasterPageFile="~/Site.Master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="rek">
            <h1>Приглашение на семинар <asp:ScriptManager ID="ScriptManager1" runat="server" /></h1>
            <p>Вы приглошены на семинар</p>
            <p>Подтвердите свое согласие, пройдя регистрацию</p>
        </div>
        <div class="info">
            Семинар состоится 1 января 2022 года в 7.30          
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <%--<Triggers>
                    <asp:AsyncPostBackTrigger ControlID="timer1" />
                </Triggers>--%>
                <ContentTemplate> 
                    <asp:Timer ID="timer1" runat="server" Interval="1000" />
                    <%
                        DateTime dataseminar = new DateTime(DateTime.Now.Year+1, 1, 1, 7, 30, 0);
                        DateTime dnow = DateTime.Now;
                        int rd = (dataseminar - dnow).Days;
                        int rm = (dataseminar - dnow).Minutes;
                        int rsec = (dataseminar - dnow).Seconds;
                    %>
                    <h3>До семинара осталось <%=rd.ToString()%> дн., <%=rm.ToString()%> мин. и <%=rsec.ToString()%> с.</h3>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>


