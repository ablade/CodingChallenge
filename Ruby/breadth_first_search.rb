
class Vertex
  def initialize(name,neighbor)
    @element = name
    @edges = neighbor
  end

  def get_element()
    return @element
  end

  def set_element(val)
    @element=val
  end

  def get_adjlist()
    return @edges
  end

  def get_neighbor(i)
    return @edges[i]
  end

  def add_neighbor(n)
    if n.is_a?(Array)
      n.each do |vert|
        @edges << vert
      end
    else
      @edges << n
    end
  end

end

s = Vertex.new('s val',[])
a = Vertex.new('a val',[])
z = Vertex.new('z val',[])
x = Vertex.new('x val',[])
d = Vertex.new('d val',[])
c = Vertex.new('c val',[])
f = Vertex.new('f val',[])
v = Vertex.new('v val',[])

#s.add_neighbor(a)
#s.add_neighbor(x)
s.add_neighbor([a,x])
a.add_neighbor([s,z])
z.add_neighbor([a])
x.add_neighbor([s,d,c])
d.add_neighbor([x,c,f])
c.add_neighbor([x,d,f,v])
f.add_neighbor([d,c,v])
v.add_neighbor([c,f])

# brown = [s,a,z,x,d,c,f,v]
# adj = s.get_adjlist()
# puts "s x 2 is #{adj.is_a?(Vertex)}"


def bfs(starting_vertex)
  s = starting_vertex
  s_adj = s.get_adjlist()
  parent = {s:s_adj[0]}
  level = {s:0}
  frontier = [s]
  puts "S parent #{parent[:s].get_element()}"
  i = 1
  while not frontier.empty?
    #puts "Inside while"
    nextf = []
    for u in frontier
      puts "u's element is #{u.get_element()}"
      adj = u.get_adjlist()
      for v in adj
        puts "v's value is #{v.get_element()}"
        puts "level.key?(v) is #{level.key?(v)}"
        if level.key?(v)
          puts "Visited #{v.get_element()}"
          #level{v:}
          #parent{v: u}
          #nextf << v
        end
      end
    end
    frontier = nextf
    adj = s.get_adjlist()
    #par = parent{:adj[0]}
    #puts "Parent of a is : #{par.get_element()}"
    #puts "Contents of frontier #{frontier}"
    i += 1
  end

end

bfs(s)
brown = [s,a,z,x,d,c,f,v]
adj = s.get_adjlist()
puts "s x 2 is #{adj.is_a?(Vertex)}"
