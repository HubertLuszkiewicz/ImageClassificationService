### Użyty zbiór danych
Do klasyfikacji obrazów użyłem zbioru zawierającego 6899 obrazów należących do 8 klas.

Są to następujące klasy: airplane, car, cat, dog, flower, fruit, motorbike, person.

Wykorzystałem pretrenowaną sieć Resnet50, która fine-tunowałem z użyciem małego podzbioru obrazów ze zbioru:
https://www.kaggle.com/datasets/prasunroy/natural-images?resource=download

W rezultacie sieć przewiduje 8 klas zamiast 1000, tak jak ma to miejsce w Resnet50.

### Kod projektu
Kod projektu inicjującego model oraz zajmującego sie obsługą usługi sieciowej z użyciem REST API jest dostępny w repozytorium: https://github.com/HubertLuszkiewicz/MLClassifiactionTask

Dostęp do kodu został ograniczony z użyciem tokenu dostępu wygenerowanego na githubie. Jest to token tymczasowy, wygenerowany na okres 30 dni. Daje on dostęp tylko do odczytu repozytorium.

### Jak użyć
- Zbuduj obraz dockerowy
  ```bash
  docker build -t image-classifier \
  --build-arg GIT_TOKEN=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 \
  --build-arg BUILD_REF=$(date +%s) \
  .
  ```
- Stwórz kontener
  ```
  docker run -p 5000:5000 image-classifier
  ```
- Otwórz ten link w przeglądarce: http://127.0.0.1:5000/train
- Podaj jako dane dotrenowujące (fine-tuning) cały folder *fine_tuning_dataset* i kliknij *Start Training*
- Po krótkiej chwili sieć Resnet50 zostanie dotrenowana i dopasowana do potrzeb tego zbioru danych (1000 -> 8 klas)
- Przejdź na adres: http://127.0.0.1:5000/classify
- Wybierz obraz i sprawdź do jakiej klasy zostanie przypisany klikając *Classify Image*
  
