terraform {
  required_providers {
    thingsboard = {
      source = "ansgarm/thingsboard"
      version = "1.0"
    }
  }
}

variable "access_token" {
  type = string
}

provider "thingsboard" {
    endpoint = "https://things.ansgar.dev"
    access_token = var.access_token
}

resource "thingsboard_device" "test_device" {
  name = "test_device"
  device_profile_id = {
    id = "38dde680-e75f-11ee-9cce-e7b956a9bf60" # default profile
    entity_type = "DEVICE_PROFILE" # todo: this should be handled by the provider :thinking: (object could be simplified then.. probably hard to do)
  }
  # tenant_id = {
  #   entity_type = "TENANT"
  #   id = "fake956a9bf60-e75f-11ee-9cce-e7b956a9bf60" # default tenant
  # }
}