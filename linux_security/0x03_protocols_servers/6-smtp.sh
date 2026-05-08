#!/bin/bash
smtpd_tls_security_level=$(grep "smtpd_tls_security_level" /etc/postfix/main.cf)
echo "${smtpd_tls_security_level:-STARTTLS not configured}"
