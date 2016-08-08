package bl.tool.barchart;

import javafx.scene.layout.StackPane;
import model.barchart.VolumeVO;

/**
 * Created by JiachenWang on 2016/4/1.
 */
public interface BarChartStrategy {

    StackPane creatChart(VolumeVO volumevo);

}
