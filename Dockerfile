FROM python:3.11.6-alpine3.18
LABEL maintainer="hryn.yuri@gmail.com"

ENV PYTHONUNBUFFERED=1
ENV API_KEY="0bced3a3a268484b9be125851250705"

WORKDIR app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app/main.py", "0.0.0.0:8000"]