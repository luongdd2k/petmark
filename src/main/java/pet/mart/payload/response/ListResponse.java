package pet.mart.payload.response;

import java.util.List;

import com.springboot.PetMark.entities.BaseEntity;
import com.springboot.PetMark.entities.OrderrWeb;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pet.mart.payload.Meta;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ListResponse<T extends BaseEntity> {

	private Meta meta;
	private List<T> data;
}
