## Describe MTLS

### Mutual TLS

[Mutual authentication](https://en.wikipedia.org/wiki/Mutual_authentication)? How does that work? It involves creating your own Certification Authority, self-signing the server and client certificate for the admin panel, and installing your Certification Authority and the client certificate in a browser.

Does that mean you won’t need the traditional admin login protection anymore? In theory, no; it’s not needed anymore. However we’d like to add another unobtrusive level of authentication here, so we’ll keep the login form. Also, we still need the login for CSRF protection.

[docs](https://diogomonica.com/2017/01/11/hitless-tls-certificate-rotation-in-go/)    
[docs](https://blog.codeship.com/how-to-set-up-mutual-tls-authentication/)   
describe-MTLS.md
