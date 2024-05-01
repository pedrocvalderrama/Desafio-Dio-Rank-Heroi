--Se XP for menor do que 1.000 = Ferro
   -- Se XP for entre 1.001 e 2.000 = Bronze
    --Se XP for entre 2.001 e 5.000 = Prata
    --Se XP for entre 5.001 e 7.000 = Ouro
    --Se XP for entre 7.001 e 8.000 = Platina
    --Se XP for entre 8.001 e 9.000 = Ascendente
    --Se XP for entre 9.001 e 10.000= Imortal
    --Se XP for maior ou igual a 10.001 = Radiante


-- Habilita o UTF8
 os.execute("chcp 65001")
 os.execute("cls")

-- Declaração de Variáveis
local name
local nivel
local classificadores = {1000,2000,5000,7000,8000,9000,10000}
local rank = {"Ferro", "Bronze", "Prata", "Ouro", "Platina", "Ascendente", "Imortal", "Radiante"}

print("Digite o nome de seu Heroi:");
io.write("> ");
name = io.read();

print("Digite a quantidade de experiência(XP):");
io.write("> ");
nivel = io.read("*n");

for i = 1, 7, 1 do
    local comparador = classificadores[i];
    if nivel <= comparador then
            print()
            print("-------------------------------------")
            print()
            print(string.format("O Herói de nome %s está no nível de %s.", name, rank[i]))
            print()
            print("-------------------------------------")
        break
    end
end

if nivel > 10000 then
    print()
    print("-------------------------------------")
    print()
    print(string.format("O Herói de nome %s, está no nível %s.", name, rank[8]))
    print()
    print("-------------------------------------")
end

