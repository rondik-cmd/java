int[] getallen = {1, 2, 3, 1, 3, 4, 4, 4, 6, 6};
int zoeknummer = 3;
int aantalGevonden = 0;

for (int i = 0; i < getallen.length; i++) {
  if (getallen[i] == zoeknummer) {
    aantalGevonden++;
  }
}

if(aantalGevonden > 0){
println("het getal " + zoeknummer + " komt " + aantalGevonden + " keer voor.");
}else{
println("het het getal " + zoeknummer + " komt niet voor.");
}
