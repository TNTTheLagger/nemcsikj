class Auto:
    def __init__(self,rendszam,tipus,ev):
        self.rendszam = rendszam
        self.tipus = tipus
        self.ev = int(ev)
gr = []
with open("auto_adat_oop.txt") as f:
    for line in f:
        x = line.split(sep=',')
        gr.append(Auto(x[0],x[1],x[2]))
for x in gr:
    print(x.rendszam,x.tipus,int(x.ev))
sum = 0
for x in gr:
    sum = sum + x.ev

print("Az évek átlaga: ", sum/len(gr))
legnagyobb = 0

for x in gr:
    if x.ev > legnagyobb:
        legnagyobb = x.ev
for x in gr:
    if x.ev == legnagyobb:
        print("A legidősebb autó márkája: ", x.tipus)
for x in gr:
    if x.rendszam[0] == "E":
        print("E vel kezdődő rendzsám: ", x.rendszam)
