FROM puritys/gitbook:latest

WORKDIR /root
COPY . .
RUN mv -f getConvertOptions.js /root/.gitbook/versions/3.2.3/lib/output/ebook/getConvertOptions.js \
    && rm -fr /usr/share/fonts/noto/*.otf \
    && mv SourceHanSansCN-Normal.ttf /usr/share/fonts/noto/ \
    && fc-cache -f -v

WORKDIR /gitbook
