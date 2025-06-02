FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN pip install --no-cashe-dir -r requirements.txt

EXPOSE 5001

ENV FLASK_APP=app.py

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--p=5001"]

