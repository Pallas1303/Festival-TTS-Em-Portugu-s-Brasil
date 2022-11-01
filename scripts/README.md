# introdução

Esse diretório contém scripts de preparação e construção de voz utilizando o kit de ferramentas de construção de voz Festvox para Festival Speech Synthesis System e Flite.

# Construção de ferramentas  Festvox

Para executar a construção das ferramentas Festvox e necessário ter instalado compilador GCC. 

**Debian e derivados:**
	`sudo apt-get gcc wget`
**Arch Linux e derivados:**
	`sudo pacman -s gcc wget`

  Após a instalação das ferramentas de compilação, execute

``./festvox_build_sh``

Esse script irá construir todas as ferramentas Festvox incluído as vozes padrão que no caso é inglês. O processo de construção Irá demorar bastante.

# Preparar banco de dados de áudios transcritos.

Nesse caso usaremos o banco de dados de áudios transcritos do LaPS Benchmark feito pelo FalaBrasil, em caso de outros requer modificações ou criação de scripts novos. 

Execute:
```./database.sh```

Esse script irá fazer o download do database LaPS Benchmark e criaram a pasta databases que vão contém os bancos de áudios transcritos baixados. E logo depois do download o script preparar o banco de dados de áudios transcritos LaPS Benchmark em formato compatível com as ferramentas Festvox. 

# Treinamento e construção de voz

A construção de voz, pode ocorrer demora no treinamento e construção. Dependendo do tamanho do database, resultando no aumento na pasta que irá ocorre o treinamento com arquivos gerados no processo.

Execute:
```./train.sh```

Ao executar o script, começaram o treinamento e construção de voz. No final, um arquivo de áudio com .wav mostrando o resultado da construção com um exemplo de texto em falar utilizando a voz construída recentemente.
