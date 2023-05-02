import os
from PIL import Image

# Define the directory containing the images
dir_path = "../kutyakepek"

# Create an empty dictionary to store the images
images = {}

# Loop through each file in the directory
for file in os.listdir(dir_path):
    # Check if the file is an image
    if file.endswith(".jpg") or file.endswith(".png"):
        # Open the image using the PIL module
        image = Image.open(os.path.join(dir_path, file))
        # Calculate the hash of the image data
        hash_value = hash(image.tobytes())
        # Check if the hash already exists in the dictionary
        if hash_value in images:
            # If it does, delete the duplicate image
            os.remove(os.path.join(dir_path, file))
        else:
            # If it doesn't, add the hash to the dictionary
            images[hash_value] = file
