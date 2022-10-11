Exemplo de voz sintetizada no Sintetizador de Texto para Falar Festival TTS (Festival Speech Synthesis System). 

Olá, isto foi um experimento que fiz com as ferramentas de construção de voz Festvox para Festival TTS para poder ser era possível ter uma voz português do Brasil no Festival Speech Synthesis System.
Usado o método de "Sintetizador baseado em grafema", em conjunto usado o database de áudio do gênero masculino do "LaPS Benchmark 16k" no gitlab do Falabrasil. 
O voz não tem uma voz considerável boa, pois foi usado um pequeno banco de áudios. A voz contém ruídos porque não filtrei os ruídos use áudios puros retirados no banco de dados pequeno. 
Treinamento e construção de modelo demorou em volta mais ou menos 1 hora. Usado um celular de 2gb para fazer o processamento com pouco espaço de armazenamento disponível.

Instalação:
Descompacte o arquivo tar em /usr/share/ ou na pasta que os arquivos do Festival estão.


Problemas conhecidos:
Não falar palavras com ou contento letras maiusculas ou letras/palavras que não foram treinadas usado os textos extraindos das transcrições do database.

Lista de Grafemas/Fonema que foram identificanda pelo processo de treinamento:

A, ch, d, dZ, e, f, g, h, i, k, l, m, n, o, p, QM, r, s, t, u, v, z


Scripts para preparação de database e treinamento estaram disponíveis em breve.

Link/Referências e créditos:

Construção de uma voz usado o método "Sintetizador baseado em grafema" ou "Grapheme-based Synthesizer":

http://www.festvox.org/festvox/c3485.html

Database LaPS Benchmark 16k e outros por FalaBrasil

https://gitlab.com/fb-audio-corpora
