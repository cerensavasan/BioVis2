ArrayList<Animal> cluster = new ArrayList<Animal>();

ArrayList<Animal> root = new ArrayList<Animal>(); //two in root

ArrayList<Animal> newAnimals = new ArrayList<Animal>();

ArrayList<Distance> new_distances = new ArrayList<Distance>();

void findAverageDistance(ArrayList<Distance> new_dist){
  
  //create root
  Distance current_smallest = findClosestPair(new_dist);
  root.add(getFirstAnimal(current_smallest));
  root.add(getSecAnimal(current_smallest));
  
  //remove root animals from animals list
  animals.remove(findIndexOfAnimalName(getAnimalName(getFirstAnimal(current_smallest))));
  animals.remove(findIndexOfAnimalName(getAnimalName(getSecAnimal(current_smallest))));
  
  cluster = root;
  Animal rootCluster = new Animal("cluster0", getFirstAnimal(current_smallest), getSecAnimal(current_smallest));
  print("Root cluster is:"); 
  print_animal(rootCluster);
  print("\n");
  animals.add(rootCluster);
  
  
  int nameCount = 0;
  
  
  while(animals.size() != 1){
    int distanceToRoot1 = 0;
    int distanceToRoot2 = 0;
    int average = 0;
    
    new_distances.clear();
    
    //find average distance to root for each animal left in the list
    for(int counter = 0; counter < animals.size()-1; counter++){
        distanceToRoot1 = findDistance(rootCluster.child1, animals.get(counter));
        distanceToRoot2 = findDistance(rootCluster.child2, animals.get(counter));
        
        average = ((distanceToRoot1 + distanceToRoot2)/2);
        
        new_distances.add(new Distance(rootCluster, animals.get(counter), average));
    }
    nameCount++;
    
    for(int counter = 0; counter < new_distances.size(); counter++){
         int small = Integer.MAX_VALUE;
         counter = 0;
         int index = 0;
         for(Distance dist : new_distances){
            if(getHowFar(dist) < small){
               small = getHowFar(dist);
               counter++;
               index = counter;
               current_smallest = dist;
            }
         }
    }
        
    rootCluster.child1 = getFirstAnimal(current_smallest);
    rootCluster.child2 = getSecAnimal(current_smallest);
        
    print("\nAbout to remove: " + getAnimalName(getFirstAnimal(current_smallest)));
    print("\nAbout to remove: " + getAnimalName(getSecAnimal(current_smallest)) + "\n");
        
    animals.remove(findIndexOfAnimalName(getAnimalName(getFirstAnimal(current_smallest)))); 
    animals.remove(findIndexOfAnimalName(getAnimalName(getSecAnimal(current_smallest))));  
    animals.add(new Animal("cluster" + nameCount, getFirstAnimal(current_smallest), getSecAnimal(current_smallest)));
        
        print("\nPrinting list of animals left in list: \n");
        for(Animal anim : animals)
        {
        print_animal(anim);
        }
      }  
}

    
    
void draw(){
  String firstString = root.get(0).animal_name;
  String secondString = root.get(1).animal_name;
  
  text(firstString + "  and  " + secondString, 500, 30);
  text("Something", 5, 5);
}

PFont font;
  
void setup() 
{  //setup function called initially, only once
  addAnimals();
  findInitialDistances();
  findAverageDistance(distances);
  size(1000, 400);
  background(255);  //set background white
  colorMode(RGB);   //set colors to Hue, Saturation, Brightness mode
  font = createFont("Arial",14,true);
  noLoop();
 // fill(#FFFFFF);
}
  
