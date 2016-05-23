library(digest)
library(stringr)

 # Load employee number(s) as vector
emp_id <- c(49012345)

 # Hash employee number(s)
id_hash <- digest(emp_id, algo = "sha512")

 # Drop letters from employee ID hashes
id_hash <- sapply(id_hash, function (k) strsplit(k, "[^0-9]"))
id_hash <- Reduce(union, id_hash)
id_hash <- paste(id_hash, collapse = '')
pseudo_id <- substr(id_hash, 2, 9)

 # Check
str(pseudo_id)
