options(device = "quartz")
options(stringsAsFactors=FALSE)
options(papersize = "letter")
library(ProjectTemplate)
library(ggplot2)
.First <- function() {
  # library(XML)
  # library(plyr)
  # url <- "http://www.brainyquote.com/quotes_of_the_day.html"
  # doc <- htmlTreeParse(url, useInternalNodes=T)
  # name.nodes <- getNodeSet(doc, "//span[@class = 'huge']//span[@class = 'sectiontitle']")
  # names <- ldply(name.nodes, function(x) xmlSApply(x, xmlValue))
  # quote.nodes <- getNodeSet(doc, "//span[@class = 'huge']//span[@class = 'huge']")
  # quotes <- ldply(quote.nodes, function(x) xmlSApply(x, xmlValue))
  # funny.quotes <- quotes[names$text == "Funny Quote of the Day", ]
  # person.nodes <- getNodeSet(doc, "//span[@class = 'huge']//span[@class = 'big']")
  # persons <- ldply(person.nodes, function(x) xmlSApply(x, xmlValue))
  # funny.persons <- persons[names$text == "Funny Quote of the Day", ]
  # n <- sample(1:length(funny.quotes), 1)
  # quote <- funny.quotes[n]
  # who <- funny.persons[n]
  # cat("\n Here's your funny quote of the day!\n\n")
  # cat(paste(" ", quote, "\n\n", "    - ", who, "\n\n", sep=""))
  cat("\n Welcome back, Ryan.  Now do some work! \n\n")
}


.my.ls <- function (pos = 1, pattern, order.by, decreasing=FALSE, 
                         head=FALSE, n=5) {
    napply <- function(names, fn) sapply(names, function(x)
                                         fn(get(x, pos = pos)))
    names <- ls(pos = pos, pattern = pattern)
    obj.class <- napply(names, function(x) as.character(class(x))[1])
    obj.mode <- napply(names, mode)
    obj.type <- ifelse(is.na(obj.class), obj.mode, obj.class)
    obj.prettysize <- napply(names, function(x) {
                           capture.output(print(object.size(x), units = "auto")) })
    obj.size <- napply(names, object.size)
    obj.dim <- t(napply(names, function(x)
                        as.numeric(dim(x))[1:2]))
    vec <- is.na(obj.dim)[, 1] & (obj.type != "function")
    obj.dim[vec, 1] <- napply(names, length)[vec]
    out <- data.frame(obj.type, obj.size, obj.prettysize, obj.dim)
    names(out) <- c("Type", "Size", "PrettySize", "Rows", "Columns")
    if (!missing(order.by))
        out <- out[order(out[[order.by]], decreasing=decreasing), ]
    if (head)
        out <- head(out, n)
    out
}

# shorthand
.ls <- function(..., n=10) {
    .my.ls(..., order.by="Size", decreasing=TRUE, head=TRUE, n=n)
}

# Aliases
.s <- base::summary
.h <- utils::head
