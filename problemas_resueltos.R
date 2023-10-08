### PROBLEMAS RESUELTOS
rm(list=ls()) 
source("teoriadecision_funciones_incertidumbre.R") 

#PRIMER PROBLEMA

set.seed(123)
datos=runif(25)
datos
tabla=crea.tablaX(datos,5,5)
tabla 

### Criterio de Wald o pesimísta
## Favorable
WaldF=criterio.Wald(tabla,T)
cat("La alternativa óptima por el criterio ",WaldF$criterio, " en el caso de ", 
    ifelse(WaldF$metodo=="favorable","beneficios","costes"),
    " es la ",names(WaldF$AlternativaOptima),
    " con un valor óptimo de ", WaldF$ValorOptimo, sep = "" )
## Desfavorable
WaldD=criterio.Wald(tabla,F)
cat("La alternativa óptima por el criterio ",WaldD$criterio, " en el caso de ",
    ifelse(WaldD$metodo=="favorable","beneficios","costes"),
    " es la ",names(WaldD$AlternativaOptima),
    " con un valor óptimo de ", WaldD$ValorOptimo, sep = "" )

### Criterio optimista
## Favorable
OptimistaF=criterio.Optimista(tabla,T)
cat("La alternativa óptima por el criterio ",OptimistaF$criterio, " en el caso de ",
    ifelse(OptimistaF$metodo=="favorable","beneficios","costes"),
    " es la ",names(OptimistaF$AlternativaOptima),
    " con un valor óptimo de ", OptimistaF$ValorOptimo, sep = "" )
## Desfavorable
OptimistaD=criterio.Optimista(tabla,F)
cat("La alternativa óptima por el criterio ",OptimistaD$criterio, " en el caso de ",
    ifelse(OptimistaD$metodo=="favorable","beneficios","costes"),
    " es la ",names(OptimistaD$AlternativaOptima),
    " con un valor óptimo de ", OptimistaD$ValorOptimo, sep = "" )

### Criterio Hurwicz
## Favorable
HurwiczF=criterio.Hurwicz(tabla,T)
cat("La alternativa óptima por el criterio ",HurwiczF$criterio, " en el caso de ",
    ifelse(HurwiczF$metodo=="favorable","beneficios","costes"),
    " es la ",names(HurwiczF$AlternativaOptima),
    " con un valor óptimo de ", HurwiczF$ValorOptimo, sep = "" )
## Desfavorable
HurwiczD=criterio.Hurwicz(tabla,F)
cat("La alternativa óptima por el criterio ",HurwiczD$criterio, " en el caso de ",
    ifelse(HurwiczD$metodo=="favorable","beneficios","costes"),
    " es la ",names(HurwiczD$AlternativaOptima),
    " con un valor óptimo de ", HurwiczD$ValorOptimo, sep = "" )

### Criterio de Savage o costes de oportunidad
## Favorable
SavageF=criterio.Savage(tabla,T)
cat("La alternativa óptima por el criterio ",SavageF$criterio, " en el caso de ",
    ifelse(SavageF$metodo=="favorable","beneficios","costes"),
    " es la ",names(SavageF$AlternativaOptima),
    " con un valor óptimo de ", SavageF$ValorOptimo, sep = "" )
## Desfavorable
SavageD=criterio.Savage(tabla,F)
cat("La alternativa óptima por el criterio ",SavageD$criterio, " en el caso de ",
    ifelse(SavageD$metodo=="favorable","beneficios","costes"),
    " es la ",names(SavageD$AlternativaOptima),
    " con un valor óptimo de ", SavageD$ValorOptimo, sep = "" )

### Criterio de La Place
## Favorable
LaPlaceF=criterio.Laplace(tabla,T)
cat("La alternativa óptima por el criterio ",LaPlaceF$criterio, " en el caso de ",
    ifelse(LaPlaceF$metodo=="favorable","beneficios","costes"),
    " es la ",names(LaPlaceF$AlternativaOptima),
    " con un valor óptimo de ", LaPlaceF$ValorOptimo, sep = "" )
## Desfavorable
LaPlaceD=criterio.Laplace(tabla,F)
cat("La alternativa óptima por el criterio ",LaPlaceD$criterio, " en el caso de ",
    ifelse(LaPlaceD$metodo=="favorable","beneficios","costes"),
    " es la ",names(LaPlaceD$AlternativaOptima),
    " con un valor óptimo de ", LaPlaceD$ValorOptimo, sep = "" )

### Criterio de punto ideal
## Favorable
PuntoIdealF=criterio.PuntoIdeal(tabla,T)
cat("La alternativa óptima por el criterio ",PuntoIdealF$criterio, " en el caso de ",
    ifelse(PuntoIdealF$metodo=="favorable","beneficios","costes"),
    " es la ",names(PuntoIdealF$AlternativaOptima),
    " con un valor óptimo de ", PuntoIdealF$ValorOptimo, sep = "" )
## Desfavorable
PuntoIdealD=criterio.PuntoIdeal(tabla,F)
cat("La alternativa óptima por el criterio ",PuntoIdealD$criterio, " en el caso de ",
    ifelse(PuntoIdealD$metodo=="favorable","beneficios","costes"),
    " es la ",names(PuntoIdealD$AlternativaOptima),
    " con un valor óptimo de ", PuntoIdealD$ValorOptimo, sep = "" )


#SEGUNDO PROBLEMA 

# Una empresa de venta de electrodomésticos desea contratar un proveedor para el próximo año,
# de manera que le salga lo más rentable posible. todos los proveedores tienes un precio fijo 
# inicial para un pedido de 1000 unidades, dependiendo de la marca, y dicho precio aumenta 
# por cada 100 unidades extra que la empresa solicite fuera de plazo. 
# Tiene tres opciones, el proveedor A le cobra 500 u.m.por el primer pedido, el B 450 u.m. 
# y el C 700 u.m.. Si añade 100 unidades mas, el proveedor A le cobrara 200 u.m. de suplemento, 
# el B 250 u.m. y el C 100 u.m.. Mientras que si añade otras 100 unidades mas el proveedor A 
# le sumará 150 u.m, el B 200 u.m. y el C nada. ¿Cuál es la opción más rentable si espera muchas 
# ventas este año? ¿Y si tiene una previsión negativa?

tabla=crea.tablaX(c(500,700,850,
                    450,700,900,
                    700,800,800))

criterio.Todos(tabla,0.5,F)
