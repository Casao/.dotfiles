#!/bin/bash

SSL_CERT_FILE="${SSL_CERT_FILE:-${HOME}/cert_file.pem}"

touch $SSL_CERT_FILE

security find-certificate -a -p > "$SSL_CERT_FILE"
security find-certificate -a -p /Library/Keychains/System.keychain >> "$SSL_CERT_FILE"
security find-certificate -a -p /System/Library/Keychains/SystemRootCertificates.keychain >> "$SSL_CERT_FILE"
