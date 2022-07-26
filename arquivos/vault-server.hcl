disable_cache       = true
disable_mlock       = true
ui                  = true

listener "tcp" {
    address         = "0.0.0.0:8200"
    tls_disable     = 0
    tls_cert_file   = "/etc/letsencrypt/live/<<SITE>>/fullchain.pem"
    tls_key_file    = "/etc/letsencrypt/live/<<SITE>>/privkey.pem"
}

storage "file" {
    path            = "/home/<<USER>>/data"
} 

max_lease_ttl       = "10h"
default_lease_ttl   = "10h"