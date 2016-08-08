package util.math;

/**
 * Created by Seven on 16/4/12.
 * 用于计算某两组数的相关系数
 */
public class CorrelationCoefficient {

    public static double calculateCC(double[] arg1, double[] arg2) {
        double[] sum = arg1.clone();
        for (int i = 0; i < arg1.length; i++) {
            sum[i] = arg1[i] * arg2[i];
        }
        double cov = calAvg(sum) - calAvg(arg1) * calAvg(arg2);
        double p = cov / (calVar(arg1) * calVar(arg2));
        return p;
    }

    public static double calAvg(double[] arg) {
        double sum = 0;
        for (double x : arg) {
            sum = sum + x;
        }
        return (sum * 1.0) / arg.length;
    }

    public static double calVar(double[] arg) {
        double avg = calAvg(arg);
        double[] argVar = arg.clone();
        for (int i = 0; i < arg.length; i++) {
            argVar[i] = (arg[i] - avg) * (arg[i] - avg);
        }
        double var = calAvg(argVar);
        return Math.sqrt(var);
    }
}
