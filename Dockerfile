FROM  python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["lucid_bardeen", "-b", ":80", "main:APP"]
