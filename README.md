# Login Notifier Script (Bash)

## Description
A simple Bash script that simulates a login system and sends an email alert to the user when login is successful.

## Features
- Prompts for email and password input
- Logs login attempts
- Sends login notification email
- Simple credential verification

## Usage
Setup msmtp - a smtp client that transmit a mail to SMTP server which takes care of further delivery
Installation on MAC:
```bash
brew install msmtp
```

Create a config file (msmtprc) to hold the email configuration
```bash
nano `/.msmtprc

ini
defaults
auth      on
tls       on
tls_starttls      on
tls_certcheck      off
tls_trust_file      /opt/homebrew/etc/openssl@1.1/cert.pem
logfile      ~/.msmtp.log
chmod +x login_notify.sh
./login_notify.sh
