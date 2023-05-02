import os
os.getcwd()
collection = "E:/code/fakutya2/fakutya/allatkepek"
for i, filename in enumerate(os.listdir(collection)):
    os.rename(
        f"{collection}/{filename}",
        f"{collection}/{i}.jpg",
    )