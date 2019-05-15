library(ggplot2)
data<-read.csv("all_spend.csv",stringsAsFactors = FALSE)
data
str(data)
data.t<-as.tibble(data)
data.t$Date<-as.Date(data.t$Date,"%m/%d/%Y")

data.t$Date
class(data.t$Date)
head(data.t)
tail(data.t)

#exploratory filtering
data %>%
  select(Details, Date, Description, Amount, Type, Balance) %>%
  filter(between(data.t$Date, as.Date("0018-09-09"), as.Date("0018-10-09")))



data.t[Amount]
expenses <- data_frame(date=seq(as.Date("0018-09-10"), as.Date("0019-05-13"), by=1),

                                              Amount=rgamma(length(date), shape = 2, scale = 20))

#grouping monthwise 
expenses

View(expenses)
expenses %>% group_by(floor_date(expenses, "month")) %>%
  summarize(Amount=sum(Amount))


head(data.t)

ggplot(data = data.t) +
  geom_histogram(mapping = aes(x = Details), stat = "count")

#maximum amount ever spent from my account is 1900$
max(data.t$Amount)
min(data.t$Amount)

#the different types of transactions
table(data.t$Type)
# the table output shows various statistics such as 16 account debits, 9 credits, and the number of check deposits is 2 so far.

pie(table(data.t$Details))
#The table output provides information such as total numnber of credits: 63, total number of debits: 185

class(data.t$Type)
colnames(data.t$Type)
summary(data.t$Type)
table(data.t$Type)
prop.table(table(data.t$Type))
pie(table(data.t$Type))

