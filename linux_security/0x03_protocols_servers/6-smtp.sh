#!/bin/bash
smtpd_tls_security_level=$(grep "^smtpd_tls_security_level" /etc/postfix/main.cf)

if [ -z "$smtpd_tls_security_level" ]; then
    echo "STARTTLS not configured"
else
    echo "$smtpd_tls_security_level"
fi
