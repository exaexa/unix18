Sources=$(wildcard *.cislo)
Results=$(Sources:.cislo=.vysledek)

all: $(Results)
	@echo "Dopadlo to dobre"

%.vysledek:%.cislo
	date "+zacatek: %s.%N" > $@.tmp
	factor `cat $<` >> $@.tmp
	date "+konec: %s.%N" >> $@.tmp
	mv $@.tmp $@
clean:
	rm -f $(Results)
