SCALAC = scalac
SCALA  = scala
CFLAGS = -cp classes -d classes -verbose
RFLAGS = -cp classes

all: classdir dfa

classdir: 
	mkdir -p classes

dfa: 
	$(SCALAC) $(CFLAGS) src/scalautomata/DFA.scala

dfa_test: dfa
	$(SCALA) $(RFLAGS) scalautomata.DFATest

clean:
	rm -rf classes
