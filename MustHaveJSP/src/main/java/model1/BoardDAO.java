package model1;
import javax.servlet.ServletContext;
import common.JDBConnect;
public class BoardDAO extends JDBConnect{
public BoardDAO(ServletContext application) {
	super(application);
}

}
