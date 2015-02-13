//Assignment 2
//by Ceren Savasan
//username: csavasan

class Animal {
  String animal_name;
  Boolean hair;
  Boolean feathers;
  Boolean eggs;
  Boolean milk;
  Boolean airborne;
  Boolean aquatic;
  Boolean predator;
  Boolean toothed;
  Boolean backbone;
  Boolean breathes;
  Boolean venomous;
  Boolean fins;
  int legs;
  Boolean tail;
  Boolean domestic;
  Boolean catsize;
  int type;
  
  Animal child1;
  Animal child2;

  //Use this to create a new animal
  Animal(String new_name, Boolean new_h, Boolean new_feat, Boolean new_e, Boolean new_m, Boolean new_a, Boolean new_aqua, Boolean new_p, Boolean new_tooth, Boolean new_back, Boolean new_brea, Boolean new_ven, Boolean new_fin, int new_leg, Boolean new_tail, Boolean new_dom, Boolean new_cat, int new_type){
    animal_name = new_name;
    hair = new_h;
    feathers =  new_feat;
    eggs =  new_e;
    milk = new_m;
    airborne = new_a;
    aquatic = new_aqua;
    predator = new_p;
    toothed = new_tooth;
    backbone = new_back;
    breathes = new_brea;
    venomous = new_ven;
    fins = new_fin;
    legs = new_leg;
    tail = new_tail;
    domestic = new_dom;
    catsize = new_cat;
    type = new_type;
    
    child1 = null;
    child2 = null;
  }
  
  Animal(String new_name, Animal new_child1, Animal new_child2){
    animal_name = new_name;
    child1 = new_child1;
    child2 = new_child2;
  }
}

public class Distance {
    Animal a1;
    Animal a2;
    int howFar;
    
    Distance(Animal new_a1, Animal new_a2, int new_howFar){
    a1 = new_a1;
    a2 = new_a2;
    howFar = new_howFar;
    }
    
    Distance(Distance newDist){
    a1 = newDist.a1;
    a2 = newDist.a2;
    howFar = newDist.howFar;
    }
    
}

public int getHowFar(Distance thisDist){
    return thisDist.howFar;
}

public String getFirstName(Distance thisDist){
  String nameOf = getAnimalName(thisDist.a1);
  return nameOf;
}

public String getSecName(Distance thisDist){
  String nameOf2 = getAnimalName(thisDist.a2);
  return nameOf2;
}

public Animal getFirstAnimal(Distance thisDist){
  return thisDist.a1;
}

public Animal getSecAnimal(Distance thisDist){
  return thisDist.a2;
}

public String getAnimalName(Animal thisAn){
  return thisAn.animal_name;
}

//TESTING PRINT
public void print_distance(Distance thisDist4){
  int v1 = getHowFar(thisDist4);
  String v2 = getFirstName(thisDist4);
  String v3 = getSecName(thisDist4);
  print("\n" + v1 + " \n" + v2 + " \n" + v3 + " \n");
}


//TESTING PRINT
public void print_animal(Animal thisanimal){
  String v1 = getAnimalName(thisanimal);
  print("\n" + v1);
}


//initate a bunch of animals
Animal error = new Animal("ERROR", false, false, false, false, false, false, false, false, false, false, false, false, 0, false, false, false, 0);

Animal aardvark = new Animal("aardvark", true, false, false, true, false, false, true, true, true, true, false, false, 4, false, false, true, 1);
Animal antelope = new Animal("antelope", true, false,  false,  true,  false,  false,  false,  true,  true, true , false , false , 4, true,  false,  true,  1);
Animal bass = new Animal("bass", false,  false,  true,  false,  false,  true,  true,  true,  true,  false,  false,  true,  0,  true,  false,  false,  4);
Animal bear = new Animal("bear", true,  false,  false,  true,  false,  false,  true,  true,  true,  true,  false,  false,  4,  false,  false,  true, 1);
Animal clam = new Animal("clam", false,  false,  true,  false,  false,  false,  true,  false,  false,  false,  false,  false,  0, false, false,  false,  7);
Animal elephant = new Animal("elephant", true, false, false, true, false, false, false, true, true, true, false, false, 4, true, false, true, 1);
Animal human = new Animal("human", true,  false, false, true, false, false, true ,true ,true, true, false, false, 2, false, true, true, 1);
Animal kiwi = new Animal("kiwi", false, true, true, false, false, false, true, false, true, true, false, false, 2, true, false, false, 2);





int findDistance(Animal a1, Animal a2){
  int dif_count = 0;
  if(a1.hair != a2.hair){
    dif_count++;
  }
  if(a1.feathers != a2.feathers){
    dif_count++;
  }
  if(a1.eggs != a2.eggs){
    dif_count++;
  }
  if(a1.milk != a2.milk){
    dif_count++;
  }
  if(a1.airborne != a2.airborne){
    dif_count++;
  }
  if(a1.aquatic != a2.aquatic){
    dif_count++;
  }
  if(a1.predator != a2.predator){
    dif_count++;
  }
  if(a1.toothed != a2.toothed){
    dif_count++;
  }
  if(a1.backbone != a2.backbone){
    dif_count++;
  }
  if(a1.breathes != a2.breathes){
    dif_count++;
  }
  if(a1.venomous != a2.venomous){
    dif_count++;
  }
  if(a1.fins != a2.fins){
    dif_count++;
  }
  if(a1.legs != a2.legs){
    dif_count++;
  }
  if(a1.tail != a2.tail){
    dif_count++;
  }
  if(a1.domestic != a2.domestic){
    dif_count++;
  }
  if(a1.catsize != a2.catsize){
    dif_count++;
  }
  return dif_count;
}

ArrayList<Animal> animals = new ArrayList<Animal>();
ArrayList<Distance> distances = new ArrayList<Distance>();

void addAnimals(){
  animals.add(aardvark);
  //animals.add(antelope);
  animals.add(bass);
  animals.add(bear);
  animals.add(clam);
  //animals.add(elephant);
  animals.add(human);
  animals.add(kiwi);
}

int findIndexOfAnimalName(String nameOf){
  int thisIs = 0;
  for(int counter = 0; counter < animals.size(); counter++){
    if(getAnimalName(animals.get(counter)) == nameOf){
       print("\nFound animal name " + getAnimalName(animals.get(counter)) + " is equal to " + nameOf); 
       thisIs = counter;
    }
  }
  return thisIs;
}


void findInitialDistances(){ 
  int currentDistance;
  for(int counter = 0; counter < animals.size(); counter++){
    for(int counter2 = counter + 1; counter2 < animals.size(); counter2++){
      if(counter != counter2){
        currentDistance = findDistance(animals.get(counter), animals.get(counter2));
        distances.add(new Distance(animals.get(counter), animals.get(counter2), currentDistance));
      }  
    }
  }

  //remove duplicates
  int size = distances.size();
  int duplicates = 0;
  
  for (int k = 0; k < size; k++) {
     // start from the next in list because we already checked the ones before
     for (int m = k + 1; m < size; m++) {
         if (((getFirstName(distances.get(m)) == getFirstName(distances.get(k))) && (getSecName(distances.get(m)) == getSecName(distances.get(k)))) || ((getFirstName(distances.get(m)) == getSecName(distances.get(k))) && (getFirstName(distances.get(k)) == getSecName(distances.get(m))))){
           duplicates++;
           print("Number of duplicates: " + duplicates);
           print("Removing " + getFirstName(distances.get(m)) + " relation with " + getFirstName(distances.get(k)) + " \n");
           distances.remove(m);
           m--;
           // decrease the size of the array
           size--;
         }
      } // for m
   } // for k
  
  int newSize = distances.size();
  
  
  //testing to see the results
  for(int j=0; j < newSize; j++){
    print_distance(distances.get(j));
   }
}

Distance findClosestPair(ArrayList<Distance> currentDistances){
  Distance smallest = new Distance(error, error, 9999999);
  for (int k = 0; k < currentDistances.size(); k++) {
     // start from the next in list because we already checked the ones before
     for (int m = k + 1; m < currentDistances.size(); m++) {
        if((getHowFar(currentDistances.get(k)) > getHowFar(currentDistances.get(m))) && (getHowFar(smallest) > getHowFar(currentDistances.get(m)))){
          smallest = new Distance(currentDistances.get(m));
          print_distance(smallest);
        }
        if((getHowFar(currentDistances.get(k)) < getHowFar(currentDistances.get(m))) && (getHowFar(smallest) > getHowFar(currentDistances.get(k)))){
          smallest = new Distance(currentDistances.get(k));
          print_distance(smallest);
        }
        if((getHowFar(currentDistances.get(k)) == getHowFar(currentDistances.get(m))) && ((getHowFar(smallest) > getHowFar(currentDistances.get(k))))){
          smallest = new Distance(currentDistances.get(m));
        }
     }
  }
  
  //TESTING PRINT
  print("\n\nSmallest found:");
  print_distance(smallest);
  
  return smallest;
}
