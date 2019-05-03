# Digital Calculator

This is a calculator that I've made for my digital logic class. This was done on an Altera DE2-115 board.
This works using a 3 bit operation code, that works in the following ways. These are only done if the perform signal is high.

K in this situation is a 2 bit parameter variable that allows the user to choose numbers or registers.

| Operation | Result                             |
| ----------|:-----------------------------------|
| 000       | R0 <- 0, R1 <- 1, R2 <- 2, R3 <- 3 |
| 001       | R0 <- K                            |
| 010       | R0 <- RK                           |
| 011       | RK <- R0                           |
| 100       | R0 <- R0 + RK                      |
| 101       | R0 <- R0 - RK                      |
| 110       | R0 <- R0 * RK                      |
| 111       | R0 <- 2 ^ RK                       |
