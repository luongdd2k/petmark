package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pet.mart.util.DeliveryStatus;
import pet.mart.util.PaymentStatus;

@Entity
@Table(name = "orderr")
public @Data class OrderrWeb implements Serializable {

	private static final long serialVersionUID = -3485459792890433309L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "username")
	private Account account;
	@Column(name = "created_at")
	private Date createdAt;
	private String consignee;
	@Column(name = "consignee_phone")
	private String consigneePhone;
	@Column(name = "delivery_address")
	private String deliveryAddress;
	@Column(name = "delivery_status")
	private String deliveryStatus ;
	@Column(name = "payment_method")
	private String paymentMethod;
	@Column(name = "payment_status")
	private String paymentStatus;
	@Column(name = "sent_mail")
	private String sentMail;
	@Column(name = "total_order")
	private float totalAmount;
	@OneToMany(mappedBy = "orderrWeb",fetch = FetchType.EAGER, cascade = CascadeType.ALL, orphanRemoval = true)
	private List<OrderrWebDetail> detail = new ArrayList<>();
	@Column(name = "foundation")
	private int place;
	public String displayPrice() {
		String dinhDang = "#";
		DecimalFormat format = new DecimalFormat(dinhDang);
		String rs = format.format(this.totalAmount);
		return rs;
	}
	public String getDisplayPlace() {
		String rs = "Web";
		if(this.place==1) {
			rs ="App";
		}
		return rs;
	}
	public List<OrderrWebDetail> getDetail() {
		return detail;
	}

	public void setDetail(List<OrderrWebDetail> detail) {
		this.detail = detail;
	}

	public OrderrWeb() {
		// TODO Auto-generated constructor stub
	}

	public int getPlace() {
		return place;
	}

	public void setPlace(int place) {
		this.place = place;
	}

	public OrderrWeb(Account account, Date date, String consignee, String consigneePhone, String deliveryAddress,
			String deliveryStatus, String paymentMethod, String paymentStatus, String sentMail, float totalAmount, int place) {

		this.account = account;
		this.createdAt = date;
		this.consignee = consignee;
		this.consigneePhone = consigneePhone;
		this.deliveryAddress = deliveryAddress;
		this.deliveryStatus = deliveryStatus;
		this.paymentMethod = paymentMethod;
		this.paymentStatus = paymentStatus;
		this.sentMail = sentMail;
		this.totalAmount = totalAmount;
		this.place=place;
	}

	public OrderrWeb(int id, Account account, Date date, String consignee, String consigneePhone,
			String deliveryAddress, String deliveryStatus, String paymentMethod, String paymentStatus, String sentMail,
			float totalAmount, int place) {
		this.id = id;
		this.account = account;
		this.createdAt = date;
		this.consignee = consignee;
		this.consigneePhone = consigneePhone;
		this.deliveryAddress = deliveryAddress;
		this.deliveryStatus = deliveryStatus;
		this.paymentMethod = paymentMethod;
		this.paymentStatus = paymentStatus;
		this.sentMail = sentMail;
		this.totalAmount = totalAmount;
		this.place=place;
	}
	public OrderrWeb(int id, String deliveryStatus) {
		this.id = id;
		this.deliveryStatus = deliveryStatus;
	}


	public String getDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = format.format(this.createdAt);
		return dateString;
	}
	public String getDisplayTotalAmount() {
		DecimalFormat decimalFormat = new DecimalFormat("#,##0");
		return decimalFormat.format(this.totalAmount).replaceAll(",", ".") + " ₫";
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public String getConsigneePhone() {
		return consigneePhone;
	}

	public void setConsigneePhone(String consigneePhone) {
		this.consigneePhone = consigneePhone;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public String getSentMail() {
		return sentMail;
	}

	public void setSentMail(String sentMail) {
		this.sentMail = sentMail;
	}

	public float getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}

	@Override
	public String toString() {
		return "OrderrWeb [id=" + id + ", account=" + account + ", createdAt=" + createdAt + ", consignee=" + consignee
				+ ", consigneePhone=" + consigneePhone + ", deliveryAddress=" + deliveryAddress + ", deliveryStatus="
				+ deliveryStatus + ", paymentMethod=" + paymentMethod + ", paymentStatus=" + paymentStatus
				+ ", sentMail=" + sentMail + ", totalAmount=" + totalAmount + "]";
	}

}
