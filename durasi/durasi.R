# install.packages("lubridate")
library(lubridate)

tgl_lahir <- as_date("2021-01-01")
hari_ini <- as_date("2021-06-30")

durasi <- as.duration(tgl_lahir %--% hari_ini)
durasi
durasi/dyears(1)
durasi/dmonths(1)
durasi/ddays(1)

besok <- as_date("2021-07-01")
durasi <- as.duration(tgl_lahir %--% besok)
durasi/dmonths(1)
durasi/ddays(1)
