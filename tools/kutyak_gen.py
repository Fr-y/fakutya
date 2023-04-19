from random import randint, choice
import cv2
import base64
from lorem import *


with open('allatnevek.txt', 'r', encoding="utf-8") as f:
    allatnevek = f.readlines()

with open('kutyafajtak.txt', 'r', encoding="utf-8") as f:
    kutyafajok = f.readlines()

chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
fajok = ["kutya","macska","hörcsög","egér","papagáj"]
kutyak = []
for i in range(1, 300):
    nev = allatnevek[randint(0, len(allatnevek)-1)].rstrip()
    added_at = f"{randint(2020, 2023)}-{randint(1, 12)}-{randint(1, 28)} {randint(0, 24)}:{randint(0, 60)}:{randint(0, 60)}"
    is_quarantined = randint(0, 1)
    is_befogadhato = randint(0, 1)
    is_ivartalan = randint(0, 1)
    is_chipped = randint(0, 1)
    ivar = choice(["kan", "szuka"])
    kor = randint(1,70)
    suly = randint(1,150)
    fog_allapot = randint(1,4)
    faj = choice(fajok)
    tipus = kutyafajok[randint(0, len(kutyafajok)-1)].rstrip()
    img = f'kutyakepek/{randint(0,566)}.jpg'
    allapot = get_sentence(count=2, comma=(0, 2), word_range=(4, 10), sep=' ')
    tulajdonsagok = get_sentence(count=3, comma=(0, 2), word_range=(4, 10), sep=' ')
    comment = get_sentence(count=6, comma=(0, 4), word_range=(4, 10), sep=' ')
    
    domain = "".join(choice(chars) for _ in range(randint(3,10)))
    identificator = "".join(choice(chars) for _ in range(randint(3,10)))
    email = f"{identificator}@{domain}.com"
    
    telefon = f"+36{choice([30, 40, 50, 60])}{randint(0,9999999)}"

    kutya = f"{i};{nev};{added_at};{is_quarantined};{is_befogadhato};{is_ivartalan};{is_chipped};{ivar};{kor};{suly};{fog_allapot};{faj};{tipus};{img};{allapot};{tulajdonsagok};{comment};{email};{telefon}"
    kutyak.append(kutya)

with open('kutyak.csv', 'w', encoding="utf-8") as f:
    for kutya in kutyak:
        f.write(f"{kutya}\n")