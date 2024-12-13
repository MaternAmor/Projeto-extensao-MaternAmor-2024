# matern_amor

## Estrutura do Projeto

O projeto segue uma estrutura modularizada, com pastas para organização do código:

```

├── back-end/                          # Projeto back end em node nextJS
├── front-end/                         # Projeto front end em flutter web
|        ├── bindings/                 # Inicializadores do controllers
|        |       └── app_bindins.dart/ # Controllers
|        |
|        ├── components/               # Components UI
|        |       ├── bannerImage.component.dart/  # componente UI mostra imagem 200x100
|        |       ├── buttonNext.component.dart/   # componente UI botao simples clicavel customizavel
|        |       ├── buttonTypeA.component.dart/  # componente UI botao simples clicavel customizavel
|        |       ├── buttonTypeB.component.dart/  # componente UI botao simples clicavel customizavel
|        |       ├── buttonTypeC.component.dart/  # componente UI botao simples clicavel customizavel
|        |       ├── buttonTypeD.component.dart/  # componente UI botao simples clicavel customizavel
|        |       ├── carrousel.component.dart/              # componente UI mostra um carrossel de imagens
|        |       ├── component.dart/                        # Exporta os componentes
|        |       ├── customHeader.component.dart/           # componente mostra o cabeçalho
|        |       ├── displayAccountWithMessage.component.dart/  # componente mostra a mensagem de saudação
|        |       ├── fieldsAdress.dart/                         # componente mostra o endereço do usuario
|        |       ├── footer.component.dart/                     # componente mostra o rodapé
|        |       ├── header_onboarding.component.dart/          # componente cria elementos visuais
|        |       ├── header.component.dart/                     # componente mostra a logo
|        |       ├── headerPersonalizeTypeA.component.dart/     # componente personaliza o cabeçalho
|        |       ├── iconUserWidget.component.dart/             # componente mostra o icone do usuario
|        |       ├── indicador_de_pagina_home.component.dart/   # componente indica que pagina esta no carrossel
|        |       ├── indicador_de_pagina_onboarding.component.dart/  # componente mostra os conteiners
|        |       ├── indicadorPagina.component.dart/    #
|        |       ├── sectionTitle.component.dart/       #
|        |       ├── sectionTitleTypeA.component.dart/  #
|        |       ├── textfieldSection.component.dart/       #
|        |       └── YouTubeVideoPlayer.component.dart/     #
|        |
|        ├── messagesAlerts/           # Dialogs UI
|        |       ├── alerts.dart/       # Exibe notificações ao usuário
|        |       └── popupAlerts.dart/  # Exibe diálogos de alerta
|        |
|        ├── routes/                   # Rotas nomeadas com GETX
|        |       ├── pages.dart/        # Exporta arquivos de páginas do aplicativo
|        |       └── routes.dart/       # Define uma lista de rotas para navegação do aplicativo usando GetX
|        |
|        ├── services/                 # Comunicação com as APIs 
|        |       ├── getCurrentLocation.dart/  #
|        |       ├── masks.service.dart/       # Adiciona ou remove a máscara de um CEP brasileiro.
|        |       ├── truncate_text.service.dart/       # Adiciona um texto para um comprimento máximo especificado
|        |       └── user/                # 
|        |            ├── fetchUserProfile.service.dart/          # 
|        |            ├── getAdress.dart/                         # Busca dados de endereço via API e preenche campos de texto
|        |            └── updateAdress.dart/                      # Esse código envia uma requisição POST para atualizar dados de endereço em uma API
|        |
|        ├── ui/                       # Interface do usuário   
|        |       ├── about_donation/          #   
|        |       |    ├── view/                 # 
|        |       |    ├── doacaoLeiteMaterno.view/   #
|        |       |    ├── doacaoPotes.view.dart/     # 
|        |       |    ├── aboutDonation.controller.dart/    #
|        |       |    └── aboutDonation.page.dart/      #
|        |       |
|        |       ├── about_project/           #
|        |       |    ├── view/         #
|        |       |    |    └── aboutApp.view.dart/      #
|        |       |    ├── aboutApp.controller.dart      #
|        |       |    └── aboutApp.page.dart            #
|        |       |
|        |       ├── bottle_donation/         #
|        |       |    ├── view/               #
|        |       |    |    └── bottleDonation.view.dart/   #
|        |       |    ├── bottleDonation.controller.dart/        #
|        |       |    └── bottleDonation.page.dart/              #
|        |       |
|        |       ├── home/                    #
|        |       |    ├── view/               #
|        |       |    |    └── home.view.dart/          #
|        |       |    ├── home.controller.dart/         #
|        |       |    └──home.page.dart/               #
|        |       |
|        |       ├── login/                   # 
|        |       |    ├── view/                #
|        |       |    |    └── login.view.dart/     #
|        |       |    ├──login.controller.dart/    #
|        |       |    └──login.page.dart/          #
|        |       |
|        |       ├── onboarding/              #
|        |       |    ├── view/                #
|        |       |    |    ├── onboardingOne.view.dart/     #
|        |       |    |    ├── onboardingTwo.view.dart/     #
|        |       |    |    └── onboardingThree.view.dart/   #
|        |       |    ├──onboarding.controller.dart/    #
|        |       |    └──onboarding.page.dart/          #
|        |       |
|        |       ├── register/                #
|        |       |    ├── view/                #
|        |       |    |    └── register.view.dart/     #
|        |       |    ├──register.controller.dart/    #
|        |       |    └──register.page.dart/          #
|        |       |
|        |       ├── requestDonation/                #
|        |       |    ├── view/                #
|        |       |    |    └── requestDonationI.view.dart/     #
|        |       |    ├──requestDonationI.view.dart/    #
|        |       |    └──requestDonation.page.dart/          #
|        |       |
|        |       ├── settings/                #
|        |       |    ├── view/                #
|        |       |    |    └── settings.view.dart/     #
|        |       |    ├──settings.view.dart/    #
|        |       |    └──settings.page.dart/          #
|        |       |
|        |       └── splash_screen/           #
|        |            ├── view/                #
|        |            |    └── SplashScreen.view.dart/     #
|        |            └──SplashScreen.page.dart/          #
|        |       
|        └── main.dart/                       # Configura o aplicativo
|        
├── docs/                              # Documentos,Fluxogramas              
└── README.md                          # Especificações do projeto
```