# Faz a requesição pegando a parte do request onde contém o __VIEWSTATE
curl -v -s -k https://EXEMPLO.com/ARQUIVO.aspx | grep VIEW >> arquivo.txt

# cat no arquivo da request, e deixando apenas o objeto
cat arquivo.txt | awk -v value="[OBJECT]>>> " '{print value$5}' | tr -d value=\" | awk '{print $2}' | sed 'G'
