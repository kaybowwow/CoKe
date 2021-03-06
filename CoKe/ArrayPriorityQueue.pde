import java.util.ArrayList;

public class ArrayPriorityQueue<T extends Comparable<T>>{

  private ArrayList<T> _queue;

  public ArrayPriorityQueue() {
    _queue = new ArrayList<T>();
  }

  /*=========================================
  precond: _queue exists
  postcond: adds an element to the end of the queue
  =========================================*/
  public void add(T x) {
    _queue.add(x);
  }

  /*=========================================
  precond: _queue exists
  postcond: returns true if queue is empty, false otherwise
  =========================================*/
  public boolean isEmpty() {
    return _queue.isEmpty();
  }

  /*=========================================
  precond: _queue exists
  postcond: returns smallest element in queue
  throws exception if queue is empty
  =========================================*/
  public T peekMin() {
    if (isEmpty()) //exception throwing according to the API
      throw new RuntimeException();
    else {
      T temp = _queue.get(0);
      for (int counter = 1; counter < _queue.size(); counter ++) {
        if ((_queue.get(counter).compareTo(temp)) > 0)
          temp = _queue.get(counter);
      }
      return temp;
    }
  }

  /*=========================================
  precond: _queue exists
  postcond: removes and returns the smallest element in queue
  throws exception if queue is empty
  =========================================*/
  public T removeMin() {
    if (isEmpty()) //exception throwing according to the API
      throw new RuntimeException();
    else {
      int position = 0;
      for (int counter = 1; counter < _queue.size(); counter ++) { //iterates through the entire ArrayList looking for the T with the smallest priority
        if (_queue.get(counter).compareTo(_queue.get(position)) < 0) {
          position = counter;
        }
      }
      return _queue.remove(position);
    }
  }

  public String toString() {
    String print = "[";
    for (T i : _queue) 
      print += " " + i;
    print += " ]";
    return print;
  }
}