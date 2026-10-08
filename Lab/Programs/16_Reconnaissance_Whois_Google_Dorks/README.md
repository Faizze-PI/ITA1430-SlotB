# Experiment 16: Reconnaissance Using Google and Whois

## Aim
To gather target domain registration records, authoritative DNS nameservers, registrant details using WHOIS, and identify exposed sensitive information using advanced Google Search operators (Google Dorks).

## Theory
### 1. WHOIS Protocol
WHOIS is a query and response protocol widely used for querying databases that store the registered users or assignees of an Internet resource, such as a domain name or an IP address block.
* **Information Revealed:** Registrar, creation/expiration dates, DNS nameservers, administrative and technical contact emails.
* **Syntax:** `whois <domain_name>`

### 2. Google Dorking (Google Hacking)
Using advanced search operators in search engines to locate security weaknesses, configuration flaws, exposed files, and sensitive credentials accidentally published on web servers.
* **Key Operators:**
  * `site:` - Restricts results to a given domain.
  * `filetype:` or `ext:` - Restricts results to specific file extensions (e.g. `pdf`, `sql`, `env`, `log`).
  * `inurl:` - Filters results containing words in the URL.
  * `intitle:` - Restricts results to pages containing words in the HTML title tag.

## Procedure
1. Execute `whois example.com` in Kali Linux.
2. Examine the registrar and nameserver information.
3. Test search strings such as `site:example.com filetype:pdf` in a browser.

## Output
```text
kali@kali:~$ whois example.com
   Domain Name: EXAMPLE.COM
   Registry Domain ID: 2336799_DOMAIN_COM-VRSN
   Registrar WHOIS Server: whois.iana.org
   Registrar: RESERVED-Internet Assigned Numbers Authority
   Updated Date: 2023-08-14T07:00:00Z
   Creation Date: 1995-08-14T04:00:00Z
   Registry Expiry Date: 2024-08-13T04:00:00Z
   Registrar Abuse Contact Email: abuse@iana.org
   Name Server: A.IANA-SERVERS.NET
   Name Server: B.IANA-SERVERS.NET

[Google Dorks Query Demonstrations]
1. Finding Indexed PDFs:
   Query: site:example.com filetype:pdf
2. Finding Directory Indices:
   Query: site:example.com intitle:"index of /"
3. Finding Administrative Portals:
   Query: site:example.com inurl:admin
```

## Result
Successfully gathered reconnaissance information using WHOIS and Google search queries.
