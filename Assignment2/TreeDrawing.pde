ArrayList<Animal> clusters = new ArrayList<Animal>();
ArrayList<Distance> new_distances = new ArrayList<Distance>();

class BinTree
{
  int currentLevel = 0;
  Node root = null;
  class Node
  {
    String text;
    public int x;
    public int y;
    Node next = null;
    
    public Node(int x, int y, String text)
    { 
      this.x = x;
      this.y = y;
      this.text = text;
    }
    
    public Node(String text)
    { 
      this.x = x;
      this.y = y;
      this.text = text;
    }
    
  }  
  
  public void addNode(Node new_node)
  {
    Node current = root;
    if(root == null){
      root = new Node(500, 30, new_node.text);
      text(root.text, root.x, root.y);
      currentLevel = 1;
    } else {
      if(current != null)
      {
        current.next = new Node((500 + currentLevel*30), (30 + currentLevel*30), new_node.text);
        text(new_node.text, (500 + currentLevel*30), (30 + currentLevel*30));
      }
    }
  }
  
  public void paint()
   {
      proc(root);
   }
    
  void proc(Node p)
  {
    if(p!=null)
    {
      if(p.next!=null)
      {
        line(p.x,p.y,p.next.x,p.next.y);
        proc(p.next);
      }
    }
  }

void findAverageDistances(Animal new_a, Distance new_dist){
  int firstAve = findDistance(new_a, getFirstAnimal(new_dist));
  int secondAve = findDistance(new_a, getSecAnimal(new_dist));
  
  clusters.add(getFirstAnimal(new_dist));
  clusters.add(getSecAnimal(new_dist));
  
  addNode(new Node(getFirstName(new_dist)+ "  and  " + getSecName(new_dist)));
  
  animals.remove(getFirstAnimal(new_dist));
  animals.remove(getSecAnimal(new_dist));
  
}
  
}

void draw() 
{
    BinTree T1 = new BinTree();
    fill(0);  
    //ADD NODES HERE
  
    T1.paint();
}

PFont font;

void setup() 
{  //setup function called initially, only once
  addAnimals();
  findDistances();
  size(1000, 400);
  background(255);  //set background white
  colorMode(RGB);   //set colors to Hue, Saturation, Brightness mode
  font = createFont("Arial",14,true);
  noLoop();
 // fill(#FFFFFF);
}


