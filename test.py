import numpy as np
import cv2

img1 = cv2.imread("/NAFNet/noisy1.png")
img2 = cv2.imread("/NAFNet/noisy2.png")

sbst = cv2.subtract(img1, img2)

sbst.astype("float")

np.absolute(sbst)
mx = sbst.max()

eps = 0.001

if mx < eps:
    print("Okey")
else: 
    print("So BAD")
