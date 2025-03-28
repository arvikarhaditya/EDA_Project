
R version 4.3.3 (2024-02-29) -- "Angel Food Cake"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin20 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.80 (8340) aarch64-apple-darwin20]

[History restored from /Users/aaryanbabuta/.Rapp.history]

> install.packages("readr")
--- Please select a CRAN mirror for use in this session ---
trying URL 'https://cran.icts.res.in/bin/macosx/big-sur-arm64/contrib/4.3/readr_2.1.5.tgz'
Content type 'application/x-gzip' length 1963319 bytes (1.9 MB)
==================================================
downloaded 1.9 MB


The downloaded binary packages are in
	/var/folders/n1/s5s6lg4n18gdnkd_8h37g21c0000gn/T//RtmpZSafdM/downloaded_packages
> library(readr)
> data <- read.table("/Users/aaryanbabuta/Downloads/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
> data$Time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
> data$Date <- as.Date(data$Date, format="%d/%m/%Y")
> feb_data <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
> png("plot1.png", width = 480, height = 480)
> hist(feb_data$Global_active_power, col = "green", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
> dev.off()
null device 
          1 
> 