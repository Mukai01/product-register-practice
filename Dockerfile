FROM ruby:2.5
# Railsを動かすためのパッケージ
RUN apt-get update 
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
    
# フォルダを作成
WORKDIR /product-register

# 以下はRailsの話
# gemというのはpythonでいうとpipのような役割
# gemfileをコピーする
COPY Gemfile Gemfile.lock /product-register/

# Gemfileに書かれたGemをインストール
RUN bundle install