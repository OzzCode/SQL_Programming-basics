select animals.name, animals.species, diet.food
       from animals join diet
       on animals.species = diet.species;
