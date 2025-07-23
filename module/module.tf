module "rg" {
  source = "../infra"
}

module "sg" {
    depends_on = [ module.rg ]
  source = "../infra"

}
