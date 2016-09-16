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
    public StrategyPo getStrategy(int sid);

    @Select("select sid, userid, py_text, sname, updateAt from strategy where userid = #{0} and sname = #{1]")
    public StrategyPo getStrategy(String userid, String sname);

    @Insert("insert into strategy (userid, py_text, sname) values (#{0}, #{1}, #{2})")
    public void addStrategy(String userid, String py_text, String sname);

    @Delete("delete from strategy where sid = #{0}")
    public void deleteStrategy(int sid);

//    @Delete("delete from strategy where userid = #{0} and sname = #{1}")
//    public void deleteStrategy(String userid, String sname);

    @Update("update table strategy set py_text = #{1} where sid = #{0}")
    public void updatePy(int sid, String py_text);

    @Update("update table strategy set sname = #{1} where sid = #{0}")
    public void updateSname(int sid, String sname);

//    @Update("update table strategy set py_text = #{0} where userid = #{1} and sname = #{2}")
//    public void updatePy(String py_text, String userid, String sname);
//
//    @Update("Update table strategy set sname = #{0} where userid = #{1] and smame = #{2]")
//    public void updateSname(String afterName, String userid, String beforename);

}
