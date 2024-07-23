# Comprehensive Nmap Scan Script

This Bash script automates the process of performing a comprehensive network scan using Nmap. The script takes an IP address as an input, performs an initial scan to find open ports, and then conducts a detailed scan on the identified ports.

## Usage

```bash
./nmap_scan.sh <IP_ADDRESS>
```

<h2>Script Workflow</h2>

1. Input Validation:

* The script checks if an IP address is provided as an argument. If not, it displays the usage instructions and exits.

2. Initial Nmap Scan:

* The script performs an initial scan on all ports (-p-) with a minimum rate of 1000 packets per second (--min-rate=1000) and timing template T4 (-T4). It extracts the open ports from the scan results.

3. Port Check:

* If no open ports are found, the script notifies the user and exits.

4. Detailed Nmap Scan:

* If open ports are found, the script runs a detailed Nmap scan with service detection (-sV), default scripts (-sC), and OS detection and versioning (-A)

5. Output Notification:

* The script informs the user about the location of the saved scan results.

# Requirements
1. Nmap: Ensure Nmap is installed on your system.
2. Root Privileges: The detailed scan requires root privileges to execute certain Nmap options.

Example
```bash
./nmap_scan.sh 192.168.1.1
xsltproc nmap.xml -o nmap.html
firefox nmap.html
```
This will perform a comprehensive Nmap scan on the IP address 192.168.1.1 .

