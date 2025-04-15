# ---------------------------------------------
# Overleaf Community Edition (overleaf/overleaf)
# ---------------------------------------------
ARG SHARELATEX_TAG=sharelatex/sharelatex:latest
FROM $SHARELATEX_TAG
    
# Install Windows Fonts
RUN apt-get update && \
    echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula boolean true" | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ttf-mscorefonts-installer && \
    rm -rf /var/lib/apt/lists/*
    
# Install full TexLive2025
# ------------------------
RUN cd /usr/local/texlive \
# &&  tlmgr option repository https://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet \
&&  tlmgr update --self --all \
&&  luaotfload-tool -fu \
&&  tlmgr install scheme-full \
&&  cp /usr/local/texlive/2025/texmf-var/fonts/conf/texlive-fontconfig.conf /etc/fonts/conf.d/09-texlive.conf \
&&  fc-cache -fsv
   
EXPOSE 80
  
WORKDIR /
    
ENTRYPOINT ["/sbin/my_init"]