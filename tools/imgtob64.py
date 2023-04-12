import cv2
import base64
img = cv2.imread(f'E:/pictures/21k/{4}.jpg')
jpg_img = cv2.imencode('.jpg', img)
b64_string = base64.b64encode(jpg_img[1]).decode('utf-8')
print(b64_string)