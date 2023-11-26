package adstatic.tools;

import java.util.Map;

final class MyEntry<K, V> implements Map.Entry<K, V> {
    private K key;
    private V value;

    public MyEntry(K key, V value) {
        this.key = key;
        this.value = value;
    }

    public MyEntry() {
    }

    public K getKey() {
        return key;
    }

    public V getValue() {
        return value;
    }

    public V setValue(V value) {
        V old = this.value;
        this.value = value;
        return old;
    }

    public K setKey(K key) {
        K old = this.key;
        this.key = key;
        return old;
    }
}