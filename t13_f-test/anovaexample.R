# Anova Example
Flower_Lengths <- read.delim("dat/data_anova2.dat")

# describe the data

summary(Flower_Lengths)

# by groups?

library(psych)
describeBy(Flower_Lengths,group=Flower_Lengths$Type)

# Plots
library(ggplot2)
a <- ggplot(Flower_Lengths, aes(factor(Type)))
a + geom_bar()

a + geom_bar(aes(fill=factor(Type)))

a + geom_boxplot(aes(y=Length))

a + geom_density(aes(fill=factor(Type),x=Length), alpha=0.8)

a + geom_density(aes(fill=factor(Type),x=Length), alpha=0.8) +
  labs(title="Density plot",
       subtitle="FLOWER LENGTHS (MM) \n FOR THREE HELICONIA VARIETIES",
       caption="Source: Basic Practice Data",
       x="Length (mm)",
       fill="Types")

a + geom_boxplot(aes(y=Length))+
  geom_dotplot(aes(y=Length),
               binaxis='y',
               stackdir='center',
               dotsize = .5,
               fill="red") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  labs(title="Box plot + Dot plot",
       subtitle="FLOWER LENGTHS (MM) FOR THREE HELICONIA VARIETIES",
       caption="Source: Basic Practice Data",
       x="Length (mm)",
       fill="Types")

a + geom_violin(aes(y=Length)) +
  labs(title="Violin plot",
       subtitle="FLOWER LENGTHS (MM) FOR THREE HELICONIA VARIETIES",
       caption="Source: Basic Practice Data",
       x="Length (mm)",
       fill="Types")
# Non-ggplot
plot(Length ~ Type, data = Flower_Lengths)


## multiple t.tests? (NO!!!!!!!!!!)

## Red versus BIHAI
t.test(Flower_Lengths$Length[Flower_Lengths$Type == "RED"],Flower_Lengths$Length[Flower_Lengths$Type == "BIHAI"])

## Red versus YELLOW
t.test(Flower_Lengths$Length[Flower_Lengths$Type == "RED"],Flower_Lengths$Length[Flower_Lengths$Type == "YELLOW"])

## BIHAI versus YELLOW
t.test(Flower_Lengths$Length[Flower_Lengths$Type == "BIHAI"],Flower_Lengths$Length[Flower_Lengths$Type == "YELLOW"])

## Type 1 error rate
.05*3


# REGRESSION
model_1=lm(Length~Type,data=Flower_Lengths)
summary(model_1)

# ANOVA
anova(lm(Length~Type,data=Flower_Lengths))

