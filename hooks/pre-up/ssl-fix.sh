#!/bin/bash

if [ ! -f $SSL_CERT_FILE ]; then
  security find-certificate -a -p /Library/Keychains/System.keychain > "$SSL_CERT_FILE"
  security find-certificate -a -p /System/Library/Keychains/SystemRootCertificates.keychain >> "$SSL_CERT_FILE"
fi
