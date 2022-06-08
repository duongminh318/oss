freq = {} 
line = input("nhap chuoi gi do:")
for word in line.split():
    freq[word] = freq.get(word,0)+1
words = sorted(freq.keys())
for w in words:
    print ("%s:%d" % (w,freq[w]))
