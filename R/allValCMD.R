redisExists <- function(key) {
  msg <- paste('EXISTS ',key,'\r\n',sep='')
  sendCmd(msg)==0
}

redisDelete <- function(key) {
  msg <- paste('DEL ',key,'\r\n',sep='')
  ans <- sendCmd(msg)
  if (ans == 0) warning(paste('The key',key,'was not found.'))
  ans==0
}

redisType <- function(key) {
  msg <- paste('TYPE ',key,'\r\n',sep='')
  sendCmd(msg)
}