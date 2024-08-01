## Rock-Paper-Scissors

Dependencies:
* Docker

Instructions:
* docker buildx build -t rps .
* docker run -p 3000:3000 -e RAILS_MASTER_KEY="(YOUR_MASTER_KEY_HERE)" rps
* go to http://localhost:3000 or http://127.0.0.1:3000 in your browser and enjoy.


P.S. There might be some problem where browser automatically changes http:// to https://, which messes up with application. In such case Please delete all browsing history with cache and cookies and try again. Thank you!