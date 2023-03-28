from random import randint, choice
import cv2
import base64


with open('allatnevek.txt', 'r', encoding="utf-8") as f:
    allatnevek = f.readlines()
    
with open('kutyafajtak.txt', 'r', encoding="utf-8") as f:
    fajok = f.readlines()


kutyak = []
for i in range(1, 250):
    nev = allatnevek[randint(0, len(allatnevek)-1)].rstrip()
    added_at = f"{randint(2020, 2023)}-{randint(1, 12)}-{randint(1, 28)}"
    ivar = choice(["kan", "szuka"])
    kor = randint(1,30)
    suly = randint(1,30)
    fog_allapot = randint(1,4)
    tipus = fajok[randint(0, len(fajok)-1)].rstrip()
    telefon = f"+36{choice([30, 40, 50, 60])}{randint(0,9999999)}"
    domain = ""
    identificator = ""
    for j in range(randint(3,10)):
        domain += choice("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
        
    for k in range(randint(3,10)):
        identificator += choice("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
        
    email = f"{identificator}@{domain}.com"
    
    img = f'http://localhost/kutyakepek/{randint(0,566)}.jpg'
    
    kutya = f"{i},{nev},{added_at},{randint(0,1)},{randint(0,1)},{randint(0,1)},{ivar},{kor},{suly},{fog_allapot},{tipus},{img},,,,{email},{telefon}"
    kutyak.append(kutya)
    
with open('kutyak.csv', 'w', encoding="utf-8") as f:
    for kutya in kutyak:
        f.write(f"{kutya}\n")