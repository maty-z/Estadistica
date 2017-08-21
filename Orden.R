ordMax = function(perm){ #es una funcion del mazo
  
  # El algoritmo basicamente lo que hace es ir tomando de manera ordenada un elemento del mazo.
  # En otra lista va almacenando los maximos de las cadenas crecientes consecutivas que recorrio.
  # Y en otra lista, va almacenando las longitudes de dichas cadenas.
  
  # Si es el primer elemento, comienza dos listas. En la primera almacena el elemento en el lugar 1, 
  #y en la segunda en el lugar uno la inicializa con el valor 1.
  # Si no es el primer paso, se fija si ya vio al elemento anterior, si es asi,
  #en la lista de los elementos vistos reemplaza el anterior por este elemento,
  #y en la cadena de longitudes aumenta en 1 el valor en el lugar correspondiente.
  # Si no vio el elemento anterior, almacena el elemento en un nuevo lugar de la lista no usado,
  #y le asigna el valor 1 al lugar correspondiente en la lista que almacena las longitudes de la cadena.
  # Por ultimo se fija cual de todas las longitudes es la mayor.

  #Inicializo variables
  contador = 2
  listaCadena = c()
  listaOrden = c()
  
  for (e in perm){                  # Para cada elemento del mazo
    if (length(listaCadena) == 0){  # Verifica si es el primer elemento tomado
      listaCadena[1] = e            #En el lugar 1 de una lista lo almacena
      listaOrden[1] = 1             #Comienza a registrar la longitud de dicha cadena
    } else {
      i = which(listaCadena == e-1)  #Sino, se fija si existe el anterior
      if (length(i)==0){
        listaCadena[contador] = e    #Si no lo tiene, lo almacena en el primer lugar libre
        listaOrden[contador] = 1     #Y en el lugar correspondiente de la otra lista, comienza a contar la longitud
        contador = contador + 1
      } else {
        listaCadena[i] = e           #Si lo tiene, actualiza el valor en su lugar
        listaOrden[i] = listaOrden[i] + 1 #Suma 1 a la longitud de la cadena.
      }
    }
  }
  return(max(listaOrden)) #Devuelve la longitud mas grande de todas las cadenas consecutivas crecientes del mazo.
}
