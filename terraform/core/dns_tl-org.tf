# Manage the domain
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

# Accessing domain data
data "gandi_domain" "tl-org" {
  name = gandi_domain.tl-org.name
}

# Managing DNS zone
resource "gandi_livedns_domain" "tl-org" {
  name = data.gandi_domain.tl-org.name
  timeouts {
    default = "3600s"
  }
}

# Managing the NS records of the zone
resource "gandi_nameservers" "tl-org" {
  domain      = data.gandi_domain.tl-org.name
  nameservers = data.gandi_domain.tl-org.nameservers
}

# Managing other records of the zone
resource "gandi_livedns_record" "tl-org_A" {
  name = "@"
  type = "A"
  values = [
    "1.2.3.4"
  ]
  ttl  = 3600
  zone = data.gandi_domain.tl-org.name
}
