ls = [1,3,4,1,3,4,3,1]
xp1=0
xp2=1
xp3=2

xpv1= ls.count(ls[xp1])
xpv2= ls.count(ls[xp2])
xpv3= ls.count(ls[xp3])

formula1 = len(ls) * ( 2 * xpv1 - 1)
formula2 = len(ls) * ( 2 * xpv2 - 1)
formula3 = len(ls) * ( 2 * xpv3 - 1)

ans = (formula1 + formula2 + formula3) / 3
print(ans)
