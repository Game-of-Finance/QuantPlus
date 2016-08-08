package util.math;

import util.math.sort.Node;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by JiachenWang on 2016/4/5.
 */
public class CalHelper {

    public static boolean isRise(double start, double end){
        if((end - start)>=0)
            return true;
        else
            return false;
    }


    /**
     * 排序链表(冒泡排序)
     * @param head 头节点
     * @return 排序好的数组
     */
    public static List<Double> orderLinkedList(Node<Double> head){
        List<Double> list = new ArrayList<Double>();
        Node<Double> point = head.link;
        while(point!=null){
            list.add(point.getValue());
            point = point.link;
        }
        for(int i=list.size()-1;i>=0;i--){
            for(int j=0;j<i;j++){
                if(list.get(j)>list.get(j+1)){
                    Double temp =list.get(j);
                    list.set(j, list.get(j+1));
                    list.set(j+1, temp);
                }
            }
        }

        return  list;
    }

    /**
     * 求中位数
     * @param list 数组
     * @return 中位数值
     */
    public static double geiMiddle(List<Double> list){
        int count = list.size();
        if(count%2==1){
            return list.get(count/2).doubleValue();
        } else {
            return (list.get(count/2-1).doubleValue() + list.get(count/2).doubleValue()) / 2;
        }
    }

    /**
     * 求子数组
     * @param list 父数组
     * @param start 开始位置（包含）
     * @param end 结束位置（包含）
     * @return 子数组
     */
    public static List<Double> getList(List<Double> list, int start, int end){
        List<Double> result = new ArrayList<Double>();
        while(start<=end){
            result.add(list.get(start));
            start++;
        }
        return result;
    }

}
