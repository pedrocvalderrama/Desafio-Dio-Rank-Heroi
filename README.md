✨ Detecção de Nível de Herói em LuaEste é um projeto simples escrito em Lua que simula um sistema de classificação de heróis baseado em pontos de experiência (XP). 

O usuário insere o nome do herói e a quantidade de XP, e o script retorna o nível de rank correspondente.
🏆 Tabela de ClassificaçãoO sistema segue a seguinte lógica de classificação de XP:
Rank< 1.000 Ferro
1.001 a 2.000 Bronze
2.001 a 5.000 Prata
5.001 a 7.000 Ouro
7.001 a 8.000 Platina
8.001 a 9.000 Ascendente
9.001 a 10.000 Imortal
≥ 10.00 1Radiante

🚀 Como Executar
Para rodar este script, você precisa ter o interpretador Lua instalado no seu sistema operacional.
Salve o código em um arquivo, por exemplo, detector_rank.lua.
Execute o script no seu terminal ou prompt de comando:Bashlua detector_rank.lua
Exemplo de InteraçãoO script pedirá o nome e a XP:Digite o nome de seu Heroi:
> Kael
Digite a quantidade de experiência(XP):
> 6500

-------------------------------------

O Herói de nome Kael está no nível de Ouro.

-------------------------------------
🛠️ Detalhes da Implementação
O script utiliza uma abordagem sequencial para determinar o rank:Define a lista de classificadores (limites de XP) e a lista de rank (nomes dos níveis).
Lê o name (string) e o nivel (número inteiro) fornecidos pelo usuário.
Usa um laço de repetição (for) que percorre a lista de limites de XP.Dentro do laço, ele verifica se o XP do herói é menor ou igual ao limite atual (classificadores[i]).
Ao encontrar a primeira condição verdadeira, ele imprime o rank correspondente (rank[i]) e usa break para sair do loop.Caso o loop termine sem quebrar, o XP é maior que o último classificador (10.000), e o rank é definido como "Radiante" em uma verificação final (if nivel > 10000).
