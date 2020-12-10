package com.springboot.PetMark.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "orderrapp")
public @Data class OrderrApp extends BaseEntity implements Serializable {

	private static final long serialVersionUID = -1505214863712955854L;
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
	private String deliveryStatus;
	@Column(name = "payment_method")
	private String paymentMethod;
	@Column(name = "payment_status")
	private String paymentStatus;
	@Column(name = "sent_mail")
	private String sentMail;
	@Column(name = "total_order")
	private float totalAmount;

	public OrderrApp() {
		// TODO Auto-generated constructor stub
	}

	public OrderrApp(Account account, Date date, String consignee, String consigneePhone, String deliveryAddress,
			String deliveryStatus, String paymentMethod, String paymentStatus, String sentMail, float totalAmount) {

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
		return "OrderrApp [id=" + id + ", account=" + account + ", createdAt=" + createdAt + ", consignee=" + consignee
				+ ", consigneePhone=" + consigneePhone + ", deliveryAddress=" + deliveryAddress + ", deliveryStatus="
				+ deliveryStatus + ", paymentMethod=" + paymentMethod + ", paymentStatus=" + paymentStatus
				+ ", sentMail=" + sentMail + ", totalAmount=" + totalAmount + "]";
	}

}
