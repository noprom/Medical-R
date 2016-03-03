# 生成区域统计图
library(xlsx)
workbook <- "/Users/noprom/Documents/Dev/Java/Pro/IdeaPro/Medical/doc/immune/immune_area.xlsx"
areaDataFrame <- read.xlsx(workbook, 1)
areaDataFrame

opar <- par(no.readonly=TRUE)
par(family='Baoli SC')
barplot(areaDataFrame$areaCnt, names.arg=areaDataFrame$area,
        main = "患者地区分布", xlab = "地区分布", ylab = "人数(百分比)")
par(opar)