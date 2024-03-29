% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\name{pkg_deps_tree}
\alias{pkg_deps_tree}
\title{Draw the dependency tree of a package}
\usage{
pkg_deps_tree(pkg, upgrade = TRUE, dependencies = NA)
}
\arguments{
\item{pkg}{Package names or package references. E.g.
\itemize{
\item \code{ggplot2}: package from CRAN, Bioconductor or a CRAN-like repository
in general,
\item \code{tidyverse/ggplot2}: package from GitHub,
\item \code{tidyverse/ggplot2@v3.4.0}: package from GitHub tag or branch,
\item \verb{https://examples.com/.../ggplot2_3.3.6.tar.gz}: package from URL,
\item \code{.}: package in the current working directory.
}

See "\link{Package sources}" for more details.}

\item{upgrade}{Whether to use the most recent available package
versions.}

\item{dependencies}{What kinds of dependencies to install. Most commonly
one of the following values:
\itemize{
\item \code{NA}: only required (hard) dependencies,
\item \code{TRUE}: required dependencies plus optional and development
dependencies,
\item \code{FALSE}: do not install any dependencies. (You might end up with a
non-working package, and/or the installation might fail.)
See \link{Package dependency types} for other possible values and more
information about package dependencies.
}}
}
\value{
The same data frame as \code{\link[=pkg_deps]{pkg_deps()}}, invisibly.
}
\description{
Draw the dependency tree of a package
}
\section{Examples}{


\if{html}{\out{<div class="sourceCode r">}}\preformatted{pkg_deps_tree("dplyr")
}\if{html}{\out{</div>}}\if{html}{\out{
<div class="asciicast" style="color: #172431;font-family: 'Fira Code',Monaco,Consolas,Menlo,'Bitstream Vera Sans Mono','Powerline Symbols',monospace;line-height: 1.300000"><pre>
#> <span style="font-weight: bold;font-style: italic;color: #2AA198;">dplyr </span><span style="font-weight: bold;font-style: italic;color: #525252;">1.0.10</span> <span style="color: #859900;">✨</span>                                                          
#> ├─generics <span style="color: #525252;">0.1.3</span> <span style="color: #859900;">✨</span>                                                      
#> ├─glue <span style="color: #525252;">1.6.2</span> <span style="color: #859900;">✨</span>                                                          
#> ├─lifecycle <span style="color: #525252;">1.0.3</span> <span style="color: #859900;">✨</span>                                                     
#> │ ├─cli <span style="color: #525252;">3.4.1</span> <span style="color: #859900;">✨</span>                                                         
#> │ ├─glue                                                                
#> │ └─rlang <span style="color: #525252;">1.0.6</span> <span style="color: #859900;">✨</span>                                                       
#> ├─magrittr <span style="color: #525252;">2.0.3</span> <span style="color: #859900;">✨</span>                                                      
#> ├─R6 <span style="color: #525252;">2.5.1</span> <span style="color: #859900;">✨</span>                                                            
#> ├─rlang                                                                 
#> ├─tibble <span style="color: #525252;">3.1.8</span> <span style="color: #859900;">✨</span>                                                        
#> │ ├─fansi <span style="color: #525252;">1.0.3</span> <span style="color: #859900;">✨</span>                                                       
#> │ ├─lifecycle                                                           
#> │ ├─magrittr                                                            
#> │ ├─pillar <span style="color: #525252;">1.8.1</span> <span style="color: #859900;">✨</span>                                                      
#> │ │ ├─cli                                                               
#> │ │ ├─fansi                                                             
#> │ │ ├─glue                                                              
#> │ │ ├─lifecycle                                                         
#> │ │ ├─rlang                                                             
#> │ │ ├─utf8 <span style="color: #525252;">1.2.2</span> <span style="color: #859900;">✨</span>                                                      
#> │ │ └─vctrs <span style="color: #525252;">0.5.1</span> <span style="color: #859900;">✨</span>                                                     
#> │ │   ├─cli                                                             
#> │ │   ├─glue                                                            
#> │ │   ├─lifecycle                                                       
#> │ │   └─rlang                                                           
#> │ ├─pkgconfig <span style="color: #525252;">2.0.3</span> <span style="color: #859900;">✨</span>                                                   
#> │ ├─rlang                                                               
#> │ └─vctrs                                                               
#> ├─tidyselect <span style="color: #525252;">1.2.0</span> <span style="color: #859900;">✨</span>                                                    
#> │ ├─cli                                                                 
#> │ ├─glue                                                                
#> │ ├─lifecycle                                                           
#> │ ├─rlang                                                               
#> │ ├─vctrs                                                               
#> │ └─withr <span style="color: #525252;">2.5.0</span> <span style="color: #859900;">✨</span>                                                       
#> ├─vctrs                                                                 
#> └─pillar                                                                
#>                                                                         
#> Key:  <span style="color: #859900;">✨</span> new                                                             
</pre></div>
}}


\if{html}{\out{<div class="sourceCode r">}}\preformatted{pkg_deps_tree("r-lib/usethis")
}\if{html}{\out{</div>}}\if{html}{\out{
<div class="asciicast" style="color: #172431;font-family: 'Fira Code',Monaco,Consolas,Menlo,'Bitstream Vera Sans Mono','Powerline Symbols',monospace;line-height: 1.300000"><pre>
#> <span style="font-weight: bold;font-style: italic;color: #2AA198;">r-lib/usethis </span><span style="font-weight: bold;font-style: italic;color: #525252;">2.1.6.9000</span> <span style="color: #859900;">✨👷🏼🔧 </span>                                          
#> ├─cli <span style="color: #525252;">3.4.1</span> <span style="color: #859900;">✨</span>                                                           
#> ├─clipr <span style="color: #525252;">0.8.0</span> <span style="color: #859900;">✨</span>                                                         
#> ├─crayon <span style="color: #525252;">1.5.2</span> <span style="color: #859900;">✨</span>                                                        
#> ├─curl <span style="color: #525252;">4.3.3</span> <span style="color: #859900;">✨</span>                                                          
#> ├─desc <span style="color: #525252;">1.4.2</span> <span style="color: #859900;">✨</span>                                                          
#> │ ├─cli                                                                 
#> │ ├─R6 <span style="color: #525252;">2.5.1</span> <span style="color: #859900;">✨</span>                                                          
#> │ └─rprojroot <span style="color: #525252;">2.0.3</span> <span style="color: #859900;">✨</span>                                                   
#> ├─fs <span style="color: #525252;">1.5.2</span> <span style="color: #859900;">✨</span>                                                            
#> ├─gert <span style="color: #525252;">1.9.2</span> <span style="color: #859900;">✨ ⬇ </span><span style="color: #525252;">(1.91 MB)</span>                                              
#> │ ├─askpass <span style="color: #525252;">1.1</span> <span style="color: #859900;">✨</span>                                                       
#> │ │ └─sys <span style="color: #525252;">3.4.1</span> <span style="color: #859900;">✨</span>                                                       
#> │ ├─credentials <span style="color: #525252;">1.3.2</span> <span style="color: #859900;">✨ ⬇ </span><span style="color: #525252;">(170.15 kB)</span>                                   
#> │ │ ├─openssl <span style="color: #525252;">2.0.5</span> <span style="color: #859900;">✨</span>                                                   
#> │ │ │ └─askpass                                                         
#> │ │ ├─sys                                                               
#> │ │ ├─curl                                                              
#> │ │ ├─jsonlite <span style="color: #525252;">1.8.4</span> <span style="color: #859900;">✨</span>                                                  
#> │ │ └─askpass                                                           
#> │ ├─openssl                                                             
#> │ ├─rstudioapi <span style="color: #525252;">0.14</span> <span style="color: #859900;">✨</span>                                                   
#> │ ├─sys                                                                 
#> │ └─zip <span style="color: #525252;">2.2.2</span> <span style="color: #859900;">✨</span>                                                         
#> ├─gh <span style="color: #525252;">1.3.1</span> <span style="color: #859900;">✨ ⬇ </span><span style="color: #525252;">(95.20 kB)</span>                                               
#> │ ├─cli                                                                 
#> │ ├─gitcreds <span style="color: #525252;">0.1.2</span> <span style="color: #859900;">✨ ⬇ </span><span style="color: #525252;">(95.59 kB)</span>                                       
#> │ ├─httr <span style="color: #525252;">1.4.4</span> <span style="color: #859900;">✨</span>                                                        
#> │ │ ├─curl                                                              
#> │ │ ├─jsonlite                                                          
#> │ │ ├─mime <span style="color: #525252;">0.12</span> <span style="color: #859900;">✨</span>                                                       
#> │ │ ├─openssl                                                           
#> │ │ └─R6                                                                
#> │ ├─ini <span style="color: #525252;">0.3.1</span> <span style="color: #859900;">✨ ⬇ </span><span style="color: #525252;">(13.13 kB)</span>                                            
#> │ └─jsonlite                                                            
#> ├─glue <span style="color: #525252;">1.6.2</span> <span style="color: #859900;">✨</span>                                                          
#> ├─jsonlite                                                              
#> ├─lifecycle <span style="color: #525252;">1.0.3</span> <span style="color: #859900;">✨</span>                                                     
#> │ ├─cli                                                                 
#> │ ├─glue                                                                
#> │ └─rlang <span style="color: #525252;">1.0.6</span> <span style="color: #859900;">✨</span>                                                       
#> ├─purrr <span style="color: #525252;">0.3.5</span> <span style="color: #859900;">✨</span>                                                         
#> │ ├─magrittr <span style="color: #525252;">2.0.3</span> <span style="color: #859900;">✨</span>                                                    
#> │ └─rlang                                                               
#> ├─rappdirs <span style="color: #525252;">0.3.3</span> <span style="color: #859900;">✨</span>                                                      
#> ├─rlang                                                                 
#> ├─rprojroot                                                             
#> ├─rstudioapi                                                            
#> ├─whisker <span style="color: #525252;">0.4.1</span> <span style="color: #859900;">✨ ⬇ </span><span style="color: #525252;">(65.36 kB)</span>                                          
#> ├─withr <span style="color: #525252;">2.5.0</span> <span style="color: #859900;">✨</span>                                                         
#> └─yaml <span style="color: #525252;">2.3.6</span> <span style="color: #859900;">✨</span>                                                          
#>                                                                         
#> Key:  <span style="color: #859900;">✨</span> new | <span style="color: #859900;"> ⬇</span> download | <span style="color: #859900;">👷🏼 </span>build | 🔧<span style="color: #859900;"> </span>compile                        
</pre></div>
}}
}

\seealso{
Other package functions: 
\code{\link{lib_status}()},
\code{\link{pak}()},
\code{\link{pkg_deps}()},
\code{\link{pkg_download}()},
\code{\link{pkg_install}()},
\code{\link{pkg_remove}()},
\code{\link{pkg_status}()},
\code{\link{pkg_sysreqs}()}
}
\concept{package functions}
