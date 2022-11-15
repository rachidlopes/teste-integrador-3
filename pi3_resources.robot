*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${URL}            https://fernanda-carrijo-designer-stg.herokuapp.com/
${MENU}           //a[@href="/"]
${CONTATO}        //a[@href='/contato']
${Blog}           //a[@href='/blogs']
${Portifolio}     //a[@href='/portifolios']
${URLAdmin}       https://fernanda-carrijo-designer-stg.herokuapp.com/souFernanda
${email}          email
${senha}          password
*** Keywords ***
Abrir o navegador
    Open Browser     browser=chrome    
    Maximize Browser Window
Fechar o navegador
    Capture Page Screenshot
    Close Browser     
Acessar a home page do site Fernanda Carrijo Designer
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU} 
Verificar se carregou o menu superior
    Wait Until Element Is Visible    locator=${MENU}
    Capture Element Screenshot       locator=//nav[contains(@class,'navbar navbar-expand-md navbar-dark navbar-custom fixed-top')]

Clicar no botão home do menu
    Click Element                    locator=//a[@class='nav-link page-scroll'][contains(.,'Home (current)')]

Clicar no botão Contato do menu
    Click Element                    locator=${CONTATO} 
    Wait Until Element Is Visible    locator=//li[@class='address'][contains(.,'Entre em contato e tire suas dúvidas')]
    
Digitar o nome de contato "${NomeContato}" no campo de contato
    Input Text                       locator=nomeid2    text=${NomeContato}

Digitar o número de telefone "${Telefone}" no campo de telefone
    Input Text                       locator=telefoneid2    text=${Telefone}

Digitar uma mensagem ${Mensagem} no campo mensagem
    Input Text                       locator=mensagemid2    text=${Mensagem}
    Capture Element Screenshot       locator=//div[contains(@class,'col-lg-6')]

Clicar no botão Blog do menu
    Click Element                    locator=${Blog}
    Wait Until Element Is Visible    locator=//h4[contains(.,'Mundo do Design')]
Clicar no botão Portfólio do menu 
    Click Element                    locator=${Portifolio}
    Wait Until Element Is Visible    locator=//h2[@class='h2-heading'][contains(.,'Categorias')]
    Click Element                    locator=(//a[@href='portifolios/identidade'])[2]
    Capture Element Screenshot       locator=(//div[contains(.,'Dr. Moisés Deverso Pena Filho')])[7]
Verificar se carregou opçoes de redes sociais 
    Wait Until Element Is Visible    locator=(//i[contains(@class,'fab fa-instagram fa-stack-1x')])[1]
    Wait Until Element Is Visible    locator=(//i[contains(@class,'fab fa-linkedin-in fa-stack-1x')])[1]
    Capture Element Screenshot       locator=//span[contains(@class,'nav-item social-icons')]
    
Clicar no botão Instagram
    Title Should Be                  title=Fernanda Carrijo
    Click Element                    locator=(//i[@class='fab fa-instagram fa-stack-1x'])[1]
    Switch Window                    url=https://www.instagram.com/fcarrijo.design/
    Title Should Be                  title=FERNANDA CARRIJO (@fcarrijo.design) • Fotos e vídeos do Instagram  
    Wait Until Element Is Visible    locator=//h2[@class='_aacl _aacs _aact _aacx _aada'][contains(.,'fcarrijo.design')] 
    Capture Page Screenshot
    

Clicar no botão Linkedin
    Title Should Be                  title=Fernanda Carrijo
    Click Element                    locator=(//i[@class='fab fa-linkedin-in fa-stack-1x'])[1]
    Switch Window                    url=https://www.instagram.com/fcarrijo.design/
    Title Should Be                  title=Cadastre-se | LinkedIn 
    Wait Until Element Is Visible    locator=//nav[contains(.,'LinkedIn')]
    Capture Page Screenshot

Clicar no botão VLibras
    Click Element                    locator=//img[contains(@class,'access-button')]
    Wait Until Element Is Visible    timeout= 200    locator=//canvas[contains(@height,'360')]

Verificar se carregou o footer corretamente
    Wait Until Element Is Visible    locator=//div[@class='footer']
    Capture Element Screenshot       locator=//div[@class='footer']

Acessar a home page do site como Administrador
    Go To    url=${URLAdmin}
Digitar e-mail ${email} no campo e-mail
    Input Text                        locator=email       text=${email}  

Digitar senha ${senha} no campo senha
    Input Text                        locator=password    text=${senha} 
Clicar no botão Avançar
    Click Element                     locator=//button[contains(@type,'submit')]
    Wait Until Element Is Visible     timeout= 200        locator=//a[contains(.,'Admin')]  
    Capture Element Screenshot        locator=//a[contains(.,'Admin')]
