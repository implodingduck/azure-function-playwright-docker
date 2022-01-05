# To enable ssh & remote debugging on app service change the base image to the one below
# FROM mcr.microsoft.com/azure-functions/node:3.0-appservice
FROM mcr.microsoft.com/azure-functions/node:4-node14

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true

RUN apt-get update && apt-get install -y libasound2>=1.0.16 \
libatk-bridge2.0-0>=2.5.3 \
libatk1.0-0>=2.2.0 \
libatomic1>=4.8 \
libatspi2.0-0>=2.9.90 \
libavcodec58>=7:4.2 \
libavformat58>=7:4.1 \
libavutil56>=7:4.0 \
libc6>=2.29 \
libcairo2>=1.6.0 \
libcups2>=1.7.0 \
libdbus-1-3>=1.9.14 \
libdrm2>=2.4.38 \
libevent-2.1-7>=2.1.8-stable \
libexpat1>=2.0.1 \
libflac8>=1.3.0 \
libfontconfig1>=2.12.6 \
libfreetype6>=2.10.1 \
libgbm1>=17.1.0~rc2 \
libgcc-s1>=4.0 \
libgcc-s1>=4.2 \
libglib2.0-0>=2.39.4 \
libgtk-3-0>=3.19.12 \
libharfbuzz0b>=2.2.0 \
libicu67>=67.1-1~ \
libjpeg62-turbo>=1:1.5.0 \
libjsoncpp24>=1.9.4 \
liblcms2-2>=2.2+git20110628 \
libminizip1>=1.1 \
libnspr4>=2:4.9-2~ \
libnss3>=2:3.22 \
libopenjp2-7>=2.2.0 \
libopus0>=1.1 \
libpango-1.0-0>=1.14.0 \
libpng16-16>=1.6.2-1 \
libpulse0>=0.99.1 \
libre2-9>=20201101+dfsg \
libsnappy1v5>=1.1.8 \
libstdc++6>=9 \
libvpx6>=1.7.0 \
libwebp6>=0.5.1 \
libwebpdemux2>=0.5.1 \
libwebpmux3>=0.6.1-2+b1 \
libx11-6>=2:1.4.99.1 \
libxcb1>=1.9.2 \
libxcomposite1>=1:0.4.5 \
libxdamage1>=1:1.1 \
libxext6 \
libxfixes3 \
libxml2>=2.7.4 \
libxrandr2 \
libxshmfence1 \
libxslt1.1>=1.1.25 \
zlib1g>=1:1.2.2

COPY . /home/site/wwwroot

RUN cd /home/site/wwwroot && \
    npm install