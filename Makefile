# Copyright © 2017-2018 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

export HOME = /nonexistent

.PHONY: all
all: cert.pem

cert.pem:
	umask 0077 && openssl req -x509 -newkey rsa:2048 -nodes -batch -subj '/CN=invalid/' -keyout $(@) -out $(@)

.PHONY: clean
clean:
	rm -f cert.pem

# vim:ts=4 sts=4 sw=4 noet
