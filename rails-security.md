# Rails Security and HIPAA

## Part 1: Nothing is safe

- Technology + humans = vulnerability
    + Social engineering
    + Man in the Middle
    + Algorithmic Complexity Attacks
    That just sounds freaking cool, doesn't it?

These take advantage of a particular weakness in your operating system, application stack, etc. to fill up your server's memory, peg your CPU, etc.

For example, the classic SYN flood attack works by sending SYN requests to a server. The server opens a ton of connections which aren't closed. With enough open connections, the OS will run out of ram.

        A recent exploit
Ancient history? Not really. A recently patched flaw in the JSON gem would let an attacker max out your ram by creating millions of Ruby symbols. Symbols are never garbage-collected.
- Simplicity vs. Security
- Hierarchy of IT Needs
- Authentication & Authorization

## Part 2: Rails makes it easy

- CSRF tokens
- XSS tokens
- config.force_ssl
- Gems:
    + Devise
    + Sorcery
    + CanCanCan
    + Authority
    + Doorkeeper & OAuth

## Part 3: HIPAA - It's easier than you think