package sqlmap;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisManager {
	
	//sqlSessionFactoryBuilder =>SqlSessionFactory => sqlSession
	//sql세션 객체 생성기
	private static SqlSessionFactory instance;
	
/*	생성자는 보통 public 인데 여기선 private처리 했다. 따라서 외부에서 접근이 안된다. new 해서 접근이 안되기 때문에 우회접근한다.
	public 생성자를 막아서 외부에서 접근하는것을 막는다.
	웹은 사용자들이 많기때문에 접속할 때 마다.MybatisManager m = new MybatisManager();를 실행하면 메모리가 늘어나기때문에
	다수의 인스턴스 생성을 막고 하나의 인스턴스만 생성시켜 처리한다. 즉, 싱글톤 패턴 기법이라한다.
*/	private MybatisManager(){
				
	}
	public static SqlSessionFactory getInstance(){
		
		Reader reader = null;//Reader는 InputStreamReader의 상위 객체
		try {
			//inputStream, OutputStream => 1byte 단위
			//inputStreamReader, OutputStreamWriter => 1char단위
			//getResouerceAsReader()는 Java의 Resources의 src의 xml을 읽어드리는 메소드
			reader = Resources.getResourceAsReader("sqlmap/sqlMapConfig.xml");
			instance = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(reader != null)
					reader.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return instance;
	}
	
}
