FROM python:3.10.11
WORKDIR /app
ARG GIT_TOKEN
ARG BUILD_REF=latest
RUN echo "Building with ref: ${BUILD_REF}"
RUN git clone https://oauth2:${GIT_TOKEN}@github.com/HubertLuszkiewicz/MLClassifiactionTask.git .
RUN pip install --no-cache-dir -r requirements.txt
RUN python ./save_pretrained_model.py
EXPOSE 5000
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]