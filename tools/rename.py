import os
os.getcwd()
collection = "E:/code/fakutya/kutyakepek"
for i, filename in enumerate(os.listdir(collection)):
    os.rename(
        f"E:/code/fakutya/kutyakepek/{filename}",
        f"E:/code/fakutya/kutyakepek/{i}.jpg",
    )