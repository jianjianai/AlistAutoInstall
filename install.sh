rm alist-linux-amd64.tar.gz
wget https://github.com/alist-org/alist/releases/latest/download/alist-linux-amd64.tar.gz
tar -zxvf alist-linux-amd64.tar.gz
rm alist-linux-amd64.tar.gz

echo FROM scratch > Dockerfile
echo ADD ./ ./ >> Dockerfile
echo EXPOSE 5244 >> Dockerfile
echo CMD [ \"./alist\", \"server\"] >> Dockerfile

./alist server