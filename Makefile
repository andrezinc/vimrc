CFLAGS = -Wall -Wextra -lm #Wall - mostra todos os warning -Wextra - coloca mais Warnings nao habilitados no Wall -lm math.h 
CC = gcc #qual compilador
VPATH = src #pasta padrao

main: main.o imagem.o t3-x-y-z.o #nome da saida : principal secundario terciario
	$(CC) $(CFLAGS) $? -o $@ # compilador flags : principal scundario terciario -o nome da saida

main.o : main.c # saida : entrada
	$(CC) $(CFLAGS) -c $? -o $@ #mesmo 

imagem.o : imagem.c #mesmo 
	$(CC) $(CFLAGS) -c $? -o $@ #mesmo 

t3-x-y-z.o : t3-x-y-z.c #mesmo 
	$(CC) $(CFLAGS) -c $? -o $@ #mesmo 


.PHONY = run #make run faz
run:main #run depois do main
	./main #roda ./main
