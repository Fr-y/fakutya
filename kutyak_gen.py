from random import randint, choice

with open('allatnevek.txt', 'r', encoding="utf-8") as f:
    allatnevek = f.readlines()


kutyak = []
for i in range(1, 250):
    nev = allatnevek[randint(0, len(allatnevek)-1)].rstrip()
    added_at = f"{randint(2020, 2023)}-{randint(1, 12)}-{randint(1, 28)}"
    ivar = choice(["kan", "szuka"])
    kor = randint(1,30)
    suly = randint(1,30)
    fog_allapot = randint(1,4)
    tipus = randint(0,120)
    telefon = f"+36{choice([30, 40, 50, 60])}{randint(0,9999999)}"
    kutya = f"{i},{nev},{added_at},1,0,0,0,{ivar},{kor},{suly},{fog_allapot},{tipus},,,,placeholder,{telefon}"
    kutyak.append(kutya)
    
with open('kutyak.csv', 'w', encoding="utf-8") as f:
    for kutya in kutyak:
        f.write(f"{kutya}\n")