resource "gandi_domain" "tl-org" {
  name = "tahoe-lafs.org"
  owner {
    city            = "Gotham"
    country         = "US"
    data_obfuscated = true
    email           = "contact@example.com"
    extra_parameters = {
      birth_city       = ""
      birth_country    = ""
      birth_date       = ""
      birth_department = ""
    }
    organisation    = "Tahoe-LAFS"
    family_name     = "LAFS"
    given_name      = "Terlog"
    mail_obfuscated = true
    phone           = "+31.234567890"
    street_addr     = "The place to be, 1"
    type            = "association"
    zip             = "12345"
  }
}
