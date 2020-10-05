package pet.mart.payload.response;

import java.util.List;

import com.springboot.PetMark.entities.Accessories;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import pet.mart.payload.Meta;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ListProductsResponse {

	private Meta meta;
	private List<Accessories> data;

}
