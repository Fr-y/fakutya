from random import randint, choice, choices
import cv2
import base64
from lorem import *


with open('allatnevek.txt', 'r', encoding="utf-8") as f:
    allatnevek = f.readlines()

with open('kutyafajtak.txt', 'r', encoding="utf-8") as f:
    kutyafajok = f.readlines()
    
with open('macskafajtak.txt', 'r', encoding="utf-8") as f:
    macskafajok = f.readlines()

chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
allatok = []
for i in range(1, 211):
    nev = allatnevek[randint(0, len(allatnevek)-1)].rstrip()
    added_at = f"{randint(2020, 2023)}-{randint(1, 12)}-{randint(1, 28)} {randint(0, 24)}:{randint(0, 60)}:{randint(0, 60)}"
    is_quarantined = randint(0, 1)
    is_ivartalan = randint(0, 1)
    is_chipped = randint(0, 1)
    ivar = choice(["kan", "szuka"])
    kor = randint(1,20)
    suly = randint(1,50)
    fog_allapot = randint(1,4)
    rannum = randint(0,339)
    img = f'allatkepek/{rannum}.jpg'
    faj = "macska" if (rannum < 133) else "kutya"
    if faj == "kutya":
        if randint(1,3) == 1:
            tipus = f'{kutyafajok[randint(0, len(kutyafajok)-1)].rstrip()}, {kutyafajok[randint(0, len(kutyafajok)-1)].rstrip()} keverék'
        else:
            tipus = kutyafajok[randint(0, len(kutyafajok)-1)].rstrip()
    else:
        tipus = macskafajok[randint(0, len(macskafajok)-1)].rstrip()

    allapot = get_sentence(count=2, comma=(0, 2), word_range=(4, 10), sep=' ')
    tulajdonsagok = get_sentence(count=3, comma=(0, 2), word_range=(4, 10), sep=' ')

    domain = "".join(choice(chars) for _ in range(randint(3,10)))
    identificator = "".join(choice(chars) for _ in range(randint(3,10)))
    email = f"{identificator}@{domain}.com"

    telefon = f"+36{choice([30, 40, 50, 60])}{randint(0,9999999)}"

    allat = f"{i};{nev};{added_at};{is_quarantined};0;{is_ivartalan};{is_chipped};{ivar};{kor};{suly};{fog_allapot};{faj};{tipus};{img};{allapot};{tulajdonsagok};{email};{telefon};0;{choices([1,2,3,4,7,8], weights=(60,60,60,60,20,20), k=1)[0]}"
    allatok.append(allat)

with open('allatok.csv', 'w', encoding="utf-8") as f:
    for allat in allatok:
        f.write(f"{allat}\n")