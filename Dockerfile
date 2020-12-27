FROM ubuntu@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
ARG pandoc_url="https://github.com/jgm/pandoc/releases/download/2.11.3.1/pandoc-2.11.3.1-1-amd64.deb"
RUN apt update && apt install -y wget 
RUN wget -O pandoc.deb ${pandoc_url} && apt install ./pandoc.deb && rm pandoc.deb