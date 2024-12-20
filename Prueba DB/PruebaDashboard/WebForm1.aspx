<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prueba_DB.PruebaDashboard.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        /* Estilo moderno para el botón */
        .btn-modern {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-modern:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 50px;">
        <!-- Botón para mostrar la notificación -->
        <asp:Button ID="btnNotificar" runat="server" Text="Mostrar Notificación" CssClass="btn-modern" 
                    OnClientClick="mostrarNotificacion(); return false;" />
        <!-- Botón oculto para manejar la acción en el backend -->
        <asp:Button ID="btnConfirmar" runat="server" Style="display:none;" OnClick="btnConfirmar_Click" />
    </div>
    </form>
    
<script>
    // Función para mostrar la notificación con SweetAlert2
    function mostrarNotificacion() {
        Swal.fire({
            title: '¿Deseas continuar?',
            text: "Esta acción será registrada.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Sí, continuar',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                // Llama al backend activando el botón oculto
                document.getElementById('<%= btnConfirmar.ClientID %>').click();
            }
        });
    }
</script>
</body>
</html>
