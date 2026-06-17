# Passive Reconnaissance Report: holbertonschool.com

## 1. Executive Summary
This report contains information gathered through passive reconnaissance using Shodan on the `holbertonschool.com` domain. The objective of this assessment is to identify associated IP ranges, hosted infrastructure, and the technologies/frameworks utilized across its subdomains without directly interacting with the target systems.

---

## 2. IP Ranges and Network Infrastructure
Based on Shodan query data, the following intellectual property (IP) addresses and hosting providers are associated with the domain and its subdomains:

### Associated IP Addresses
* **AWS Infrastructure (Amazon):**
    * `54.157.56.129` (alpha.holbertonschool.com)
    * `52.85.96.82` (rails-assets.holbertonschool.com)
    * `52.85.96.95` (assets.holbertonschool.com)
    * `34.203.198.145` (v2.holbertonschool.com)
    * `54.86.136.129` (v1.holbertonschool.com)
    * `54.89.246.137` (v3.holbertonschool.com)
* **Fastly Inc (CDN):**
    * `151.139.128.10` (fr.webflow.holbertonschool.com / en.fr.holbertonschool.com)
* **Automattic / WordPress:**
    * `192.0.78.131` (blog.holbertonschool.com)
* **Amazon Global Accelerator / Cloudflare:**
    * `99.83.190.102` / `75.2.70.75` (holbertonschool.com apex domain)
    * `104.16.53.111` (support.holbertonschool.com)

### Identified IP Ranges (Netblocks)
* `54.144.0.0/12` (Amazon Technologies Inc.)
* `151.139.0.0/16` (Fastly Inc.)
* `192.0.72.0/21` (Automattic Inc.)
* `104.16.0.0/12` (Cloudflare, Inc.)

---

## 3. Technologies and Frameworks
Shodan banners and HTTP headers reveal a diverse tech stack across various subdomains:

### Web Servers & Reverse Proxies
* **Nginx:** Used heavily across multiple application endpoints for reverse proxying and load balancing.
* **Cloudflare / Fastly:** Utilized for Content Delivery Network (CDN) services, DDoS protection, and SSL termination.

### Content Management Systems (CMS) & Frameworks
* **WordPress:** Powers the corporate and news blog (`blog.holbertonschool.com`).
* **Webflow:** Used for frontend landing pages and localized micro-sites (`webflow.holbertonschool.com`).
* **Ruby on Rails:** Detected on internal student dashboards, static assets pipelines, and platform management tools (`rails-assets.holbertonschool.com`).

### Security and Analytics
* **TLS/SSL:** Global availability of TLS 1.2 and TLS 1.3 enforced by Cloudflare and AWS ALB.
