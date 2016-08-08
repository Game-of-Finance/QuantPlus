package util.split;

import java.util.ArrayList;
import java.util.List;


/**
 * Created by Lin on 2016/6/13.
 */
public class StringSplit {
    //判断一个字符
//    public static boolean isInteger(String str) {
//        Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
//        return pattern.matcher(str).matches();
//    }

    public static List<String> splitString(String s){
        int size = s.length();
//        int[] mark = new int[size];
        ArrayList<String> split = new ArrayList<String>();
        boolean isDigit = true;
        for(int i = 0;i<size;i++){
            int j = i;
            char c = s.charAt(i);
            if(!isDigit^Character.isDigit(c)){
                //是数字
                for(;j<size;j++){
                    char c1 = s.charAt(j);
                    if(!((Character.isDigit(c1))||(c1=='.'))){
                        //遇到第一个非数字
//                        System.out.println("遇到第一个非数字");
                        split.add(s.substring(i,j));
                        break;
                    }else{
                        if(j==size-1){
                            split.add(s.substring(i,j+1));
                        }
                    }
                }
            }else{
                //是其它
                for(;j<size;j++){
                    char c1 = s.charAt(j);
                    if(Character.isDigit(c1)){
                        //遇到第一个数字
                        split.add(s.substring(i,j));
                        break;
                    }else{
                        if(j==size-1){
                            split.add(s.substring(i,j+1));
                        }
                    }
                }
            }
            i=j-1;
        }
        return split;
    }

}
