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

# Profilings tools
# perf is based on the perf_events system, which is based on event-based sampling, and it uses CPU performance counters to profile the application.
# It does not instrument the code, so that it has a really fast speed and generates precise results.

# Google Performance Tools
# Is a collection of tools for analyzing and improving performance of multi-threaded applications. It offers a fast malloc, a thread-friendly heap-checker, a heap-profiler, and a cpu-profiler.

sudo dnf install -y perf
sudo dnf install -y gperftools