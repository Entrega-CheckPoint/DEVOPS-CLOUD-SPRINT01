#!/bin/bash

echo ""
echo "============================================================"
echo "   INICIANDO A CONTAINERIZAÇÃO DO PROJETO MOTTU "
echo "============================================================"
echo ""

cd net-docker
cd deploy

CAMINHO=$(pwd)

echo ""
echo "🔵 Criando a rede virtual 'mottu-net'"
docker network create mottu-net
docker network ls

echo ""
echo "============================================================"
echo " 📦 Criando Imagem personalizada da aplicação ASP.NET 'mottu-oracle'"
echo "============================================================"
docker build -t mottu-oracle .


echo ""
echo "============================================================"
echo " 📦 Criando container da aplicação ASP.NET 'mottu-oracle'"
echo "============================================================"
docker run -d -p 8080:8080 --name mottu-oracle mottu-oracle


echo ""
echo "============================================================"
echo " ✅ TUDO PRONTO! SISTEMA CONTAINERIZADO COM SUCESSO ✅"
echo "============================================================"
echo ""

echo ""
echo "============================================================"
echo "Lista de imagens no Docker: 'docker image ls'"
docker image ls
echo "============================================================"

echo ""
echo "============================================================"
echo "📦 Lista de containers ativos: 'docker ps'"
docker ps
echo "============================================================"
