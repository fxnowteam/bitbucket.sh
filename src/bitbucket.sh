#!/bin/bash
# script criado por paico (http://paico.com.br/2011/09/07/clonando-e-enviando-alteracoes-para-repositorio-bitbucket-com-shell-script/)
# em 07/09/2011
echo "Baixar repositório (0) ou enviar alterações (1)? "; read resposta
if [ $resposta -eq 1 ] ; then
        echo "Commit: "; read committext
        hg commit -m "$committext"
        hg push https://paico@bitbucket.org/paico/fclin
else
        hg clone https://paico@bitbucket.org/paico/fclin
fi
