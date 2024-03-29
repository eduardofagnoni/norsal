<%

'Para os registros vindos da base de dados atribuir i sufixo da linguagem
if Session("linguagem") = "_en" then
    sufixo_lang = "_eng"
else
    sufixo_lang = ""
end if
' //Para os registros vindos da base de dados atribuir i sufixo da linguagem



Function traduzir(ByVal strHTML)
    if Session("linguagem") = "_en" then
        traduzir = Split(Eval(strHTML)," | ")(1)
    else
        traduzir = Split(Eval(strHTML)," | ")(0)
    end if
end function

'************************************************
'itens do menu e footer
'**********************************************//
linkHome  = "Home | Home"
linkANorsal = "A Norsal | The Norsal"
linkProducao = "Produção | Production"
linkProdutos = "Produtos | Products"
linkMarcas = "Marcas | Brands"
linkResponsabilidade = "Responsabilidade | Responsibility"
linkFaleConosco = "Fale com a gente | Talk to us"
linkNovidades = "Blog | Blog"
linkConsumidor = "Consumidor | Consumer"
linkIndustria = "Indústria | Industry"
linkPecuaria = "Pecuária | livestock"
linkSalLebre = "Sal Lebre | Sal Lebre"
linkMiramar = "Miramar | Miramar"
linkNorsal = "Norsal | Norsal"
linkAlmirante = "Almirante | Almirante"
linkPiramide = "Pirâmide | Pirâmide"
txtNossosProdutos = "Nossos produtos | Our products"
txtNossasMarcas = "Nossas marcas | Our Brands"

txtHome = "Home | Home"
txtANorsal = "A Norsal | The Norsal"
txtProdutos = "Produtos | Products"
txtResponsabilidade = "Responsabilidade | Responsibility"
txtFaleConosco = "Fale com a gente | Talk to us"
linkOSal = "O Sal | The salt"
linkMuitoAlemDoSal = "Muito além do sal | Far beyond salt"
linkCertificacoes = "Certificações | Certifications"
linkConhecaANorsal = "Conheça a Norsal | Know the Norsal"
linkManifesto = "Manifesto | Manifest"
linkLinhaDoTempo = "Linha do Tempo | Timeline"
linkASalinaMiramar = "A Salina Miramar | The Salina Miramar"
linkNossasMarcas = "Nossas marcas | Our Brands"
linkDistribuicaoNorsal = "Distribuição Norsal | Norsal distribution"
linkNossosProjetos = "Nossos Projetos | Our Projects"
linkEntreEmContato = "Entre em contato | Contact"
linkEnderecosETelefones = "Endereços e telefones | Addresses and telephones"


'************************************************
'genericos
'**********************************************//
txtBotaoSaibaMais = " Saiba mais | know more"
txtBotaoConhecaProducao = " Conheça nossa produção | Know our production"
txtBotaoConhecaProjetos = " Conheça nossos projetos | Get to know our projects"
txtBotaoConhecaProdutos = " Conheça os produtos | Know the products" 
txtBotaoConhecaDistribuicao = " Conheça nossa distribuição | Know our distribution"
txtBotaoCliqueEFaleComAGente = "Clique aqui e fale conosco | Click here and talk to us"
txtBotaoCadastrar = "Cadastrar | Register"
txtInputNome = "Nome | Name"
txtInputEmail = "E-mail | E-mail"
txtConsumidor = "Consumidor | Consumer"
txtIndustria = "Indústria | Industry"
txtPecuaria = "Pecuária | livestock"
txtBotaoSaibaMaisSobreProducao = " Saiba mais sobre nossa produção | Learn more about our production"
txtBotaoConfiraNossaCertificacao = " Confira nossa certificação | Check our certification"
txtConhecaNossaSalina = " Conheça nossa salina | Get to know our saline"

'************************************************
'Barra - Fale com a gente
'**********************************************//
txtTitFaleComAGente = "FALE COM A GENTE. | TALK TO US"
txtApoioFaleComAGente = "Quer ser nosso cliente? Entre já em contato conosco. <br>Aproveite para deixar sugestões e tirar dúvidas. | Do you want to be our customer? Contact us now. <br>Enjoy to leave suggestions and take questions."

'************************************************
'Barra - News Cadastre-se
'**********************************************//
txtTitCadastrese = "CADASTRE-SE | REGISTER"
txtApoioCadastrese = "e receba mais informações e novidades. | and get more information and news."




'*********************************************************************************************
'*********************************************************************************************
'******    
'******        HOME
'******
'******
'*********************************************************************************************
'*********************************************************************************************

'************************************************
'banner home
'**********************************************//
txtBannerHome = "A número 1 <br>em vendas de <br>sal no Brasil. | The number 1 in <br>sales of salt <br>in Brazil."
txtBannerHomeLinha2 = "Com a linha de sal refinado mais diversificada do mercado. | With the most diversified line of the market."
txtBotaoBannerHome = "Conheça a Norsal | Know the Norsal"

'************************************************
'section 1 home
'**********************************************//
txtDestaqueSection1Home = "5 MARCAS E UM PORTFÓLIO COMPLETO. | "
txtApoioSection1Home = "Somos os maiores especialistas em sal e estamos no dia a dia de milhões de brasileiros. Nossas marcas atendem os mais variados setores do mercado e fazem sucesso nos quatro cantos do Brasil. | "
txtBotaoSection1Home = "Conheça nossas marcas | "

'************************************************
'section Features Home
'**********************************************//
txtFeaturesHomeTit1 = "CUIDADO E DEDICAÇÃO NA PRODUÇÃO DE CADA CRISTAL DE SAL. | "
txtFeaturesHomeRes1 = "Nosso processo de fabricação é feito de forma rigorosa, em várias etapas, assegurando as características originais do sal. Um padrão de excelência que só a Norsal oferece. | "
txtFeaturesHomeTit2 = "QUALIDADE É NOSSA PRIORIDADE. | "
txtFeaturesHomeRes2 = "Somos referência na produção e distribuição de sal. A primeira salineira, no Brasil, a conquistar o selo ISO 22000, com qualidade reconhecida internacionalmente. | "
txtFeaturesHomeTit3 = "UMA DAS MAIORES SALINAS DA AMÉRICA LATINA. | "
txtFeaturesHomeRes3 = "No nosso caso, tamanho faz toda a diferença. A salina Miramar fica em Areia Branca, Rio Grande do Norte, e produz centenas de milhares de toneladas de sal, por ano. | "

'************************************************
'section 2 home
'**********************************************//
txtDestaqueSection2Home = "Segmentos | "
txtApoioSection2Home = "A NORSAL está presente em todos os lugares. Desde entregas a food service, varejo, atacado, até os mais diversos tipos de indústrias. | "

'************************************************
'section 3 home
'**********************************************//
txtTitFeature1Sec3Home = "360 MIL TONELADAS DE SAL POR ANO. | "
txtResFeature1Sec3Home = "Temos uma salina com uma grande capacidade de produção, que nos permite distribuir o portfólio mais variado de produtos, para os nossos consumidores. | "
txtTitFeature2Sec3Home = "COMPROMISSO COM A NATUREZA. | "
txtResFeature2Sec3Home = "Nosso cuidado vai muito além do sal. <br>Além de um processo de produção totalmente natural, desenvolvemos diversos programas socioambientais. | "
txtTitFeature3Sec3Home = "DISTRIBUIÇÃO PARA TODO O BRASIL. | "
txtResFeature3Sec3Home = "Estamos presentes nos quatro cantos do Brasil. Utilizamos malhas rodoviárias, ferroviárias, além de serviços marítimos de cabotagem em transporte de containers, para que você receba os nossos produtos onde quer que esteja. | "



'*********************************************************************************************
'*********************************************************************************************
'******    
'******        A NORSAL
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoANorsal = "QUATRO DÉCADAS <br>DE TRADIÇÃO E <br>EXPERTISE. | "
txtTopoANorsalApoio = "Com uma história de muito trabalho e dedicação, a Norsal tornou-se uma das maiores produtoras de sal do Brasil. A única presente em todos os estados brasileiros, com um portfólio amplo e uma estrutura única. | "

txtSection1ANorsalTit1 = "<span>360</span>mil | "
txtSection1ANorsalTit2 = "+de<span>600</span> | "
txtSection1ANorsalTit3 = "<span>1.620</span> | "
txtSection1ANorsalRes1 = "Toneladas de <br>sal, por ano. | "
txtSection1ANorsalRes2 = "Colaboradores. | "
txtSection1ANorsalRes3 = "Hectares <br>de salinas | "

txtSection2ANorsalTit = "Nossa receita de sucesso. | "
txtSection2ANorsalApoio = "Há mais de 40 anos, a Norsal é referência em alimentação humana, com os mais altos padrões de qualidade, produtividade, sustentabilidade e segurança. Os produtos Norsal também são voltados para diversas aplicações, desde práticas industriais até a nutrição de animais. | "

txtSection3ANorsalTit = "Nossa história | "

txtLinhaDoTempoANorsalAno1 = "1973 | "
txtLinhaDoTempoANorsalTit1 = "Fundação da Empresa. | "
txtLinhaDoTempoANorsalTexto1 = "Nasce a Norsal, a produtora de sal mais inovadora do segmento. Em sua fundação, a empresa já contava com um extenso time de especialistas e a única salina no Brasil projetada com tecnologia francesa. | "

txtLinhaDoTempoANorsalAno2 = "1994 | "
txtLinhaDoTempoANorsalTit2 = "A Primeira Refinaria. | "
txtLinhaDoTempoANorsalTexto2 = "A Norsal dá o seu primeiro grande passo. Inicia a produção de sua refinaria número 1, com uma dimensão, até então, inédita no nordeste Brasileiro. | "

txtLinhaDoTempoANorsalAno3 = "1995 | "
txtLinhaDoTempoANorsalTit3 = "A produção do Sal Lebre. | "
txtLinhaDoTempoANorsalTexto3 = "Inicia a fabricação do Sal Lebre. A marca que, hoje, tem a maior variedade de sais do mercado e que carrega o padrão Norsal de excelência. | "

txtLinhaDoTempoANorsalAno4 = "1998 | "
txtLinhaDoTempoANorsalTit4 = "A Segunda Refinaria. | "
txtLinhaDoTempoANorsalTexto4 = "Após um intenso crescimento, a Norsal inaugura sua segunda refinaria, com a função de produzir e distribuir o melhor sal, para todo território nacional. | "

txtLinhaDoTempoANorsalAno5 = "2007 | "
txtLinhaDoTempoANorsalTit5 = "A Terceira Refinaria. | "
txtLinhaDoTempoANorsalTexto5 = "Anos após a inauguração de sua segunda refinaria, o complexo Miramar inicia a produção de sua terceira refinaria, com um altíssimo avanço na tecnologia de seus processos e maquinários. | "

txtLinhaDoTempoANorsalAno6 = "2011 | "
txtLinhaDoTempoANorsalTit6 = "Prêmio Construindo a Nação. | "
txtLinhaDoTempoANorsalTexto6 = "A escola Norsal, fundada em 1994, em parceria com o serviço social e da Indústria, inicia seus projetos pedagógicos, conquistando o 1° lugar no Prêmio Construindo a Nação. | "

txtLinhaDoTempoANorsalAno7 = "2012 | "
txtLinhaDoTempoANorsalTit7 = "Certificação APPCC. | "
txtLinhaDoTempoANorsalTexto7 = "Torna-se a primeira salineira certificada pela APPCC, que assegura o alto nível de qualidade no processo produtivo, condecorando empresas que evitam qualquer tipo de risco aos consumidores. | "

txtLinhaDoTempoANorsalAno8 = "2013 | "
txtLinhaDoTempoANorsalTit8 = "Certificação ISO 9001. | "
txtLinhaDoTempoANorsalTexto8 = "Conquista a certificação ISO 9001 e torna-se a primeira empresa do setor, com certificação para todo seu processo. | "

txtLinhaDoTempoANorsalAno9 = "2014 | "
txtLinhaDoTempoANorsalTit9 = "1° lugar no “Prêmio Construindo a Nação”, pela segunda vez. | "
txtLinhaDoTempoANorsalTexto9 = "A escola Norsal é condecorada mais uma vez pelo Prêmio Construindo a Nação, após formar diversos alunos. | "

txtLinhaDoTempoANorsalAno10 = "2018 | "
txtLinhaDoTempoANorsalTit10 = "Certificação ISO 22000. | "
txtLinhaDoTempoANorsalTexto10 = "Com muito orgulho, a Norsal torna-se a única do segmento salineiro a ser certificada pelo ISO 22000, que atesta o alto comprometimento com a segurança alimentar. | "

txtSection4ANorsalTit = "A Salina Miramar. | "
txtSection4ANorsalApoio = "Uma das maiores da América Latina. | "
txtSection4ANorsalTexto = "<p>Localizada em Areia Branca, Rio Grande do Norte, a salina Miramar tem um volume de produção surpreendente e é a fonte de todos os produtos distribuídos pela Norsal.</p><p>Com 1.620 hectares, ela foi projetada e construída com tecnologia francesa, e está entre as mais modernas do mundo. Não é à toa que a Norsal é uma das gigantes em manufatura de sal refinado e moído.</p> | "

txtSection5ANorsalTit = "O SAL COM O MAIOR <br>TEOR DE RECONHECIMENTO. | "
txtSection5ANorsalTexto = "<strong>A Norsal é a primeira salineira do Brasil a conquistar a certificação ISO 22000 para sal refinado.</strong> <br>Um código de normas internacionais, criado em 2005, que atesta o alto padrão de gestão da segurança alimentar. <br> Tal regulamento, visa controlar os chamados 'pontos críticos de controle', com a finalidade de evitar a contaminação do produto e garantir a segurança do consumidor. Além disso, assegura a alta qualidade da cadeia de produção do alimento. <br>Prova de que o compromisso pelo bem-estar dos consumidores deve estar sempre em primeiro lugar. | "

txtSection6ANorsalTit = "A MARCA QUE ESTÁ NOS 4 CANTOS DO BRASIL | "
txtSection6ANorsalTexto = "A Norsal é a única empresa que distribui para todos os estados brasileiros. Sua sede administrativa está localizada em São Paulo, com centros de abastecimento nos estados de São Paulo, Rio de Janeiro, Santa Catarina, Rio Grande do Sul e Amazonas. | "
txtSection6ANorsalSubTit = "Norsal a bordo | "
txtSection6ANorsalTexto2 = "Nossa preocupação não está apenas na fabricação do sal. O transporte dos produtos Norsal é feito, em grande parte, através da cabotagem. Além do enorme alcance, tal processo substitui, anualmente, o uso de pelo menos 6.000 carretas nas rodovias brasileiras, reduzindo de forma considerável o tráfego e a emissão de gases poluentes. Para cada tonelada transportada, os navios compartilhados emitem 30 vezes menos carbono do que o modal rodoviário. | "
txtSection6ANorsalItem1 = "Malha Rodoviária<br><small>Todo o Brasil.</small> | "
txtSection6ANorsalItem2 = "Malha Ferroviária<br><small>Sul, Sudeste e Centro Oeste.</small> | "
txtSection6ANorsalItem3 = "Vias Marítimas<br><small>Sul, Sudeste e Norte.</small> | "

txtSection7ANorsalTit = "Nossas marcas. | "


'*********************************************************************************************
'*********************************************************************************************
'******    
'******        MARCAS
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoMarcasTit = "5 marcas com o <br>mais alto padrão <br> de qualidade. | "
txtTopoMarcasTexto = "Somos a número 1 em vendas. Nossas cinco marcas são referência em saúde, confiabilidade e responsáveis pela comercialização dos produtos com o selo Norsal de excelência. | "

txtMarcasNorsal = "Desenvolvido para atender todas as normas e exigências da indústria, o sal Norsal conta com diversas especificações técnicas e é fabricado com a mais alta tecnologia de produção. | "
txtMarcasSalLebre = "Um sal de altíssima qualidade. A marca com o maior portfólio de sal do mercado e com uma linha Gourmet que agrada os paladares mais exigentes. | "
txtMarcasMiramar = "Sal refinado, moído ou para churrasco. Distribuído em todo o Brasil e assegurado pelo selo de qualidade Norsal. | "
txtMarcasAlmirante = "Sal moído, com granulometria controlada e adequado para diversas aplicações. Desde a utilização na indústria, até a mesa do consumidor. | "
txtMarcasSalPiramide = "Sal moído iodado com aplicação na mesa e na cozinha. Certificado pelo selo de qualidade Norsal e seus rigorosos processos. | "


'*********************************************************************************************
'*********************************************************************************************
'******    
'******        PRODUÇÃO
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoProducaoTit = "DA SALINA <br>PARA AS NOSSAS <br>EMBALAGENS. | "
txtTopoProducaoTexto = "Produzimos e comercializamos centenas de milhares de toneladas de sal por ano, em uma das instalações mais modernas no mundo. Tudo isso, com muita responsabilidade ecológica e compromisso com a qualidade. | "

txtFeaturesProducaoTit1 = "A excelência na produção de sal. | "
txtFeaturesProducaoRes1 = "Nosso processo é feito com o máximo rigor. Contamos com um maquinário de última geração e estamos constantemente aprimorando nossas tecnologias. | "
txtFeaturesProducaoTit2 = "O PORTIFÓLIO MAIS COMPLETO DO BRASIL. | "
txtFeaturesProducaoRes2 = "Temos 5 marcas que atendem os mais variados setores do mercado. Por isso, contamos com sais de todos os tipos, para agradar consumidores de todos os gostos. | "
txtFeaturesProducaoTit3 = "CUIDANDO DE VOCÊ E DO MEIO AMBIENTE. | "
txtFeaturesProducaoRes3 = "Além de prezar pela sua saúde, nossa produção é feita unicamente por processos naturais. Tudo para evitar a poluição do meio ambiente e a contaminação do sal. | "

txtSection3ProducaoTit = "COMO O MELHOR <br>SAL VAI DO MAR <br>ATÉ VOCÊ. | "
txtSection3ProducaoTexto = "Na produção de nossa salina, fabricamos o sal marinho. Ele é obtido pela evaporação da água captada no Oceano Atlântico, é muito mais puro e saudável. <br>Nosso processo é feito de forma natural, com filtragem biológica e sem adição de produtos químicos. <strong>Confira nossa produção</strong>: | "

txtSection4ProducaoTit1 = "A história do sal. | "
txtSection4ProducaoTexto1 = "Ele já foi moeda de troca, já ergueu impérios e motivou a destruição de exércitos. Hoje, é utilizado para razões muito mais pacíficas e saudáveis. | "
txtSection4ProducaoTit2 = "A importância do sal. | "
txtSection4ProducaoTexto2 = "O sal é o segundo mineral não energético mais produzido e utilizado no mundo, e está ativamente presente em nossas vidas desde as primeiras civilizações. Confira nossa matéria completa. | "
txtSection4ProducaoTit3 = "As vantagens do consumo consciente. | "
txtSection4ProducaoTexto3 = "Você sabe por que o sal marinho é o mais saudável do mundo? Respondendo algumas perguntas, vamos ajudá-lo a cosumir sal conscientemente. | "


'*********************************************************************************************
'*********************************************************************************************
'******    
'******        PRODUTOS - MARCAS
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoProdutosMarcasTit = "Nossos <br>produtos. | "
txtTopoProdutosMarcasRes = "Milhares de processos industriais dependem do sal. Por isso, nos dedicamos a cada um deles com um portfólio completo, que garante produtos com a mais alta qualidade. | "

txtSection1ProdutosMarcasTit = "Sal Norsal | "
txtSection1ProdutosMarcasRes = "Uma marca que atende as mais rígidas normas e exigências. Fabrica sais com tecnologia de ponta, para satisfazer as necessidades do consumidor final e da indústria. | "

txtSection2ProdutosMarcasTexto = "Além de estarmos nas mesas de milhões de brasileiros, atendemos as gôndolas de supermercados, hipermercados, atacadistas, varejistas, e nossos sachês são servidos em todos os tipos de restaurantes. | "


'*********************************************************************************************
'*********************************************************************************************
'******    
'******        PRODUTOS
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoProdutosTit = "Nossos <br>produtos. | "
txtTopoProdutosRes = "Milhares de processos industriais dependem do sal. Por isso, nos dedicamos a cada um deles com um portfólio completo, que garante produtos com a mais alta qualidade. | "

'txtSection2ProdutosTexto = "Além de estarmos nas mesas de milhões de brasileiros, atendemos as gôndolas de supermercados, <br>hipermercados, atacadistas, varejistas, e nossos sachês são servidos em todos os tipos de restaurantes. | "

txtSection2ProdutosTextoConsumidor = "Além de atendermos as gôndolas de supermercados, hipermercados, atacadistas e varejistas, nossos <br>sachês são servidos em todos os tipos de restaurantes e estamos nas mesas de milhões de brasileiros. | "
txtSection2ProdutosTextoIndustria = "Abastecemos os mais variados tipos de indústrias. Somos responsáveis <br>pelo sal levado para os segmentos: alimentar, têxtil, de celulose, de alcançaria, entre outros. | "
txtSection2ProdutosTextoPecuaria = "Desenvolvemos linhas especializadas para o segmento pecuário, na alimentação de bovinos. <br>Nossos produtos apresentam compostos específicos para atender completamente suas necessidades nutricionais. | "

txtSection3ProdutosTit = "Sal Norsal | "
txtSection3ProdutosRes = "Uma marca que atende as mais rígidas normas e exigências. Fabrica sais com tecnologia de ponta, para satisfazer as necessidades do consumidor final e da indústria. | "


'*********************************************************************************************
'*********************************************************************************************
'******    
'******        RESPONSABILIDADE
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoResponsabilidadeTit = "Muito <br>além do sal | "
txtTopoResponsabilidadeRes = "A Norsal trabalha para ter um papel importante na vida das pessoas. Por isso, desenvolvemos diversos programas que visam o bem-estar da sociedade e a preservação do meio ambiente. | "

txtSection1ResponsabilidadeTit = "Nossos Projetos. | "



'*********************************************************************************************
'*********************************************************************************************
'******    
'******        RESPONSABILIDADE - INTERNA
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoResponsabilidadeInternaTit = "Muito <br>além do sal | "
txtTopoResponsabilidadeInternaRes = "A Norsal trabalha para ter um papel importante na vida das pessoas. Por isso, desenvolvemos diversos programas que visam o bem-estar da sociedade e a preservação do meio ambiente. | "

txtSection1ResponsabilidadeInternaTit = "Nossos Projetos. | "

txtSecton2ResponsabilidadeInternaCompartilhar = "Compartilhar | " 
txtSecton3ResponsabilidadeInternaVisitas = "Mais vistas | "



'*********************************************************************************************
'*********************************************************************************************
'******    
'******        FALE CONOSCO
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoFaleConoscoTit = "Fale com <br>a gente. | "
txtTopoFaleConoscoRes = "Quer trabalhar com os nossos produtos? Atendemos os segmentos de food service, varejo, atacado e indústrias de todos os tipos. Nossa unidade de atendimento especializado está pronta para oferecer o sal que mais se adequa ao seu negócio. | "

txtFaleConoscoFormNome = "Nome | Name"
txtFaleConoscoFormEmail = "E-mail | E-mail"
txtFaleConoscoFormTelefone = "Tel | "
txtFaleConoscoFormEmpresa = "Empresa | "
txtFaleConoscoFormSetor = "Setor | "
txtFaleConoscoFormMsg = "Mensagem | "

txtFaleConoscoFormMsgFinal = "Se você é <strong>transportador</strong> e está na região de Mossoró/RN, entre em contato com a Central de Logística. | "

txtFaleConoscoCentrosItem1Tit = "ADMINISTRAÇÃO E VENDAS | "
txtFaleConoscoCentrosItem1End = "Av. Dr. Cardoso de Mello, 900 <br>Vila Olímpia - São Paulo/SP <br>CEP: 04548-003 <br>Tel: 55 (11) 3767-3810 <br>vendas@norsal.com.br | "

txtFaleConoscoCentrosItem2Tit = "CENTRO DE DISTRIBUIÇÃO ITAPEVI | "
txtFaleConoscoCentrosItem2End = "Av. Nova São Paulo, 557 - Galpão 10 <br>Bairro Itaqui - Itapevi/SP <br>CEP: 06696-100 <br>Tel: 55 (11) 3714-6971 <br>Tel: 55 (11) 3714-6926 | "

txtFaleConoscoCentrosItem3Tit = "UNIDADE INDUSTRIAL | "
txtFaleConoscoCentrosItem3Comp = "Fabricação, Refino e Embalagem | "
txtFaleConoscoCentrosItem3End = "Rodovia BR 110, S/N KM 1 <br>Zona Suburbana - Areia Branca/RN <br>CEP: 59655-000 <br>Tel: 55 (84) 3332-2426 | "

txtFaleConoscoCentrosItem4Tit = "Central de Logística | "
txtFaleConoscoCentrosItem4End = "Rua Jeremias da Rocha, 165 <br>Santo Antonio - Mossoró/RN <br>CEP: 0456-456 <br>Tel: 55 (84) 3314-2288 <br>Fax: 55 (84) 3321-2404 | "



'*********************************************************************************************
'*********************************************************************************************
'******    
'******        NOVIDADES
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoNovidadesTit = "Blog<br>da Norsal. | "
txtTopoNovidadesRes = "Aqui, você fica por dentro de tudo o que acontece na Norsal. Estamos constantemente nos atualizando, lançando novos projetos, desenvolvendo novos produtos e muito mais. | "


'*********************************************************************************************
'*********************************************************************************************
'******    
'******        NOVIDADES - Interna
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtTopoNovidadesInternaTit = "Blog<br>da Norsal. | "
txtTopoNovidadesInternaRes = "Aqui, você fica por dentro de tudo o que acontece na Norsal. Estamos constantemente nos atualizando, lançando novos projetos, desenvolvendo novos produtos e muito mais. | "


'*********************************************************************************************
'*********************************************************************************************
'******    
'******        LINHA DE PRODUÇÃO
'******
'******
'*********************************************************************************************
'*********************************************************************************************
txtlinhaProducao1Tit = "EXTRAÇÃO DAS ÁGUAS | "
txtlinhaProducao1Texto = "<strong>No fundo do oceano.</strong><br>A primeira parte do processo é retirar as águas do Oceano Atlântico, chamadas também de 'águas virgens'. | "

txtlinhaProducao2Tit = "transporte da água | "
txtlinhaProducao2Texto = "<strong>Direto para a Salina.</strong><br>A água é transportada para os tanques de nossa salina, onde é iniciado um processo de evaporação de aproximadamente 60 dias. | "

txtlinhaProducao3Tit = "A EVAPORAÇÃO | "
txtlinhaProducao3Texto = "<strong>A natureza faz a sua parte.</strong><br>Toda a evaporação é feita naturalmente, pelo sol e pelo vento. A água dos tanques fica cada vez mais concentrada, até virar uma salmoura. | "

txtlinhaProducao4Tit = "a Filtragem | "
txtlinhaProducao4Texto = "<strong>A ação do crustáceo.</strong><br>Nesse momento, inserimos a Artêmia, um crustáceo que age como filtro biológico, removendo todo tipo de microrganismos da água. | "

txtlinhaProducao5Tit = "a Cristalização | "
txtlinhaProducao5Texto = "Quando o sal atinge o limite de saturação, a água é transferida para os cristalizadores. Lá, feita a precipitação dos cristais de sal. | "

txtlinhaProducao6Tit = "POR FIM, A COLHEITA. | "
txtlinhaProducao6Texto = "Quando uma grande quantidade de sal é acumulada, fazemos a colheita. A partir desse momento, o sal é enviado para tratamento final, para consumo ou uso na indústria. | "


%>
