FROM python:3.13.4
WORKDIR /app
ARG GIT_TOKEN
RUN git clone https://oauth2:${GIT_TOKEN}@github.com/HubertLuszkiewicz/MLClassifiactionTask.git .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]