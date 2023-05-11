---
title: "Data Dictionary"
format:
  html:
    embed-resources: true
editor: visual
---


<br><br><br>




::: {.cell}

```{.r .cell-code}
flevels <- 
structure(list(FLEVEL = c("AL", "AK", "AZ", "AR", "CA", "CO"
), LABEL = c("Alabama", "Alaska", "Arizona", "Arkansas", 
"California", "Colorado")), row.names = c(NA, 6L), class = "data.frame")



desc <- "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."

loc <- "SCHED-A-PART-01-LINE-01"

f2 <- factor( c("AL", "AK", "AZ", "AR", "CA", "CO") )

to_table <- function( f, format="html" )
{
  t <- table( f )
  t2 <- as.data.frame(t)
  names(t2) <- c("Level","Label")
  t2 %>% kable( format )
}

dgf <- data.frame( desc, loc )



# to_table( f=f2, format="pipe" )
# to_table( f=flevels, format="pipe" )
# kable( flevels )

k <- kable( flevels )
# paste0( k, " \n" )


to_txt_string1 <- function( x, x.lab=NULL )
{
  txt <- paste0( "**", x.lab, "**", ": ",  x, "\n\n" )
  return( txt )
}

to_txt_string2 <- function( x, x.lab=NULL )
{
  txt <- paste0( "**", x.lab, "**", ": ",  x, "\n\n" )
  cat( txt )
}



to_txt_factor <- function( x, x.lab=NULL )
{
  cat( paste0( "##### ", x.lab, "\n\n" ) )
  cat( paste0( x, " \n" ), sep="" )
  cat( "\n\n" )
}


v_to_txt <- function( v, v.lab )
{
  if( class(v) == "character" )
  { to_txt_string2( x=v, x.lab=v.lab ) }
  if( class(v) == "knitr_kable" )
  { to_txt_factor( x=v, x.lab=v.lab ) }
}


create_div4 <- function( x1=desc, x1.lab="DESCRIPTION", 
                         x2=k, x2.lab="LEVELS", 
                         x3=loc, x3.lab="LOCATION CODE" )
{
  
  cat( "::: {.div4} \n\n" )
  
  # cat( paste0( "**", x1.lab, "**", ": ", x1, "\n\n") )
  
  v_to_txt( x1, x1.lab )
  
  
  # cat( paste0( "##### ", x2.lab, "\n\n" ) )
  # cat( paste0( x2, " \n" ), sep="" )
  # cat( "\n\n" )
  
  v_to_txt( x2, x2.lab )
  
  # cat( paste0( "**", x3.lab, "**", ": ", x3, "\n\n") )
  
  v_to_txt( x3, x3.lab )
  
  cat( "::: \n\n" )
  
  
}

create_div4( x1=desc, x2=k, x3=loc )
```

::: {.cell-output .cell-output-stdout}
```
::: {.div4} 

**DESCRIPTION**: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

##### LEVELS

|FLEVEL |LABEL      | 
|:------|:----------| 
|AL     |Alabama    | 
|AK     |Alaska     | 
|AZ     |Arizona    | 
|AR     |Arkansas   | 
|CA     |California | 
|CO     |Colorado   | 


**LOCATION CODE**: SCHED-A-PART-01-LINE-01

::: 
```
:::

```{.r .cell-code}
create_section <- function( x1=desc, x1.lab="DESCRIPTION", 
                         x2=k, x2.lab="LEVELS", 
                         x3=loc, x3.lab="LOCATION CODE" )
{
    cat( "::::: {.parent} \n\n" )
  
    # create_div1( x1=desc, x2=k, x3=loc )
    # create_div2( x1=desc, x2=k, x3=loc )
    # create_div3( x1=desc, x2=k, x3=loc )
    create_div4( x1=desc, x2=k, x3=loc )
    
    cat( ":::::" )
}

create_section( x1=desc, x2=k, x3=loc )
```

::: {.cell-output .cell-output-stdout}
```
::::: {.parent} 

::: {.div4} 

**DESCRIPTION**: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

##### LEVELS

|FLEVEL |LABEL      | 
|:------|:----------| 
|AL     |Alabama    | 
|AK     |Alaska     | 
|AZ     |Arizona    | 
|AR     |Arkansas   | 
|CA     |California | 
|CO     |Colorado   | 


**LOCATION CODE**: SCHED-A-PART-01-LINE-01

::: 

:::::
```
:::
:::



<br> 
<hr>
<br>




```{.r .cell-code}
# results="asis"
create_section( x1=desc, x2=k, x3=loc )
```

::::: {.parent} 

::: {.div4} 

**DESCRIPTION**: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

##### LEVELS

|FLEVEL |LABEL      | 
|:------|:----------| 
|AL     |Alabama    | 
|AK     |Alaska     | 
|AZ     |Arizona    | 
|AR     |Arkansas   | 
|CA     |California | 
|CO     |Colorado   | 


**LOCATION CODE**: SCHED-A-PART-01-LINE-01

::: 

:::::




<br> 
<hr>
<br>



::: {.cell}

```{.r .cell-code}
get_section <- function( row.name )
{
  ds <- dplyr::filter( dfg, var_name== row.name )
  create_section( x1=ds$desc, x2=ds$k, x3=ds$loc )
}

  
print_dd <- function( dfg, vars=c("r2","r2","r3"), group.name=NULL )
{
   # for( i in vars )
   # {
   #   get_section( row.name=i )
   # }
   dfg2 <- dplyr::filter( dfg, var_name %in% vars )
   sapply( dfg2, get_section )
}
```
:::

::: {.cell}

```{.r .cell-code}
print_dd( dfg, vars( %in% partiii ), group.name="Part III" )

print_dd( dfg, vars( %in% partiv ), group.name="Part IV" )
```
:::




```
##  EXAMPLE OF 
##  WHAT FINAL
##  MARKDOWN
##  SHOULD 
##  LOOK LIKE

::: div4

DEFINITION: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

##### LEVELS:

|FLEVEL    |LABEL          |
|:---------|:--------------|
|AL        |Alabama        |
|AK        |Alaska         |
|AZ        |Arizona        |
|AR        |Arkansas       |

LOCATION CODE:   SCHED-A-PART-01-LINE-01

:::

```






<link href='https://fonts.googleapis.com/css?family=Fira Code' rel='stylesheet'> <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Anonymous+Pro" />


```{=html}
<style>

@import url('https://fonts.cdnfonts.com/css/aharoni');

.parent {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-template-rows: auto;
    grid-column-gap: 5px;
    grid-row-gap: 5px;
    grid-template-areas:
      "a b b"
      "c d d"
      ". e e" ;
}

.div1 {
    grid-area: a;
    padding-left: 5px;
}

.div2 { 
    grid-area: b;
    padding-left: 5px;
}

.div3 { 
    grid-area: c;
    padding-left: 5px;
}

.div4 { 
    grid-area: d;
    padding-left: 5px;
}

.div1 p { 
    font-family:"Calibri", sans-serif;
    color: orange;
    font-size: 1em;
}

.div2 p { 
    font-family:"Calibri", sans-serif;
    color: orange;
    font-size: 1em;
}

.div3 table { width: 100%; }

.div3 td { 
    font-family:"Calibri", sans-serif;
    font-size: 1em;
}

.div4 table { width: 100%; }

.div4 td { 
    font-family:"Calibri", sans-serif;
    font-size: 1em;
}

h2 { 
    font-family:"Calibri", sans-serif;
    font-size: 2em;
    background-color: gray;
    color: white;
}

.table>tbody {
    border-top: none;
}

.table>:not(caption)>*>* {
    padding: 0rem 0rem;
}

tbody, tfoot, tr, td, th {
    border-color: inherit;
    border-style: none; 
    border-width: 0;
}

#pb_agent .gt_table {
    border-top-width: 0px; 
    /* border-top-color: #A8A8A8; */
}  

#pb_agent .gt_title {
    font-size: 1.3em !important;
}

#pb_agent .gt_left { color: black !important; }

</style>
```

