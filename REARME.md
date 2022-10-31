# Introdução

Esse repositório contém uma pacote de voz para Festival Speech Synthesis System, para idioma português brasileiro feito pra fins de experimento.

# informações de modelo
Para construção da voz foi utilizado um pequeno banco de dados de áudios transcritos do LaPS Benchmark feito pelo FalaBrasil, utilizado os arquivos de áudios masculinos do modelo. 

Com chegar de 600 áudios com 3 a 5 segundos cada e suas transcrições incluídas. 

# Treinamento
Usado as ferramentas de construção de voz Festvox para Festival foi utilizado o método de construção de voz baseado em grafemas que consiste em analisar as sentenças das transcritos e construir um modelo genérico.

Foi usado pois esse modelo não era necessário nenhum outro recurso como lexico, lista de fonemas e a construção de regras de pronuncia das palavras. 

A duração do treinamento e construção do modelo demorou em torno de 1h a 1h30mim para ser concluído, a duração depende do tamanho do banco de dados utilizado e o processamento da máquina a ser executada o treinamento. 

# Instalação
É necessário ter instalado o Festival Speech Synthesis System em sua distribuição Linux. 
	**Variações do Debian**
	``sudo apt-get install festival``
	**Variações do Arch Linux**
	``sudo pacman -S festival``

Geralmente as vozes são armazenadas em **/usr/share/** no meu sistema, em outras distribuições não sei onde se localizar o armazenamento das vozes. 

```wget https://github.com/Pallas1303/Festival-TTS-Em-Portugu-s-Brasil/blob/main/festvox_fabio_pt_br_cg.tar.gz```

```tar -xf festvox_fabio_pt_br_cg.tar.gz /usr/share/```

```rm festvox_fabio_pt_br_cg.tar.gz```