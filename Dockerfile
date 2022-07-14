FROM golang:1.17

ENV GOPATH /go
WORKDIR $GOPATH/src/github.com/silverstr89/AlienInvasion
COPY . .

RUN make

CMD ./main -aliens=4
