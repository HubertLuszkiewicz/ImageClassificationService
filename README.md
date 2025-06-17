### How to use
- Copy access token
- Build docker image
  ```
  docker build -t image-classifier --build-arg GIT_TOKEN=[PASTE_ACCESS_TOKEN_HERE] .
  ```
- Create docker container
  ```
  docker run -p 5000:5000 image-classifier
  ```
- Open this link in your browser: http://127.0.0.1:5000/classify
- Choose image for prediction and click _Classify Image_ button
  
