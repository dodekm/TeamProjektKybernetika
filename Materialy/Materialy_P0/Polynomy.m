P = [1 -3 1]
korene = roots(P)

p = [3 2 1]
x = [5]
y = polyval(p,x)

p1 = [1 3 5]
p2 = [1 -4 8]

scitanie = p1 + p2
odcitanie = p1 - p2
delenie = deconv(p1, p2)
[delenie1, zvysok] = deconv(p1, p2)