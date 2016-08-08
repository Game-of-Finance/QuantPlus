package util.math.sort;

/**
 * Created by kylin on 16/4/13.
 */
public class MyHashItem<KeyType,ValueType> {

    private KeyType key;

    private ValueType value;

    public MyHashItem(KeyType key, ValueType value) {
        this.key = key;
        this.value = value;
    }

    public KeyType getKey() {
        return key;
    }

    public ValueType getValue() {
        return value;
    }
}
