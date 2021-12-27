FROM  python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["distracted_fermat", "-b", ":8080", "main:APP"]
