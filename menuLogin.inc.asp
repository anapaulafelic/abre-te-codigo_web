<div class="container">
  <nav class="navbar navbar-expand-lg nav-login">
    <a class="navbar-brand" href="jogar.asp">
      <img src="./src/images/logo-start.png" alt="stArt" class="logo">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#textoNavbar" aria-controls="textoNavbar" aria-expanded="false" aria-label="Alterna navegação">
      <span class="navbar-toggler-icon"></span>
    </button>
    <% If Lcase(Request.ServerVariables("SCRIPT_NAME"))<>"/login.asp" Then %>
    <div class="collapse navbar-collapse justify-content-end" id="textoNavbar">

      <span class="navbar-text pr-4">
        Bem-vinda Ana Paula!
      </span>

      <span class="navbar-text">
        Sair
      </span>
    </div>
    <% end if %>
  </nav>

</div>