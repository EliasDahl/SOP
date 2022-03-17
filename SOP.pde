//int[] input = new int[0];
int[] inputselect = new int[0];
int[] inputquick = new int[0];
int n = 200;
int[] tselectarray, nselectarray;
int[] tquickarray, nquickarray;
SelectionSort selectsort = new SelectionSort();
QuickSort quicksort = new QuickSort();
int x, y;
void setup() {
  size(1600, 800);
  tselectarray = new int[n];
  nselectarray = new int[n];

  tquickarray = new int[n];
  nquickarray = new int[n];

  for (int j = 0; j<n; j++) {
    inputselect = expand(inputselect, inputselect.length+1);
    inputquick = expand(inputquick, inputquick.length+1);
    for (int i = 0; i<inputselect.length; i++) {
      float random = random(1000);
      inputselect[i] = int(random);
      
      //sorteret array
      //inputselect[i] = i+1;
    }
    for (int i = 0; i<inputquick.length; i++) {
      float random = random(1000);
      inputquick[i] = int(random);
      
      //sorteret array
      //inputquick[i] = i+1;
    }
    print();
    expand(tselectarray, inputselect.length);
    tselectarray[j]=tselect;
    expand(nselectarray, inputselect.length);
    nselectarray[j]=inputselect.length;

    expand(tquickarray, inputquick.length);
    tquickarray[j]=tquick;
    expand(nquickarray, inputquick.length);
    nquickarray[j]=inputquick.length;
  }
}

void draw() {
  background(255);
  strokeWeight(0);
  for (int j=0; j<n; j++) {
    ellipseMode(RADIUS);
    fill(255, 0, 0);
    //ellipse((nselectarray[j]*10)+50, (height-tselectarray[j]*0.3)-50, 5, 5);
    fill(0, 0, 255);
    ellipse((nquickarray[j]*6)+50, (height-tquickarray[j]*0.1)-50, 5, 5);
  }
  textSize(30);
  //text("QuickSort", 530, 100);
  fill(255, 0, 0);
  //text("SelectionSort", 530, height-100);
  fill(50);
  text("n", width/4, height-25);
  text("t", 20, height/2);
  strokeWeight(5);
  stroke(50);
  line(0, height-50, width, height-50);
  line(50, 0, 50, height);
}

void print() {
  //println("array længde: "+input.length);

  println("usorteret array");
  //selectsort.printArray(input);
  println();

  println("quick sorteret array");
  quicksort.sort(inputquick, 0, inputquick.length-1);
  quicksort.printArray(inputquick);
  println("Quicksort tidsforbrug: " + tquick);
  println();
  println();

  println("select sorteret array");
  selectsort.sort(inputselect);
  selectsort.printArray(inputselect);
  println("Selectionsort tidsforbrug: " + tselect);
  println();
}
