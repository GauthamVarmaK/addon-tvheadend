#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: TVHeadend
# Executes user customizations on startup
# ==============================================================================

check_webgrabplus(){
    if [ -z "$(ls -A /config/tvheadend/wg++)" ]; then return 1; else return 0; fi
}

webgrabplus_install(){
    if apk update; then
        bashio::log.info '[Webgrab+] APK: Installing required packages.'
        if apk add --no-cache --virtual .build-deps git mono --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing; then
            bashio::log.info '[Webgrab+] Installing Webgrab+.'
            cd /tmp \
            && wget http://webgrabplus.com/sites/default/files/download/SW/V3.3.0/WebGrabPlus_V3.3_install.tar.gz  \
            && tar -zxvf WebGrabPlus_V3.3_install.tar.gz \
            && rm WebGrabPlus_V3.3_install.tar.gz  \
            && mv .wg++/ /config/tvheadend/wg++  \
            && cd /config/tvheadend/wg++  \
            && ./install.sh \
            && rm -rf siteini.pack/  \
            && wget http://webgrabplus.com/sites/default/files/download/ini/SiteIniPack_current.zip \
            && unzip SiteIniPack_current.zip \
            && rm SiteIniPack_current.zip \
            && cp siteini.pack/India/* siteini.user/ \
            && wget -O /usr/bin/tv_grab_wg++ http://www.webgrabplus.com/sites/default/files/tv_grab_wg.txt \
            && sed -i 's|~/.wg++/guide.xml|/config/tvheadend/wg++/guide.xml|g' /usr/bin/tv_grab_wg++ \
            && chmod a+x /usr/bin/tv_grab_wg++
        else
            bashio::log.info '[Webgrab+] APK: Critical error. Unable install required packages.'
            exit 1
        fi
        bashio::log.info '[Webgrab+] APK: Removing packages no longer required.'
        apk del --no-cache --purge .build-deps
    else
        bashio::log.error '[Webgrab+] APK: Critical error. Unable to update pkg list. Check connectivity.'
        exit 1
    fi
    bashio::log.info '[Webgrab+] Finsihed all APK and PIP3 updates and installs.'
}

# Ensure directory exists
if ! bashio::fs.directory_exists '/config/tvheadend/'; then
    bashio::log.info "Creating default configuration directory at /config/tvheadend/"
    mkdir -p /config/tvheadend/recordings
    timeout 20s /usr/bin/tvheadend --firstrun -u root -g root -c /config/tvheadend
fi

if check_webgrabplus; then
    bashio::log.info "[Webgrab+] Webgrab+ already installed"
else
    bashio::log.info "[Webgrab+] No webgrab+ installation found - Installing webgrab+"
    webgrabplus_install
    chmod +x /usr/bin/restart_addon
    exec /usr/bin/restart_addon
fi

bashio::log.info '[Webgrab+] Setup completed without errors!!'
