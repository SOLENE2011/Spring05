package madvirus.spring.chap07.view;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

public class PageRanksView extends AbstractExcelView {

	@SuppressWarnings("unchecked")
	@Override
	protected void buildExcelDocument(Map<String, Object> model, 
			HSSFWorkbook workbook, HttpServletRequest request, 
			HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		HSSFSheet sheet = createFirstSheet(workbook);
		createColumnLabel(sheet);
		
		List<PageRank> pageRanks = (List<PageRank>) model.get("pageRanks");
		int rowNum = 1;
		for(PageRank rank : pageRanks) {
			createPageRankRow(sheet, rank, rowNum++);
		}
	}
	
	
	
}
