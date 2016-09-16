package web.dao.util;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import web.model.btAndVt.StrategyPo;

import java.util.List;

/**
 * Created by NJU on 2016/9/16.
 */
public interface StrategyOperation {

    @Select("select sid, userid, py_text, sname, updateAt from strategy where userid = #{0}")
    public List<StrategyPo> queryStrategy(String userid);

    @Select("select sid, userid, py_text, sname, updateAt from strategy where sid = #{0}")
    public StrategyPo getStrategyByID(String sid);

    @Select("select sid, userid, py_text, sname, updateAt from strategy where userid = #{0} and sname = '#{1]'")
    public StrategyPo getStrategyByUN(String userid, String sname);

    @Insert("insert into strategy (userid, py_text, sname) values (#{0}, #{1}, #{2})")
    public void addStrategy(String userid, String py_text, String sname);

    @Delete("delete from strategy where sid = #{0}")
    public void deleteStrategy(int sid);

    @Update("update table strategy set py_text = #{1} where sid = #{0}")
    public void updatePy(int sid, String py_text);

    @Update("update table strategy set sname = #{1} where sid = #{0}")
    public void updateSname(int sid, String sname);

}
