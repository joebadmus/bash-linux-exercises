#!/bin/bash
# These exercises will help you master regular expressions.

# Display a list of all the users on your system who log in with the Bash shell as a default.
echo -e "list of users with bash as default: \n$(getent passwd | grep bash | cut -d: -f1)"

# From the /etc/group directory, display all lines starting with the string "daemon".
echo -e "Display all lines start with with daemon in /etc/groups \n$(less /etc/group | grep -i ^daemon)"


# Print all the lines from the same file that don't contain the string.
echo -e "Display all lines that do not contain the string daemon: \n$(less /etc/group | grep -v daemon)"

# Display localhost information from the /etc/hosts file, display the line number(s)
# matching the search string
echo -e "Display line number matching search  string 'localhost': \n$(cat /etc/hosts | grep -n localhost |  awk '{print $1}' FS=":")"

# and count the number of occurrences of the string.
echo -e "Display nunber of occurence of the string 'localhost': \n$(cat /etc/hosts | grep -wc localhost)"

