data.matrix(gesturenamed)
gesture.pcdata <- gesturenamed[,1:75]
gesture.types <- gesturenamed[,76]



gesture.prcomp <- prcomp(gesture.pcdata, center = TRUE, scale. = TRUE)
#plot(gesture.prcomp, type = "l")

g <- ggbiplot(gesture.prcomp, obs.scale = 1, var.scale = 1, 
              groups = gesture.types, ellipse = TRUE, circle = TRUE)
print(g)
