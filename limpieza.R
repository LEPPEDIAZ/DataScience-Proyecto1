datos <- read.csv("unity.csv")

datos <- datos[!grepl("BASICO", datos$NIVEL),]
datos <-datos[!grepl("PRIMARIA", datos$NIVEL),]
datos <-datos[!grepl("PREPRIMARIA BILINGUE", datos$NIVEL),]
datos <-datos[!grepl("PARVULOS", datos$NIVEL),]
datos <-datos[grepl("DIVERSIFICADO", datos$NIVEL),]

datos$DISTRITO <- sub("^$", NA, datos$DISTRITO)

datos$DIRECTOR <- sub("^$", NA, datos$DIRECTOR)


datos$SUPERVISOR <- sub("^$", NA, datos$SUPERVISOR)
datos$DIRECCION<- sub("^$", NA, datos$DIRECCION)
datos$TELEFONO<- sub("^$", 0, datos$TELEFONO)

##Status a numeros
## Abierto = 1
##Cerrada Temporalmente = 2
##Temporal contrato 021 =3
##temporal nombramiento = 4
##temporal titulos = 5
datos$Estatus_num <- ifelse(grepl("ABIERTA",datos$STATUS),"1","0")
datos$Estatus_num <- ifelse(grepl("CERRADA TEMPORALMENTE",datos$STATUS),"2",datos$Estatus_num)
datos$Estatus_num <- ifelse(grepl("TEMPORAL CONTRATO 021",datos$STATUS),"3",datos$Estatus_num)
datos$Estatus_num <- ifelse(grepl("TEMPORAL NOMBRAMIENTO",datos$STATUS),"4",datos$Estatus_num)
datos$Estatus_num <- ifelse(grepl("TEMPORAL TITULOS",datos$STATUS),"5",datos$Estatus_num)

##departamentos a numeros 
datos$DEPARTAMENTO_NUM <- ifelse(grepl("GUATEMALA",datos$DEPARTAMENTO),1,0)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("EL PROGRESO",datos$DEPARTAMENTO),2,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("SACATEPEQUEZ",datos$DEPARTAMENTO),3,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("CHIMALTENANGO",datos$DEPARTAMENTO),4,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("ESCUINTLA",datos$DEPARTAMENTO),5,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("SANTA ROSA",datos$DEPARTAMENTO),6,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("SOLOLA",datos$DEPARTAMENTO),7,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("TOTONICAPAN",datos$DEPARTAMENTO),8,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("QUETZALTENANGO",datos$DEPARTAMENTO),9,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("SUCHITEPEQUEZ",datos$DEPARTAMENTO),10,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("RETALHULEU",datos$DEPARTAMENTO),11,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("SAN MARCOS",datos$DEPARTAMENTO),12,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("HUEHUETENANGO",datos$DEPARTAMENTO),13,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("QUICHE",datos$DEPARTAMENTO),14,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("BAJA VERAPAZ",datos$DEPARTAMENTO),15,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("ALTA VERAPAZ",datos$DEPARTAMENTO),16,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("PETEN",datos$DEPARTAMENTO),17,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("IZABAL",datos$DEPARTAMENTO),18,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("ZACAPA",datos$DEPARTAMENTO),19,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("CHIQUIMULA",datos$DEPARTAMENTO),20,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("JALAPA",datos$DEPARTAMENTO),21,datos$DEPARTAMENTO_NUM)
datos$DEPARTAMENTO_NUM <- ifelse(grepl("JUTIAPA",datos$DEPARTAMENTO),22,datos$DEPARTAMENTO_NUM)

datos <- read.csv("unity.csv")
install.packages("tidyverse")
duplicated(datos)
unique(datos)

