################################################################################
#                              Bash script template                            #
#                                                                              #
# Installing software for CentOS/RHEL                                          #
#                                                                              #
#                                                                              #
# Usage: sudo -u $USER ./RHEL_install.sh                                       #
#                           Original code.                                     #
#                                                                              #
#                                                                              #
#                                                                              #
#                                                                              #
################################################################################

#!/bin/bash

sudo dnf update -y

# Standard application group install.
sudo dnf groupinstall -y "Virtualization" --skip-broken
sudo dnf groupinstall -y "Container Management" --skip-broken
sudo dnf groupinstall -y "Development Tools" --skip-broken &&
sudo dnf groupinstall -y "Vagrant with libvirt support" --skip-broken
sudo dnf groupinstall -y "System tools" --skip-broken
sudo dnf groupinstall -y "Text-based Internet" --skip-broken
sudo dnf groupinstall -y "Administration Tools" --skip-broken

# Standard software.
sudo dnf install -y gnupg2
sudo dnf install -y ShellCheck
sudo dnf install -y elinks
sudo dnf install -y autossh
sudo dnf install -y jpegoptim 
sudo dnf install -y deja-dup 
sudo dnf install -y vim
sudo dnf install -y podman-docker 
sudo dnf install -y ansible
sudo dnf install -y gnome-tweaks
sudo dnf install -y spice-vdagent

# Lynis is one of the most trusted automated auditing tool for software patch management, malware scanning and vulnerability detecting in Unix/Linux based systems. (https://cisofy.com/)
sudo dnf install -y lynis

# Auditing with Auditd Tool on CentOS/RHEL https://www.tecmint.com/linux-system-auditing-with-auditd-tool-on-centos-rhel/
sudo dnf install -y auditd

# Autofs for automatically mounting directories at request basis instead of automatically when the server starts.
# "Autofs uses the automount daemon to manage your mount points by only mounting them dynamically when they are accessed."
sudo dnf install -y autofs

# SeLinux Troubleshoot program
sudo dnf install -y setroubleshoot

# SELinux Policy Management tool.
sudo dnf install -y policycoreutils-python

# Program to configure kickstart files
sudo dnf install -y system-config-kickstart

# Verifying the Kickstart File woth pykickstart
sudo dnf install -y pykickstart

# GUI installation.
#sudo dnf groupinstall -y "GNOME Desktop" --skip-broken
#sudo dnf groupinstall -y "Graphical Administration Tools" --skip-broken

# Set target to graphical.target to run GUI.
#sudo systemctl set-default graphical.target

# Immediately GUI for server.
#sudo systemctl isolate graphical.target

# Profilings tools
# perf is based on the perf_events system, which is based on event-based sampling, and it uses CPU performance counters to profile the application.
# It does not instrument the code, so that it has a really fast speed and generates precise results.

# Google Performance Tools
# Is a collection of tools for analyzing and improving performance of multi-threaded applications. It offers a fast malloc, a thread-friendly heap-checker, a heap-profiler, and a cpu-profiler.
sudo dnf install -y perf
sudo dnf install -y gperftools

# Programming languages
sudo dnf install -y python3
sudo dnf install -y nodejs


# Made by Guillermo