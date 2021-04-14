#Generating metadata for team VT_Aquatic

library(neon4cast)

#creating csv from forecast_output in Aquatics_DO_barco.Rmd, could probably move this over to that script
write.csv(forecast_output, "forecast_output_aquatics.csv" )

#these two commands below found at https://projects.ecoforecast.org/neon4cast-docs/submission-instructions.html#metadata-format

#creates tempalte that we fill out: forecast_output_aquatics.yml
neon4cast::create_model_metadata("forecast_output_aquatics.csv") 

#I think we do this when we're ready to submit forecast. just need to add in forecast_file and metadata_yaml actual csv and yml names
neon4cast::write_metadata_eml(forecast_file = forecast_file ,metadata_yaml = metadata_yaml, 
                              forecast_issue_time = Sys.Date(), forecast_iteration_id = "1")


##### need to fix lines in yml file: 27-8, 42, 47-50 when we get to data assimilation