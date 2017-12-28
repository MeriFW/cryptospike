require 'gpgme'

GPGME::Key.import(File.open("keys.asc"))
#encrypted = GPGME::Crypto.encrypt "Hello", :always_trust => true
encrypted = GPGME::Crypto.encrypt "Hello", :sign => true, :signers => "filer_test@peertransfer.example.com", :always_trust => true

file = File.open("encrypted_file.gpg", "w")
file.write(encrypted)
