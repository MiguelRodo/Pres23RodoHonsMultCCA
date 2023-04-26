sudo apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && sudo apt-get upgrade -y \
  && sudo apt-get install -y apt-utils \
      gdebi-core \
      openssh-client \
      gnupg2 \
      dirmngr \
      iproute2 \
      procps \
      lsof \
      htop \
      net-tools \
      psmisc \
      curl \
      wget \
      rsync \
      ca-certificates \
      unzip \
      zip \
      nano \
      vim-tiny \
      less \
      jq \
      lsb-release \
      apt-transport-https \
      dialog \
      libc6 \
      libgcc1 \
      libkrb5-3 \
      libgssapi-krb5-2 \
      libicu[0-9][0-9] \
      libicu-dev \
      libstdc++6 \
      zlib1g \
      locales \
      sudo \
      ncdu \
      man-db \
      strace \
      manpages \
      manpages-dev \
      librdf0-dev \
      init-system-helpers \
  && sudo apt-get -y install libsecret-1-0 \
  && sudo apt-get -y install \
      python3-pip \
      libgit2-dev \
      libcurl4-openssl-dev \
      libssl-dev \
      libxml2-dev \
      libxt-dev \
      libfontconfig1-dev \
      libcairo2-dev \
  && sudo apt-get -y install \
      libgeos-dev \
      libgdal-dev \
      libproj-dev \
      libudunits2-dev \
      libsodium-dev \
      openjdk-8-jdk \
      openjdk-8-jre \
      cargo \
      libfreetype6-dev \
      libclang-dev \
  && sudo apt-get autoremove -y && sudo apt-get clean -y && sudo rm -rf /var/lib/apt/lists/* \
  && echo "options(radian.editing_mode = 'vi')" > ~/.radian_profile \
  && echo "options(radian.auto_match = FALSE)" >> ~/.radian_profile \
  && Rscript -e "renv::restore()"
