package pet.mart.payload;

import java.util.Map;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Meta {

	private Integer page;
	private Integer pages;
	private Integer perpage;
	private Long total;
	private String sort;
	private String field;
	private String querySearch;
	private String queryStatus;
	private String queryMethod;
	private String queryPayment;
	private String queryDelivery;

	public Meta(Map<String, String> request) {
		String page = request.get("pagination[page]");
		String pages = request.get("pagination[pages]");
		String perpage = request.get("pagination[perpage]");
		String total = request.get("pagination[total]");
		String querySearch = request.get("query[]");
		String queryMethod = request.get("query[method]");
		String queryPayment = request.get("query[payment]");
		String queryDelivery = request.get("query[delivery]");

		this.page = page != null ? Integer.valueOf(page) : 1;
		this.pages = pages != null ? Integer.valueOf(pages) : 0;
		this.perpage = perpage != null ? Integer.valueOf(perpage) : 10;
		this.total = total != null ? Long.valueOf(total) : 0;
		this.field = fixOrderSortField(request.get("sort[field]"));
		this.sort = request.get("sort[sort]");
		this.querySearch = querySearch != null ? querySearch : "";
		this.queryMethod = queryMethod != null ? queryMethod : "";
		this.queryPayment = queryPayment != null ? queryPayment : "";
		this.queryDelivery = queryDelivery != null ? queryDelivery : "";

	}

	private String fixOrderSortField(String field) {
		switch (field) {
		case "paymentMethod":
			field = "payment_method";
			break;

		case "paymentStatus":
			field = "payment_status";
			break;

		case "deliveryStatus":
			field = "delivery_status";
			break;

		case "formatTotalAmount":
			field = "total_amount";
			break;

		default:
			break;
		}
		return field;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPages() {
		return pages;
	}

	public void setPages(Integer pages) {
		this.pages = pages;
	}

	public Integer getPerpage() {
		return perpage;
	}

	public void setPerpage(Integer perpage) {
		this.perpage = perpage;
	}

	public Long getTotal() {
		return total;
	}

	public void setTotal(Long total) {
		this.total = total;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getQuerySearch() {
		return querySearch;
	}

	public void setQuerySearch(String querySearch) {
		this.querySearch = querySearch;
	}

	public String getQueryStatus() {
		return queryStatus;
	}

	public void setQueryStatus(String queryStatus) {
		this.queryStatus = queryStatus;
	}

	public String getQueryMethod() {
		return queryMethod;
	}

	public void setQueryMethod(String queryMethod) {
		this.queryMethod = queryMethod;
	}

	public String getQueryPayment() {
		return queryPayment;
	}

	public void setQueryPayment(String queryPayment) {
		this.queryPayment = queryPayment;
	}

	public String getQueryDelivery() {
		return queryDelivery;
	}

	public void setQueryDelivery(String queryDelivery) {
		this.queryDelivery = queryDelivery;
	}

	@Override
	public String toString() {
		return "Meta [page=" + page + ", pages=" + pages + ", perpage=" + perpage + ", total=" + total + ", sort="
				+ sort + ", field=" + field + ", querySearch=" + querySearch + ", queryStatus=" + queryStatus
				+ ", queryMethod=" + queryMethod + ", queryPayment=" + queryPayment + ", queryDelivery=" + queryDelivery
				+ "]";
	}

}
