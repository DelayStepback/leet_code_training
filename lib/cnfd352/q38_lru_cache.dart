// 16:11

class LRUCache {
  Map<int, int> cache = {};

  int size;

  LRUCache(int capacity) : size = capacity;

  int get(int key) {
    if (cache[key] == null) {
      return -1;
    } else {
      var value = cache[key];
      cache.remove(key);
      if (value != null) {
        cache[key] = value;
        return value;
      } else {
        return -1;
      }
    }
  }

  void put(int key, int value) {
    if (cache[key] != null) {
      cache.remove(key);
    }
    cache[key] = value;
    if (size < cache.keys.length) {
      cache.remove(cache.keys.first);
    }
  }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * LRUCache obj = LRUCache(capacity);
 * int param1 = obj.get(key);
 * obj.put(key,value);
 */