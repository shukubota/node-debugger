# hub.docker.comから公式で用意されたイメージをベースとする
FROM node:10.13-alpine

ENV APP_ROOT /work/myspace

WORKDIR $APP_ROOT
# デフォルトで node が起動するので sh を代わりに起動
# CMD ["sh"]

RUN npm i -g typescript webpack webpack-cli
RUN apk --update-cache \
    add musl \
    linux-headers \
    gcc \
    g++ \
    make \
    gfortran \
    openblas-dev \
    python3 \
    python3-dev

RUN pip3 install --upgrade pip 
# RUN pip3 install numpy \
#     scipy  \
#     scikit-learn \ 
#     'pandas<0.21.0'