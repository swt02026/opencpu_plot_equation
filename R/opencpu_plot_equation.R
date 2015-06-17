draw<-function(input,min_input,max_input,step_input){                )
  library(ggplot2)
  
  min = eval(
    expr = parse(
      text=min_input
    )
  )
  max = eval(
    expr = parse(
      text=max_input
    )
  )
  step = eval(
    expr = parse(
      text=step_input
    )
  )
  
  x = seq(min,max)
  
  y =  eval(
    expr = parse(
      text=input
    )
  )
  
  df = data.frame(x = as.vector(x),y = as.vector(y))
  
  p<-ggplot(data=df,aes(x=x,y=y)) + geom_line(colour="green",size = 1)+ geom_point()
  p
}