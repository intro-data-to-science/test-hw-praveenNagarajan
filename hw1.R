library("ggplot2")

data_set <- read.csv("data.csv")

colnames(data_set)[colnames(data_set)=="diagnosis"] <- "Diagnosis"
data_set$Diagnosis <- factor(data_set$Diagnosis, labels=c("Benign", "Malignant"))

ggplot(data_set, aes(x = perimeter_mean, y = concavity_mean)) +geom_point(colour="black") +labs(x = "Perimeter", y = "Concavity")

ggplot(data_set, aes(x = perimeter_mean, y = concavity_mean, colour=Diagnosis)) +geom_point() +labs(x = "Perimeter", y = "Concavity")

ggplot(data_set, aes(x = perimeter_mean, y = concavity_mean, colour=Diagnosis)) +geom_point() +facet_wrap(data_set$Diagnosis) +labs(x = "Perimeter", y = "Concavity")

ggplot(data_set, aes(x = perimeter_mean, y = concavity_mean)) +geom_point() +geom_smooth(span=.5) +labs(x = "Perimeter", y = "Concavity")

ggplot(data_set, aes(x = perimeter_mean, y = concavity_mean, colour=Diagnosis)) +geom_smooth(span=.5) +labs(x = "Perimeter", y = "Concavity")

ggplot(data_set, aes(perimeter_mean, colour=Diagnosis)) +geom_histogram(binwidth=1) +labs(x="Perimeter")

ggplot(data_set, aes(perimeter_mean, colour=Diagnosis)) +geom_histogram(binwidth=1) +facet_wrap(data_set$Diagnosis) +labs(x="Perimeter")
