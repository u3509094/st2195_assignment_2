library(rvest)

csv_wiki_html = 'https://en.wikipedia.org/wiki/Comma-separated_values'
csv_wiki <- read_html(csv_wiki_html)
csv_wiki

csv_pre <- html_nodes(csv_wiki, 'pre')
csv_pre

car_table <- html_text(csv_pre[11])
car_table

write.table(car_table, file = 'car.csv', quote = FALSE, row.name = FALSE, col.names = FALSE)