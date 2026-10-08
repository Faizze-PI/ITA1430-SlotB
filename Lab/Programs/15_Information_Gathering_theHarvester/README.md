# Experiment 15: Information Gathering Using theHarvester

## Aim
To gather publicly available information (OSINT - Open Source Intelligence) including email addresses, subdomains, virtual hosts, open ports/banners, and employee names about a domain using theHarvester.

## Theory
theHarvester is a python tool designed to gather OSINT on a company or domain during the early reconnaissance phase of a penetration test.
* **Syntax:** `theHarvester -d <domain> -b <data_source>`
* **Key Flags:**
  * `-d`: Domain or company name to search.
  * `-b`: Data source: `google`, `bing`, `duckduckgo`, `crtsh`, `virustotal`, `github-code`, `linkedin`.
  * `-l`: Limit the number of search results.
  * `-f`: Save the output into an HTML or XML file.

## Procedure
1. Open the terminal in Kali Linux.
2. Select target domain (e.g. `example.com`).
3. Execute the command: `theHarvester -d example.com -b google`.
4. Inspect discovered email accounts, employee identities, and domain naming infrastructure.

## Sample Output
```text
*******************************************************************
*  _   _                                            _             *
* | |_| |__   ___    /\  /\__ _ _ ____   _____  ___| |_ ___ _ __  *
* | __| '_ \ / _ \  / /_/ / _` | '__\ \ / / _ \/ __| __/ _ \ '__| *
* | |_| | | |  __/ / __  / (_| | |   \ V /  __/\__ \ ||  __/ |    *
*  \__|_| |_|\___| \/ /_/ \__,_|_|    \_/ \___||___/\__\___|_|    *
*******************************************************************
[*] Target: example.com
[*] Searching Google...
[*] Users found: 0
[*] Emails found: 0
[*] Hosts found: 2
    www.example.com:93.184.216.34
    mail.example.com:93.184.216.35
```

## Result
Successfully collected emails, subdomains, and publicly available reconnaissance information.
