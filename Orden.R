ordMax = function(perm){
  ordMax = 0
  for (e in perm){
    orden = 0
    while (max(perm>e)==1){
      mayores = perm[which(perm>e)]
      n = length(mayores)
      ord1 = 0
      ord = 0
      for (i in 1:n){
        ord = ordMax(mayores[i:n])
        if (ord>ord1)
          ord = ord1
        
      }
      orden = orden + 1 + ord      
    }
    if (orden>ordMax)
      ordMax = orden
    
  }
}