**Run this**

```
docker build -t image-classifier --build-arg GIT_TOKEN=[PASTE_ACCESS_TOKEN_HERE] .
```

**And then this**

```
docker run -p 5000:5000 image-classifier
```

**Klasyfikacja**
Uruchom endpoint http://127.0.0.1:5000/classify

Wybierz zdjęcie z plików

Kliknij _Classify Image_
