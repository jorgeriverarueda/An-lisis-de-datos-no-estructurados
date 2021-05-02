## Práctica Audio - Jorge Rivera y Rodrigo López de Toledo

Tercera práctica de la asignatura Análisis de Datos No Estructurados del Máter en Big Data de ICAI.

En esta carpeta se encuentran todos los ficheros necesarios para ejecutar la práctica correctamente.

En esta práctica se ha hecho un clasificador de diferentes sonidos ambientales. El dataset tiene 1440 audios diferentes.

El dataset es el siguiente: https://www.kaggle.com/mmoreaux/environmental-sound-classification-50#esc50.csv

Se puede entrenar tanto con el .csv como con los .npy, que es el mismo dataset ya procesado y guardado en formato NumPy. Simplemente hay que poner load_kaggle_data = False y load_numpy = True y descomentar load_numpy = "kaggle50.npy" (Esto es mucho mas rápido)
