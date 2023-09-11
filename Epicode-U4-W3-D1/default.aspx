<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Epicode_U4_W3_D1._default__" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body
    style="background: linear-gradient(356deg, rgba(28,255,95,1) 0%, rgba(202,255,107,1) 35%, rgba(19,249,106,1) 100%);"
    >
    <form id="form1" runat="server">
        <div>
            <!-- Logo -->
            <div class="row row-cols-1">
                <div>
                    <img id="logo" src="~/Content/Macchine/logo.png" class="mt-2 mx-auto d-block w-50" runat="server" />
                </div>
            </div>

            <!-- Macchina + Accessori -->
            <div>
                <div class="row row-cols-2 mt-3">
                    <!-- Immagine macchina -->
                    <div>
                        <asp:Image ID="CarImage" CssClass="mx-auto d-block my-5" Height="300px" runat="server" />
                    </div>
                    <!-- Lista checkbox -->
                    <div>            
                        <asp:CheckBoxList ID="Accessori" CssClass="mx-5 my-5" runat="server" RepeatDirection="Vertical" AutoPostBack="true">
                            <asp:ListItem Value="330"  Text=" 330🍄  Dispositivo anticaduta"></asp:ListItem>
                            <asp:ListItem Value="180"  Text=" 180🍄  Dispositivo di guida automatica"></asp:ListItem>                
                            <asp:ListItem Value="180" Text=" 180🍄 Giroscopio"></asp:ListItem>                
                            <asp:ListItem Value="200" Text=" 200🍄 Volante Nintendo Wii"></asp:ListItem>                
                            <asp:ListItem Value="155"  Text=" 155🍄  Doppio strumento"></asp:ListItem>                
                            <asp:ListItem Value="700"  Text=" 700🍄  Superfunghi incorporati"></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </div>
                <h2 id="nome" class="text-center" runat="server"> </h2>
            </div>

            <!-- Vetture + Garanzia -->            
            <div class="row row-cols-2 fs-4 m-5">
                <!-- Dropdown vetture -->
                <div >
                    <asp:DropDownList ID="CarsDropDownList" CssClass="m-auto d-block" runat="server" OnSelectedIndexChanged="CarsDropDownList_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem price="0" Value="sample.png" Text="Seleziona una vettura"></asp:ListItem>                        
                        <asp:ListItem price="300" Value="Standard.png" Text="300🍄 - Kart Standard"></asp:ListItem>
                        <asp:ListItem price="400" Value="FlameRunner.png" Text="400🍄 - Flame Runner"></asp:ListItem>
                        <asp:ListItem price="500" Value="WildWiggler.png" Text="500🍄 - Torcibruco"></asp:ListItem>
                        <asp:ListItem price="600" Value="SuperBlooper.png" Text="600🍄 - SuperBlooper"></asp:ListItem>
                        <asp:ListItem price="700" Value="Mushmellow.png" Text="700🍄 - Mushmellow"></asp:ListItem>                
                    </asp:DropDownList>
                </div>
                <!-- Dropdown Garanzia -->
                <div>
                    <asp:DropDownList ID="GaranziaDropDownList" CssClass="m-auto d-block"  runat="server" OnSelectedIndexChanged="CarsDropDownList_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Value="120" Text="120🍄 - 50 CC"></asp:ListItem>
                        <asp:ListItem Value="240" Text="240🍄 - 100 CC"></asp:ListItem>
                        <asp:ListItem Value="360" Text="360🍄 - 150 CC"></asp:ListItem>
                        <asp:ListItem Value="480" Text="480🍄 - Speculare"></asp:ListItem>
                        <asp:ListItem Value="600" Text="600🍄 - 200 CC"></asp:ListItem>                
                    </asp:DropDownList>
                </div>
            </div>
            
            <div class="row row-cols-1">
                <div class="text-center">
                    <asp:Button ID="Pulsante" CssClass="text-center btn btn-danger fs-4" runat="server" Text="Calcola" OnClick="Calcola" />
                </div>
            </div>

            <!-- Recap -->
            <div class="row row-cols-1">
                <div class="m-auto p-5">
                    <h3 id="prezzoVettura" class="" runat="server"></h3>
                    <h3 id="prezzoCilindrata" class="" runat="server"></h3>
                    <h3 id="prezzoAccessori" class="" runat="server"></h3>
                    <h3 id="prezzoTotale" class="" runat="server"></h3>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
