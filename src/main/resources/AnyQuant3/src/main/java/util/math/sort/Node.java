package util.math.sort;

/**
 * 链表泛型类
 * Created by JiachenWang on 2016/4/10.
 */
public class Node<T> {

    public Node link = null;
    private T value;

    public Node(T value) {
        this.value = value;
    }

    public T getValue() {
        return value;
    }

    public void setValue(T value) {
        this.value = value;
    }
}
