FROM jayar79/chordpro:latest

# Finaly clone actual git Version of Chordpro
# https://github.com/ChordPro/chordpro.git dev branch?
# LaTeX branch
RUN git clone --branch LaTeX --single-branch https://github.com/JoeRu/chordpro.git /workspaces/chordpro

WORKDIR /workspaces/chordpro
RUN cpanm --installdeps --notest .
RUN perl Makefile.PL && \
    make  && \
    make test  && \
    make install

WORKDIR /root

COPY make_chordpro_book.sh /usr/bin/
RUN chmod +x /usr/bin/make_chordpro_book.sh