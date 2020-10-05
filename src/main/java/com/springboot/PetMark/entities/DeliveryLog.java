package com.springboot.PetMark.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "delivery_log")
public class DeliveryLog extends BaseEntity {

	private static final long serialVersionUID = -1142781677627984261L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "order_web_id", nullable = false)
	private OrderrWeb orderWeb;

	@Column(name = "delivery_status", nullable = false, length = 50)
	private String deliveryStatus;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public OrderrWeb getOrderWeb() {
		return orderWeb;
	}

	public void setOrderWeb(OrderrWeb orderWeb) {
		this.orderWeb = orderWeb;
	}

	public String getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(String deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}

	@Override
	public String toString() {
		return "DeliveryLog [id=" + id + ", orderWeb=" + orderWeb + ", deliveryStatus=" + deliveryStatus + "]";
	}

}
