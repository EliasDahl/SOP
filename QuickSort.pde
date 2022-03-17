class QuickSort extends Sort {
  void swap(int array[], int i, int j) {
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }

  int partition(int array[], int low, int high) {
    
    //swap metode til at vælge det midterste element som pivot
    //swap(array,high,high/2);
    int pivot = array[high/2];
    
    int i = low-1;

    for (int j = low; j <= high-1; j++) {
      if (array[j]<pivot) {
        i++;
        swap(array, i, j);
      }
    }
    swap(array, i+1, high);
    tquick++;
    return (i+1);
  }

  void sort(int array[], int low, int high) {
    if (low < high) {
      int pivot = partition(array, low, high);
      sort(array, low, pivot-1);
      sort(array, pivot+1, high);
    }
  }
}
