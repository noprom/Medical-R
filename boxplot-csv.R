# 从CSV文件读取数据并绘制boxplot图
grades <- read.table("/Users/noprom/Documents/Dev/Java/Pro/Medical/doc/immune/out_reg_immune.csv", 
                     header=TRUE,sep=",")
grades
finaldata<-data.frame(grades$ESR, grades$IgG, grades$CH50, grades$CRP, grades$IgA,
                      grades$C3, grades$RF, grades$IgM, grades$C4)
xnames=c('ESR', 'IgG', 'CH50', 'CRP', 'IgA', 'C3', 'RF', 'IgM', 'C4')
boxplot(finaldata,ylab="参数值",las = 1, font.lab = 2, names = xnames)