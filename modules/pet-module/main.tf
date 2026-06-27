variable "environment_name" {
  description = "Environment name"
  type        = string
}

resource "random_pet" "my_pet" {
  length = 3
}

output "pet_name" {
  value = random_pet.my_pet.id
}