library("xlsx")

revlist<-read.xlsx('allrevs_14Aug.xlsx', sheetName = "Reviews")
allcodes<-unique(revlist$ID)
w<-which(is.na(allcodes))
allcodes<-allcodes[-w]


#for(thisrow in 1:length(allcodes)){
  for(thisrow in 2:6){
  rowtext<-allcodes[thisrow]

  rmarkdown::render("Maria_reports_rewrite.Rmd", output_file=paste0("exported_reports/",rowtext))
}

#reports will just be consecutively numbered; 
# The correct data is identified in the main script by setting thisrow by counting how many 'report' files there are and adding 1

