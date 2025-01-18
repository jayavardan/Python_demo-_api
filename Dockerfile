FROM python:3.12

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY main.py requirements.txt ${APP_HOME}

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "python", "main.py" ]
