.PHONY: all
all: cert.pem

cert.pem:
	openssl req -x509 -newkey rsa:2048 -nodes -batch -subj '/CN=invalid/' -keyout $(@) -out $(@)

# vim:ts=4 sts=4 sw=4 noet
