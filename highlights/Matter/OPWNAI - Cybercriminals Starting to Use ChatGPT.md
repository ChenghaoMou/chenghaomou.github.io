---
url: "https://research.checkpoint.com/2023/opwnai-cybercriminals-starting-to-use-chatgpt/"
publisher: "research.checkpoint.com"
published: 2023-01-06
aliases:
  -  "OPWNAI : Cybercriminals Starting to Use ChatGPT"
title: "OPWNAI : Cybercriminals Starting to Use ChatGPT"
---

## Highlights
> On December 29, 2022, a thread named “ChatGPT – Benefits of Malware” appeared on a popular underground hacking forum. The publisher of the thread disclosed that he was experimenting with ChatGPT to recreate malware strains and techniques described in research publications and write-ups about common malware. As an example, he shared the code of a Python-based stealer that searches for common file types, copies them to a random folder inside the Temp folder, ZIPs them and uploads them to a hardcoded FTP server. Figure 1 –Cybercriminal showing how he created infostealer using ChatGPT Our analysis of the script confirms the cybercriminal’s claims. This is indeed a basic stealer which searches for 12 common file types (such as MS Office documents, PDFs, and images) across the system. If any files of interest are found, the malware copies the files to a temporary directory, zips them, and sends them over the web. It is worth noting that the actor didn’t bother encrypting or sending the files securely, so the files might end up in the hands of 3rd parties as well.

> The second sample this actor created using ChatGPT is a simple Java snippet. It downloads PuTTY, a very common SSH and telnet client, and runs it covertly on the system using Powershell. This script can of course be modified to download and run any program, including common malware families.

> When another cybercriminal commented that the style of the code resembles openAI code, USDoD confirmed that the OpenAI gave him a “nice [helping] hand to finish the script with a nice scope.”

> While our first two examples focused more on malware-oriented use of ChatGPT, this example shows a discussion with the title “Abusing ChatGPT to create Dark Web Marketplaces scripts.” In this thread, the cybercriminal shows how easy it is to create a Dark Web marketplace, using ChatGPT. The marketplace’s main role in the underground illicit economy is to provide a platform for the automated trade of illegal or stolen goods like stolen accounts or payment cards, malware, or even drugs and ammunition, with all payments in cryptocurrencies. To illustrate how to use ChatGPT for these purposes, the cybercriminal published a piece of code that uses third-party API to get up-to-date cryptocurrency (Monero, Bitcoin and Etherium) prices as part of the Dark Web market payment system.

