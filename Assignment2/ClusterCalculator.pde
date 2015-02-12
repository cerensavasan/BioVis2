ArrayList<Animal> cluster = new ArrayList<Animal>();

ArrayList<Animal> root = new ArrayList<Animal>(); //two in root

ArrayList<Animal> newAnimals = new ArrayList<Animal>();

ArrayList<Distance> new_distances = new ArrayList<Distance>();

Animal makeRoot(ArrayList<Distance> new_dist){
    //create root
    Distance current_smallest = findClosestPair(new_dist);
    root.add(getFirstAnimal(current_smallest));
    root.add(getSecAnimal(current_smallest));
  
    //remove root animals from animals list
    print("\nAbout to remove root animal: " + getAnimalName(getFirstAnimal(current_smallest)));
    print("\nAbout to remove root animal: " + getAnimalName(getSecAnimal(current_smallest)) + "\n");
    animals.remove(findIndexOfAnimalName(getAnimalName(getFirstAnimal(current_smallest))));
    animals.remove(findIndexOfAnimalName(getAnimalName(getSecAnimal(current_smallest))));
  
    cluster = root;
    Animal rootCluster = new Animal("cluster0", getFirstAnimal(current_smallest), getSecAnimal(current_smallest));
    print("Root cluster is:"); 
    print_animal(rootCluster);
    print("\n");
    animals.add(rootCluster);
    return rootCluster;
}


void makeClusters(){
    Animal rootCluster = makeRoot(distances);
    int nameCount = 0;
    int distanceToRoot1 = 0;
    int distanceToRoot2 = 0;
    int average = 0;
    
    new_distances.clear();
    
    //find average distance to root for each animal left in the list
    for(int counter = 0; counter < animals.size(); counter++){
        distanceToRoot1 = findDistance(rootCluster.child1, animals.get(counter));
        distanceToRoot2 = findDistance(rootCluster.child2, animals.get(counter));
        print("\nCurrent root cluster is: \n");
        print_animal(rootCluster);
        average = ((distanceToRoot1 + distanceToRoot2)/2);
        if(rootCluster != animals.get(counter)){
          print("\nAdding new distance to new_distances: \n");
          print_distance(new Distance(rootCluster, animals.get(counter), average));
          new_distances.add(new Distance(rootCluster, animals.get(counter), average));
        }
    }
    
    
    
    for(int counter = 0; counter < new_distances.size(); counter++){
         Distance smallest = new Distance(error, error, 9999999);
         for(int counter2 = counter + 1; counter2 < new_distances.size(); counter2++){
            if(getHowFar(new_distances.get(counter2)) < getHowFar(smallest)){
               smallest = new_distances.get(counter2);
               nameCount++;
               Distance current_smallest = new_distances.get(counter);
               print("current smallest distance is:\n");
               print_distance(current_smallest);
               
               findIndexOfAnimalName(new String("cluster" + (nameCount-1)));
               Animal newRoot = animals.get(findIndexOfAnimalName("cluster" + (nameCount-1)));
               newRoot.child1 = getFirstAnimal(current_smallest);
               newRoot.child2 = getSecAnimal(current_smallest);

               print("\nAbout to add cluster" + nameCount + ": has animals as children: " + getAnimalName(getSecAnimal(current_smallest)) + " and " + getAnimalName(getSecAnimal(current_smallest)) + "\n");
               animals.add(new Animal("cluster" + nameCount, getFirstAnimal(current_smallest), getSecAnimal(current_smallest)));
                              
               print("\nAbout to remove: " + getAnimalName(getFirstAnimal(current_smallest)));
               print("\nAbout to remove: " + getAnimalName(getSecAnimal(current_smallest)) + "\n");
               animals.remove(findIndexOfAnimalName(getAnimalName(getFirstAnimal(current_smallest)))); 
               animals.remove(findIndexOfAnimalName(getAnimalName(getSecAnimal(current_smallest))));  
               print("\nAbout to add cluster" + nameCount + ": has animals as children: " + getAnimalName(getSecAnimal(current_smallest)) + " and " + getAnimalName(getSecAnimal(current_smallest)) + "\n");
               
               print("\nPrinting list of animals left in list: \n");
    
               for(Animal anim : animals){
                print_animal(anim);
               }  
            }
         }
    }
}

    
    
void draw(){
  String firstString = getAnimalName(root.get(0));
  String secondString = getAnimalName(root.get(1));
  
  text(firstString + "  and  " + secondString, 500, 30);
  text("Something", 5, 5);
}

PFont font;
  
void setup() 
{  //setup function called initially, only once
  addAnimals();
  findInitialDistances();
  makeClusters();
  size(1000, 400);
  background(255);  //set background white
  colorMode(RGB);   //set colors to Hue, Saturation, Brightness mode
  font = createFont("Arial",14,true);
  noLoop();
 // fill(#FFFFFF);
}
  
