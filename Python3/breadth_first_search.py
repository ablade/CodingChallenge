

class Vertex():
    #__slots__ = 'element','edges'
    def __init__(self,element,edges):
        self.element = element
        self.edges = edges




s = Vertex('s val',None)
a = Vertex('a val',None)
z = Vertex('z val',None)
x = Vertex('x val',None)
d = Vertex('d val',None)
c = Vertex('c val',None)
f = Vertex('f val',None)
v = Vertex('v val',None)

s.edges = [a,x]
a.edges = [s,z]
z.edges = [a]
x.edges = [s,d,c]
d.edges = [x,c,f]
c.edges = [x,d,f,v]
f.edges = [d,c,v]
v.edges = [c,f]

def bfs(source):
    level = {source:0}
    parent = {source:None} #use to form the shortest path
    i = 1 #track the level
    frontier = [source]
    print(source.element)
    while frontier:
        nextf = []  #Simple queue
        for u in frontier:
            for v in u.edges:
                if v not in level:
                    level[v] = i
                    parent[v]= u
                    nextf.append(v)
                    print(v.element);
        frontier=nextf
        i +=1

    return parent


shortest_path = bfs(s)
print("Hello")

cur = shortest_path[z];
while cur != s:
    print(cur.element)
    cur = shortest_path[cur];
