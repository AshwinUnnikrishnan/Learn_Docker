FROM python:3.8-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=4000
COPY . .
RUN pip install -r requirements.txt
EXPOSE 4000
CMD ["flask","run"]