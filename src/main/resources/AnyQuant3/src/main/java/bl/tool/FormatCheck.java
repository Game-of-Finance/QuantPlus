package bl.tool;


import util.exception.BadInputException;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by kylin on 16/3/18.
 */
public class FormatCheck {

    /**
     * 检查输入是否是合法的日期,日期格式为“xxxx－xx－xx”,x是数字
     *
     * @param str
     * @return
     */
    public static void isDate(String str) throws BadInputException {
        String trueExpression = "(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|" +
                "[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|" +
                "[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|" +
                "[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|" +
                "((0[48]|[2468][048]|[3579][26])00))-02-29)";
        if (!Pattern.matches(trueExpression, str))
            throw new BadInputException("日期格式错误");
    }

    /**
     * 判断界面输入的字符串是数字
     *
     * @param from
     * @throws BadInputException
     */
    public static void isNumber(String from) throws BadInputException {
//        Pattern pattern = Pattern.compile("-?[0-9]+.?[0-9]+");
                Pattern pattern = Pattern.compile("-?[0-9]*.?[0-9]*");

        Matcher isNum1 = pattern.matcher(from);
        if (!isNum1.matches())
            throw new BadInputException("请输入数字");
    }

    /**
     * 检查起点日期是否在终点日期之前
     *
     * @param startDate 起点日期
     * @param endDate 终点日期
     * @throws BadInputException
     */
    public static void isDateBefore(String startDate, String endDate) throws BadInputException {
        FormatCheck.isDate(startDate);
        FormatCheck.isDate(endDate);
        if (startDate.compareTo(endDate) > 0)
            throw new BadInputException("起始日期应在结束日期前");
    }
}
