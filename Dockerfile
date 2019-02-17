FROM python:3.7-alpine

WORKDIR /src

COPY src .

EXPOSE 2411

CMD ["python3", "-m", "http.server", "2411"]
