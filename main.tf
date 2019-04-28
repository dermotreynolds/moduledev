module "my_resource_group" {
  source = "github.com/dermotreynolds/moduledev/resource_group"
  resource_group_name = "TESTING"
  resource_group_region = "West US"
  resource_group_environment = "dev"
  porfolio_name ="foods"
  
}
