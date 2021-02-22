FROM elixir
WORKDIR /elixir
COPY . .
RUN tar -xf exercism-linux-64bit.tgz
RUN mkdir -p ~/bin
RUN mv exercism ~/bin
RUN echo 'export PATH=~/bin:$PATH' >> ~/.bash_profile
