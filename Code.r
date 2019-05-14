---
title: "STAT253 â€“ Homework#<HW1>"
author: "Mucahit Tanacioglu - <150115006>"
date: "29 Mart 2019"
output:
  html_document:
    df_print: paged
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
```{r chunkLabel} 
  MyData = read.csv(file = ("R/HW#1/HW1_Data_v1.csv"),header = TRUE,sep = ";")
  AgeVsGender = data.frame(MyData$GENDER,MyData$AGE)
  SysbpVsGender = data.frame(MyData$GENDER,MyData$SYSBP)
  DiasbpVsGender = data.frame(MyData$GENDER,MyData$DIASBP)
  
  DataOfMale = getDataOfGender(data = MyData,gender = 0)
  DataOfFemale = getDataOfGender(data = MyData,gender = 1)
  
  # a.) Calculate the sample mean.-----------------------------------------------------------------------------
  meanOfAgeMale = getMean(data = AgeVsGender,genderVal=0)
  meanOfSYSBPMale = getMean(data = SysbpVsGender,genderVal=0)
  meanOfDIASBPMale = getMean(data = DiasbpVsGender,genderVal=0)
  
  meanOfAgeMale
  meanOfSYSBPMale
  meanOfDIASBPMale
  
  #Mean value of gender male's.
  
  meanOfAgeFemale = getMean(data = AgeVsGender,genderVal=1)
  meanOfSYSBPFemale = getMean(data = SysbpVsGender,genderVal=1)
  meanOfDIASBPFemale = getMean(data = DiasbpVsGender,genderVal=1)
  
  meanOfAgeFemale
  meanOfSYSBPFemale 
  meanOfDIASBPFemale
  
  #Mean value of gender female's.
  
  # b.) Calculate the sample variance.-------------------------------------------------------------------------
  VarianceOfAgeMale = getVariance(mean = meanOfAgeMale , data = AgeVsGender,gender = 0)
  VarianceOfSYSBPMale = getVariance(mean = meanOfSYSBPMale , data = SysbpVsGender,gender = 0)
  VarianceOfDIASBPMale = getVariance(mean = meanOfDIASBPMale , data = DiasbpVsGender, gender = 0)
  
  VarianceOfAgeMale
  VarianceOfSYSBPMale
  VarianceOfDIASBPMale
  
  #Variance of gender male's.
  
  VarianceOfAgeFemale = getVariance(mean = meanOfAgeFemale , data = AgeVsGender,gender = 0)
  VarianceOfSYSBPFemale = getVariance(mean = meanOfSYSBPFemale , data = SysbpVsGender,gender = 0)
  VarianceOfDIASBPFemale = getVariance(mean = meanOfDIASBPFemale , data = DiasbpVsGender, gender = 0)
  
  VarianceOfAgeFemale
  VarianceOfSYSBPFemale
  VarianceOfDIASBPFemale
  
  #Variance of gender female's.
  
  # c.) Find the sample standard deviation.--------------------------------------------------------------------
  sqrt(VarianceOfAgeMale)
  sqrt(VarianceOfSYSBPMale)
  sqrt(VarianceOfDIASBPMale)

  #Standart deviation of gender male's.
  
  sqrt(VarianceOfAgeFemale)
  sqrt(VarianceOfSYSBPFemale)
  sqrt(VarianceOfDIASBPFemale)
  #Standart deviation of gender female's.
  
  # d.) Find the lower and upper quartiles. -------------------------------------------------------------------
    LowerQuartileOfAgeMale = getLowerQuartile(data = sort(DataOfMale$AGE))
    LowerQuartileOfSYSBPMale = getLowerQuartile(data = sort(DataOfMale$SYSBP))
    LowerQuartileOfDIASBMale = getLowerQuartile(data = sort(DataOfMale$DIASB))
    
    LowerQuartileOfAgeMale
    LowerQuartileOfSYSBPMale
    LowerQuartileOfDIASBMale
   #Lower quartiles of male data.
    
    UpperQuartileOfAgeMale = getUpperQuartile(data = sort(DataOfMale$AGE))
    UpperQuartileOfSYSBPMale = getUpperQuartile(data = sort(DataOfMale$SYSBP))
    UpperQuartileOfDIASBMale = getUpperQuartile(data = sort(DataOfMale$DIASB))
    
    UpperQuartileOfAgeMale
    UpperQuartileOfSYSBPMale
    UpperQuartileOfDIASBMale
    #Upper quartiles of male data.
    LowerQuartileOfAgeFemale = getLowerQuartile(data = sort(DataOfFemale$AGE))
    LowerQuartileOfSYSBPFemale = getLowerQuartile(data = sort(DataOfFemale$SYSBP))
    LowerQuartileOfDIASBFemale = getLowerQuartile(data = sort(DataOfFemale$DIASB))
    
    LowerQuartileOfAgeFemale
    LowerQuartileOfSYSBPFemale
    LowerQuartileOfDIASBFemale
   #Lower quartiles of female data.
    
    UpperQuartileOfAgeFemale = getUpperQuartile(data = sort(DataOfFemale$AGE))
    UpperQuartileOfSYSBPFemale = getUpperQuartile(data = sort(DataOfFemale$SYSBP))
    UpperQuartileOfDIASBFemale = getUpperQuartile(data = sort(DataOfFemale$DIASB))
    
    UpperQuartileOfAgeFemale
    UpperQuartileOfSYSBPFemale
    UpperQuartileOfDIASBFemale
    #Upper quartiles of female data.
    
  
  # e.) What are the maximum and minimum values? --------------------------------------------------------------
  MaxValOfAgeMale = getMax(data = AgeVsGender,gender = 0)
  MaxValOfSYSBPMale = getMax(data = SysbpVsGender,gender = 0)
  MaxValOfDIASBPMale = getMax(data = DiasbpVsGender,gender = 0)
  
  MaxValOfAgeMale
  MaxValOfSYSBPMale
  MaxValOfDIASBPMale
  #Maximum value of gender male's.
 
  MaxValOfAgeFemale = getMax(data = AgeVsGender,gender = 1)
  MaxValOfSYSBPFemale = getMax(data = SysbpVsGender,gender = 1)
  MaxValOfDIASBPFemale = getMax(data = DiasbpVsGender,gender = 1)
  
  MaxValOfAgeFemale
  MaxValOfSYSBPFemale
  MaxValOfDIASBPFemale
  
  #Maximum value of gender female's.
  
  MinValOfAgeMale = getMin(data = AgeVsGender,gender = 0)
  MinValOfSYSBPMale = getMin(data = SysbpVsGender,gender = 0)
  MinValOfDIASBPMale = getMin(data = DiasbpVsGender,gender = 0)
  
  MinValOfAgeMale
  MinValOfSYSBPMale
  MinValOfDIASBPMale
  #Minimum value of gender male's.
 
  MinValOfAgeFemale = getMin(data = AgeVsGender,gender = 1)
  MinValOfSYSBPFemale = getMin(data = SysbpVsGender,gender = 1)
  MinValOfDIASBPFemale = getMin(data = DiasbpVsGender,gender = 1)
  
  MinValOfAgeFemale
  MinValOfSYSBPFemale
  MinValOfDIASBPFemale
  
  #Minimum value of gender female's.
  
  #f.) Calculate the range.--------------------------------------------------------------------------------------
  MaxValOfAgeMale-MinValOfAgeMale
  MaxValOfDIASBPMale-MinValOfDIASBPMale
  MaxValOfSYSBPMale-MinValOfSYSBPMale
  
  #Range of all samples as gender male.
  
  MaxValOfAgeFemale-MinValOfAgeFemale
  MaxValOfDIASBPFemale-MinValOfDIASBPFemale
  MaxValOfSYSBPFemale-MinValOfSYSBPFemale
  
  #Range of all samples as gender male.
  
  #g.) Compare the range and the standard deviation. The range is approximately how many standard deviations? ----
  (MaxValOfAgeMale-MinValOfAgeMale)/sqrt(VarianceOfAgeMale)
  (MaxValOfDIASBPMale-MinValOfDIASBPMale)/sqrt(VarianceOfDIASBPMale)
  (MaxValOfSYSBPMale-MinValOfSYSBPMale)/sqrt(VarianceOfSYSBPMale)
  
  #Range divided by standart deviation gender male's.
  
  (MaxValOfAgeFemale-MinValOfAgeFemale)/sqrt(VarianceOfAgeFemale)
  (MaxValOfDIASBPFemale-MinValOfDIASBPFemale)/sqrt(VarianceOfDIASBPFemale)
  (MaxValOfSYSBPFemale-MinValOfSYSBPFemale)/sqrt(VarianceOfSYSBPFemale)
  
  #Range divided by standart deviation gender female's.
  
  # h.) What is the median? ----------------------------------------------------------------------------------------
  MedianValOfAgeMale = getMedian(data = sort(DataOfMale$AGE))
  MedianValOfSYSBPMale = getMedian(data = sort(DataOfMale$SYSBP))
  MedianValOfDIASBPMale = getMedian(data = sort(DataOfMale$DIASBP))
  
  MedianValOfAgeMale
  MedianValOfSYSBPMale
  MedianValOfDIASBPMale
  #Median value of all samples gender male's.
  
  MedianValOfAgeFemale = getMedian(data = sort(DataOfFemale$AGE))
  MedianValOfSYSBPFemale = getMedian(data = sort(DataOfFemale$SYSBP))
  MedianValOfDIASBPFemale = getMedian(data = sort(DataOfFemale$DIASBP))
  
  MedianValOfAgeFemale
  MedianValOfSYSBPFemale
  MedianValOfDIASBPFemale
  #Median value of all samples gender female's.
  
  #i) Calculate the IQR.--------------------------------------------------------------------------------------------
  
  IQROfAgeMale = UpperQuartileOfAgeMale-LowerQuartileOfAgeMale
  IQROfSYSBPMale = UpperQuartileOfSYSBPMale-LowerQuartileOfSYSBPMale
  IQRDIASBPMale = UpperQuartileOfDIASBMale-LowerQuartileOfDIASBMale
  
  IQROfAgeMale
  IQROfSYSBPMale
  IQRDIASBPMale
  #IQR of male's samples.
  
  IQROfAgeFemale = UpperQuartileOfAgeFemale-LowerQuartileOfAgeFemale
  IQROfSYSBPFemale = UpperQuartileOfSYSBPFemale-LowerQuartileOfSYSBPFemale
  IQRDIASBPFemale = UpperQuartileOfDIASBFemale-LowerQuartileOfDIASBFemale
  
  IQROfAgeFemale
  IQROfSYSBPFemale
  IQRDIASBPFemale
  #IQR of female's samples.
  
  #j.) Calculate five-number summaries. ----------------------------------------------------------------------------
  
  #k.) Construct box plot for the data set. Are there any outliers? What does the box plot tell you about the shape of the distribution? 
  
  boxplot(DataOfMale$AGE,main = "Boxplot of Age Gender Male")
  boxplot(DataOfMale$SYSBP,main = "Boxplot of SYSBP Gender Male") # 1 outlier.
  boxplot(DataOfMale$DIASBP,main = "Boxplot of DIASBP Gender Male")  # 2 outliers.
  #Boxplot of male dataset.
  
  boxplot(DataOfFemale$AGE,main = "Boxplot of Age Gender Female")
  boxplot(DataOfFemale$SYSBP,main = "Boxplot of SYSBP Gender Female") # 1 outlier.
  boxplot(DataOfFemale$DIASBP,main = "Boxplot of DIASBP Gender Female")  # 2 outliers.
  #Boxplot of female dataset.
  
  #l.) Construct and interpret stem-and-leaf plot ------------------------------------------------------------------
  
  stem(DataOfMale$AGE)
  stem(DataOfMale$SYSBP)
  stem(DataOfMale$DIASBP)
  
  stem(DataOfFemale$AGE)
  stem(DataOfFemale$SYSBP)
  stem(DataOfFemale$DIASBP)
  
  #m.) Construct and interpret histograms  -------------------------------------------------------------------------
  
  #n.) Draw a dotplot of this data set. Are the data mound shaped? -------------------------------------------------
  dotchart(DataOfMale$AGE)
  dotchart(DataOfMale$SYSBP)
  dotchart(DataOfMale$DIASBP)
  
  dotchart(DataOfFemale$AGE)
  dotchart(DataOfFemale$SYSBP)
  dotchart(DataOfFemale$DIASBP)
  #o.) Can you use Tchebysheff’s Theorem to describe this data set? Why or why not? --------------------------------
  
  #We can use Tchebysheff’s Theorem to describe this data set because Tchebysheff’s Theorem works for any kind of data disturbition.
  
  #p.) Can you use the Empirical Rule to describe this data set? Why or why not? 
  
  #Wecant use Empirical Rule to describe this data set because samples doesnt have mount shapedisturbition.
  
  #q.) Given data sets of two groups, construct and interpret a comparative dotplot to compare the groups ----------
  
  #r.) Construct a relative frequency histogram for these data. How would you describe the shape of the distribution? 
  hist(DataOfMale$AGE,freq = TRUE)
  hist(DataOfMale$SYSBP,freq = TRUE)
  hist(DataOfMale$SYSBP,freq = TRUE)
  
  hist(DataOfFemale$AGE,freq = TRUE)
  hist(DataOfFemale$SYSBP,freq = TRUE)
  hist(DataOfFemale$SYSBP,freq = TRUE)
  
  #s.) Find the z-scores for the largest and smallest observations. Would you consider them to be outliers? Why or why not?
  
  getMean = function(data,count=0,value=0,genderVal,counter=0){
    
      for(i in data[,1]){
        counter= counter+1
        if(i == genderVal){
          value = value + data[counter,2]
          count = count +1
        }
      }
    return(value/count)
  }
  
  getVariance = function(mean,count=0,data,gender,counter=0,value=0){
    
    for(i in data[,1]){
      counter = counter+1;
      if(i == gender ){
        value = value + ((data[counter,2]-mean)^2)
        count = count + 1
      }
    }
    value = value/(count-1)
    
    
    return(value)
    
  }
  
  getDataOfGender = function(data,gender=0,counter=0){
    gonnaReturnThisData = data.frame(AGE=numeric(),SYSBP=numeric(),DIASBP=numeric())
    for(i in data$GENDER){
      counter = counter +1  
      if(i == gender){
      newData= data.frame(AGE = data$AGE[counter],SYSBP = data$SYSBP[counter],DIASBP = data$DIASB[counter])
      gonnaReturnThisData = rbind(gonnaReturnThisData,newData)
      newData = NULL
      }
    }
    return(gonnaReturnThisData)
  }
  
  getMax = function(data,gender,maxVal=0,counter=0){
    for(i in data[,1]){
      counter = counter +1
      if(i == gender)
        if(data[counter,2]>maxVal)
          maxVal = data[counter,2]
    }
    return(maxVal)
  }
  
  getMin = function(data,gender,minVal,counter=0){
    minVal = data[1,2]
    for(i in data[,1]){
      counter = counter +1
      if(i == gender)
        if(data[counter,2]<minVal)
          minVal = data[counter,2]
    }
    return(minVal)
  }
  
  getMedian = function(data,medVal=0){
    medLoc = 0
    if(length(data) %%2 == 0 ){
      medLoc = length(data)/2
      medVal = (data[medLoc]+data[medLoc+1])/2
    }else{
      medloc = round(length(data)/2)
      medVal = data[medLoc]
    }
    return(medVal)
   }
  
  getLowerQuartile = function(data,quartileLocation=0){
    quartileVal=0
    quartileLocation = (length(data)+1)
    
    if( (quartileLocation%%4) == 0)
      quartileVal = data[quartileLocation/4]
    else
      quartileVal = data[round(quartileLocation/4)]+((3/4)*(data[round(quartileLocation/4)+1]-data[round(quartileLocation/4)]))
    
    return(quartileVal)
  }
  
  getUpperQuartile = function(data,quartileLocation=0){
    quartileVal=0
    quartileLocation = (length(data)+1)
    
    if( (quartileLocation%%(4/3)) == 0)
      quartileVal = data[quartileLocation*(3/4)]
    else
      quartileVal = data[round(quartileLocation/4)]+((1/4)*(data[round(quartileLocation/4)+1]-data[round(quartileLocation/4)]))
    
    return(quartileVal)
  }   
  
```
