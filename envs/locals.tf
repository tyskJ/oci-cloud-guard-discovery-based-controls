/************************************************************
Region List
************************************************************/
locals {
  region_map = {
    for r in data.oci_identity_regions.regions.regions :
    r.key => r.name
  }
}

/************************************************************
Cloud Guard Managed Recipes List
************************************************************/
locals {
  detector_recipes_map = {
    for r in data.oci_cloud_guard_detector_recipes.managed.detector_recipe_collection[0].items :
    r.source_detector_recipe_id => r.id
  }
}