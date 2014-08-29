# Rails Security and HIPAA

## Part 1: Nothing is safe

- Technology + humans = vulnerability
    + Social engineering
    + Man in the Middle
    + Algorithmic Complexity Attacks

>That just sounds freaking cool, doesn't it?

>These take advantage of a particular weakness in your operating system, application stack, etc. to fill up your server's memory, peg your CPU, etc.

>For example, the classic SYN flood attack works by sending SYN requests to a server. The server opens a ton of connections which aren't closed. With enough open connections, the OS will run out of ram.

>### A recent exploit

>Ancient history? Not really. A recently patched flaw in the JSON gem would let an attacker max out your ram by creating millions of Ruby symbols. Symbols are never garbage-collected.

- Simplicity vs. Security
- Hierarchy of IT Needs http://informationsecurity.451research.com/wp-uploads/2014/08/hierarchyofITneeds-577x430.jpg

## Part 2: Rails makes it easy

- CSRF tokens
- XSS tokens
- config.force_ssl
- Sanitize inputs http://imgs.xkcd.com/comics/exploits_of_a_mom.png
- Authentication & Authorization
- Gems:
    + Devise
    + Sorcery
    + BCrypt
    + CanCanCan
    + Authority
    + Doorkeeper & OAuth

## Part 3: HIPAA - It's easier than you think

- What HIPAA is
- What HIPAA isn't
- HIPAA compliance without a compliance certification
- Encrypt EVERYTHING
    + AESCrypt
    + Gibberish
    + attr_encrypted
    + CryptKeeper
    + Symmetric Encryption
- SSL on everything (we should start doing this anyways)
- Plan for failure

## Part 4: How we set it up

- AWS HIPAA coverage - implied BAA's
- Hardware, AZ, and region failure - spend more for failover
- Everything is on SSL, even in our own VPC
- Lock down the database and ports
- Have a plan in place - data breach is bound to happen

## Resources

- http://www.hipaa.com/2013/10/five-steps-to-hipaa-security-compliance/
- http://techcrunch.com/2014/02/14/truevault-launches-to-bring-easy-hipaa-compliance-to-startups-and-health-apps/
- http://www.slideshare.net/ControlGroup/building-maintaining-hipaacompliant-applications-in-aws
- http://fzysqr.com/2012/03/15/a-guide-to-hosting-your-hipaa-app-in-amazon-web-services/