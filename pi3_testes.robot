*** Settings ***
Resource          pi3_resources.robot
Test Setup        Abrir o navegador
Test teardown     Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Verificar a existencia do menu superior na página.
    [Documentation]    Esse teste verfica o menu superior da home
    [Tags]             menus pagina
    Acessar a home page do site Fernanda Carrijo Designer
    Verificar se carregou o menu superior
Caso de Teste 02 - Acessar a Home no menu.
    [Documentation]    Esse teste verfica o acesso a Home do Menu
    [Tags]              acessar_home Botoes
    Acessar a home page do site Fernanda Carrijo Designer
    Clicar no botão home do menu

Caso de Teste 03 - Acessar o Contato no menu.
    [Documentation]    Esse teste verfica o acesso a Contato do Menu
    [Tags]              acessar_menu Botoes
    Acessar a home page do site Fernanda Carrijo Designer
    Clicar no botão Contato do menu
    Digitar o nome de contato "Luis Inacio da Silva" no campo de contato
    Digitar o número de telefone "13 91313-1313" no campo de Telefone
    Digitar uma mensagem "Gostaria de um orçamento para campanha eleitoral 2022" no campo mensagem

Caso de Teste 04 - Acessar o Blog no menu.
    [Documentation]    Esse teste verfica o acesso a Blog do Menu
    [Tags]              acessar_blog Botoes
    Acessar a home page do site Fernanda Carrijo Designer
    Clicar no botão Blog do menu
Caso de Teste 05 - Acessar o Portfólio no menu.
    [Documentation]    Esse teste verfica o acesso a Blog do Menu
    [Tags]              acessar_portfolio Botoes
    Acessar a home page do site Fernanda Carrijo Designer
    Clicar no botão Portfólio do menu
Caso de Teste 06 - Verificar a existencia do Botoes das redes sociais no menu.
    [Documentation]    Esse teste verfica os botões das redes sociais
    [Tags]              acessar_botoes Botoes
    Acessar a home page do site Fernanda Carrijo Designer
    Verificar se carregou opçoes de redes sociais

Caso de Teste 07 - Acessar as redes sociais (Instagram).
    [Documentation]    Esse teste acessa as redes sociais
    [Tags]              acessar_sociais_Instagram Botoes
    Acessar a home page do site Fernanda Carrijo Designer
    Clicar no botão Instagram
    Get Selenium Implicit Wait

Caso de Teste 08 - Acessar as redes sociais (Linkedin).
    [Documentation]    Esse teste acessa as redes sociais
    [Tags]              acessar_sociais_Linkedin Botoes
    Acessar a home page do site Fernanda Carrijo Designer
    Clicar no botão Linkedin
    Get Selenium Implicit Wait

Caso de Teste 09 - Testar se no footer tem as informações necessárias
    [Documentation]    Esse teste verfica as informações do footer
    [Tags]              acessar_footer Footer
    Acessar a home page do site Fernanda Carrijo Designer
    Verificar se carregou o footer corretamente

Caso de Teste 10 - Testar se o VLibras funciona
    [Documentation]    Esse teste acessa as VLibras
    [Tags]              acessar_vlibras VLibras
    Acessar a home page do site Fernanda Carrijo Designer
    Clicar no botão VLibras

Caso de Teste 11 - Acessar a pagina como Admin
    [Documentation]    Esse teste acessa a pagina como administrador
    [Tags]              acessar_admin Administrador
    Acessar a home page do site como Administrador
    Digitar e-mail 2007965@aluno.univesp.br no campo e-mail
    Digitar senha Tn7mD6ENxfgZZNz no campo senha
    Clicar no botão Avançar