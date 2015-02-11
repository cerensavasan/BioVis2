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
  }
}


//initate a bunch of animals
Animal aardvark = new Animal("aardvark", true, false, false, true, false, false, true, true, true, true, false, false, 4, false, false, true, 1);
Animal antelope = new Animal("antelope", true, false,  false,  true,  false,  false,  false,  true,  true, true , false , false , 4, true,  false,  true,  1);
Animal bass = new Animal("bass",  false,  false,  true,  false,  false,  true,  true,  true,  true,  false,  false,  true,  0,  true,  false,  false,  4);

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
  
  if(a1.type != a2.type){
    dif_count++;
  }
  
  print(dif_count);
  return dif_count;
}

void setup(){
findDistance(aardvark, bass);
}
