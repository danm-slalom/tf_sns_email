variable "display_name" {
    type = "string"
}

variable "email_address" {
    type = "string"
}

variable "owner" {
    type = "string"
}

variable "protocol" {
    default = "email"
    type    = "string"
}

variable "stack_name" {
    type = "string"
}

variable "tags_dac" {
    type = "string"
}

variable "tags_data_classification" {
    type = "string"
}

variable "tags_description" {
    type = "string"
}

variable "tags_environment" {
    type = "string"
}

variable "tags_gbl" {
    type = "string"
}

variable "tags_name" {
    type = "string"
}

variable "tags_owner" {
    type = "string"
}

variable "tags_pyxis" {
    type = "string"
}

variable "tags_static" {
    type = "string"
}

variable "tags_version" {
    type = "string"
}
