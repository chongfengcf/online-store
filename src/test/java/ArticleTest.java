import com.oldstore.model.Article;
import com.oldstore.service.ArticleService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/applicationContext.xml"})
public class ArticleTest {
    @Autowired
    ArticleService articleService;

    @Test
    public void insert(){
        Article article = new Article();
        article.setArticleName("1");
        article.setTitle("1");
        article.setSupplier("1");
        article.setPrice(1D);
        article.setPrePrice(2D);
        article.setLocality("1");
        article.setPutawayDate(new Date());
        article.setStorage(1);
        article.setImage("1");
        article.setTypeName("1");
        article.setCreateDate(new Date());
        articleService.insert(article);
        System.out.println(article.getId());
    }
}
