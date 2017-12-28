require 'gpgme'

GPGME::Key.import(File.open("keys.asc"))
encrypted = GPGME::Crypto.encrypt "Hello", :sign => true, :always_trust => true

file = File.open("encrypted_file.gpg", "w")
file.write(encrypted)
