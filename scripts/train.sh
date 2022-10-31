#!/bin/bash

#Defindo variável de ambiente das ferramentas festvox

DIR=male


export ESTDIR=`pwd`/speech_tools
export FESTVOXDIR=`pwd`/festvox
export FLITEDIR=`pwd`/flite
export SPTKDIR=`pwd`/SPTK

#Gerando pasta de voz básica
echo "Digite y nas opções"
cd lapsbm16k_$DIR

$FESTVOXDIR/src/clustergen/setup_cg laps pt $DIR

#Executar construção e treinamento de voz
./bin/build_cg_voice

#Gerando arquivo .wav com um exemplo de Text-To-Speech usado a voz construinda.

echo "isso E um exemplo de texto em falar, a capacidade disso funciona E incrivel" >> exemplo.txt

./bin/synthfile exemplo.txt audio.wav

#Gerando pacote tar da voz

./bin/make_dist festvox

