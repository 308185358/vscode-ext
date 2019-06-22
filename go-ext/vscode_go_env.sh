sudo chown -R $(whoami):admin /usr/local

go get -v -u github.com/golang/tools/go/buildutil

mkdir $GOPATH/src/golang.org
ln -s $GOPATH/src/github.com/golang $GOPATH/src/golang.org/x

cd $GOPATH/src/golang.org/x/tools/go/buildutil
go install

go get -v -u github.com/ramya-rao-a/go-outline


# 在$GOPATH/src/github.com/golang/目录下clone
cd $GOPATH/src/github.com/golang/
git clone https://github.com/golang/lint.git

# go install github.com/golang/lint/golint   
go install golang.org/x/lint/golint