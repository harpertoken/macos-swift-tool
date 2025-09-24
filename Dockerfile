FROM swift:5.9

WORKDIR /app

COPY . .

RUN swift build

CMD ["swift", "run"]