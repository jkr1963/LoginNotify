#!/bin/bash

# Hardcoded credentials (for testing only)
stored_email="testu3093@gmail.com"
stored_password="secure123"

# Prompt user for login
read -p "Enter your email: " email
read -s -p "Enter your password: " password
echo ""

# Verify credentials
if [[ "$email" == "$stored_email" && "$password" == "$stored_password" ]]; then
    echo "Login successful."

    # Email components
    SUBJECT="Login Notification"
    BODY="Hi! \n\nA login was detected to your account on $(date). \n\n If this wasn't you, please secure your account."

    # Build full message with headers
    {
        echo "Subject: $SUBJECT"
        echo "To: $email"
        echo "From: $storedemail"
        echo ""
        echo -e "$BODY"
    } | msmtp "$email"
    # Log the login
    echo "$(date): Login from $email" >> login_log.txt

    echo "Login notification sent to $email"
else
    echo "Invalid credentials. Access denied."
fi
