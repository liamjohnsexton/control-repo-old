class profile::file_test (
Sensitive[String[1]] $sensitive_content
){

file { '/tmp/eyaml_decrypted.txt':
  ensure  => file,
  content => $sensitive_content,
  }
}
