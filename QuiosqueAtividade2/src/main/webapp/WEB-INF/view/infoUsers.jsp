<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/infoUsers.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Informa??es do Usu?rio</title>
</head>
<body>
    <div class="principal">

        <header class="options">
         <a href="Cadastro"><nav>Novo Cadastro</nav></a>

          <a href="#"  class="selecionado"><nav>Informa??es do Usu?rio</nav></a> 

          <a href="Estatisticas"><nav>Estatist?ca</nav></a> 
        </header>

        <section class="content">

            <h2>Informa??es do Usu?rio</h2>

            <br>

            <section class="groupBox">
            
            <c:forEach items="${cliente}" var="client">
                <div class="boxUser">
                    <div class="btnEnomeUser">
                        <h3>Usu?rio: ${client.nome}</h3>

                        <div class="btn">
                            <a href="altCliente?id=${client.id}"><button class="btnInfo" id="btnAlterar">Alterar</button></a>
                            <a href="excluirCliente?id=${client.id}" onclick="return confirm('Deseja mesmo excluir o cliente ${client.nome}?')"><button class="btnInfo" id="btnAlterar">Excluir</button></a>
                        </div>

                    </div>

                    <div class="infoUser">

                        <div class="allEstUser">
                            <div class="boxEstUser">
                                <h5>G?nero</h5>

                                <p class="uInfo">${client.genero}</p>
                            </div>

                            <div class="boxEstUser">
                                <h5>Faixa Etaria</h5>
										<c:if test="${client.idade <= 18}">Jovem</c:if>
										<c:if test="${client.idade <= 50}">Adulto</c:if>
										<c:if test="${client.idade > 50}">Idoso</c:if>
                                <p class="uInfo"></p>
                            </div>
                        </div>

                    </div>

                </div>
                </c:forEach>
            </section>

        </section>
    
    </div>
</body>
</html>