module "my_resource_group" {
  source = "./resource_group"
  resource_group_name = "TESTING"
  resource_group_location = "West US"
  resource_group_environment = "dev"
  porfolio_name ="foods"
  
}
