#!/bin/bash
#add fix to exercise5-server2 here
cd /home/vagrant/.ssh/
echo "Host server1
    HostName server1
    IdentityFile ~/.ssh/server1.key
	" > /home/vagrant/.ssh/config
echo "-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEAy5PxdTRH9CkNvN4wWE31wnuNheJQvql/kymB0f7O3MTslsLT
Wdkh8O3IG3KCbHfGOv/9kESFK6Zk56QagZTiGvvBdAghHGDOC2rBT7sj9h7VEDuU
VSmqNyz367eEhxSF87nRVPLIP/1z+5jV7qkjKaAxrWSDCuGlgC7Aa98c0Cfr6j/G
g5szZHI0E1nAoNMvtuziUx1rAtVJjJw//pM/iIFVkO18WlnU2ycrSJ0wgHkvP/dX
DoM6v1SDWMRL6OJFMjoYnlbDeaRHxaFTeVfKfKkppLsE+DkuoagHxpHUB2mlcdM+
T6iCmcdg7WVeQBnO9U3dcd0J9o2iwz3kdrZ/qQIDAQABAoIBAQCWyUfJRiYdhOL2
B6TLY0MrABS9G/ounqEtwUq03gUepIWQzVF6dUeciqLzIYfVC4o6XS3U08vHnwGS
SYyQelRXJC4P4Y2U1WcIMdRpV/W08PVjhp3BzpCTOa2QXGe/HcZx1ipkv0bvjq1/
p56dnY274Tmqco5VWvkYzogb3jAbRIJnZhVCkZPBVAOpnl9VuKGJGQvFDN+BgoFj
h5QiVEiaFSqkeDC14dsjbotoFaqH/6mo5trd5C4/Au3WEr5Q1BGlTw5pPwegBFSr
TkRhmBNC6ET/64pc55+Couuqp9vF21+eQcbuLOfbGMdAy7oAkYH/Bwufww7dfzLg
qJHE9cp5AoGBAP4xXlseJZRXEaIl0bR9Ukw47SzEuz7qF9GbYAzGNPq/MHJfymf+
YVbXPLs9AHpOdtE0sSJNws+sJJpAWDIGZuww6F8UY65gqNt2rgNvTWT6YxrCyns+
Zd+PiN9nlfujRx+4Dq3jINPMCc3uL7KYH5aqc6zMt38gz2rjbKjZtpj7AoGBAM0G
dJCttLRf6cR+rSNf3gx12mMoeDFQz5hVbpO4adsGJR8tiTHhqyxWtI5okp/+lr3l
uOFkPnNOaoTV4pnZm/q2k1JRm32mbNvJnRvp89dgD1EWshhLhN/+NKQ5CT+82t1u
PWlzcIUsI027uJ1HPNs/3eY6TobgbWlPvY80ifCrAoGAE9fOwdYsoNPbMIk7QZe2
4PRgr2n8JAEqMtaqPNUMNbbPFV6c8llNR/Yta4BrlSCi7dnrKf5gAs4xXUlAmUce
qbl3qlRxI5+wDtHI68O4ivVw3xntrIlGcplF2grADpDEcJlxq+lbGq2G5mh9mLd/
X8eWmBqzCF2LU5DFXrkAJBkCgYBMg5446DrKHglV5Zij3QE3UTxBSTch4HC4/xkX
U/ldXfu4mPvce8Wv9GPJycj+oLqNABBxPUH5Mkiabl/03rtRY5WzYPVQfS2fEKzr
X/I6bIUK1Bd+7aAXH/1xVD/ZY5eij6OnmQdjC8fZGLebKpzRjhI3+4aW22a5qKKr
sQXRpQKBgHzsLHeA53gv+IA9eQ+lQUqYeMxJwJPPfZ4If90DEs2BsYGPh8F/lLrh
fns97L5s1wV3jz1GnIV6kgP/KVfWjYYzdu0ugGYjaVB684RN93hVYhGknNy24Yxq
iAvR8cwmW6OID2jePcNuH7/1gBwPjKFSkV5JeIeFeIue0ACSRz2I
-----END RSA PRIVATE KEY-----
" > /home/vagrant/.ssh/server1.key
sudo chmod 600 /home/vagrant/.ssh/server1.key
echo "|1|4xsEIXTdmHWOAYa63mHna3YQx1s=|k6E8pGWLbuiOWgzqrW/4k0QrfPU= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAGWC5k4U05C3HzUq27vog/GO1T2n72fmILYA2e0O05S/V8G+i92TsmHl09T/6lTMBpFavv7737fHcmttoUfLHM=
|1|U4+iBdhTyMsIff0PuJw4r8TcuR4=|LSv7gdPQmhLS1h7+NVHnU0uYa5M= ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBAGWC5k4U05C3HzUq27vog/GO1T2n72fmILYA2e0O05S/V8G+i92TsmHl09T/6lTMBpFavv7737fHcmttoUfLHM=
" > /home/vagrant/.ssh/known_hosts
sudo service ssh restart

